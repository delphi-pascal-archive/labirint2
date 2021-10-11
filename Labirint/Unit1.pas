unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PDJ_XPCS, PDJ_XPC, ExtCtrls, Unit2;

type
  TMazeMain = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Message1: TPDJXPMemo;
    Shape1: TShape;
    procedure FormShow(Sender: TObject);
    procedure Init;
    procedure Draw;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


const
  szw=70;      // размер лабиринта
  szh=50;
  cellsz=10;   // размер ячейки
type
  point=record
    x,y: integer;
  end;
var
  maze: array [0..szw-1] of array [0..szh-1] of integer;
  todo: array [0..szw*szh-1] of point;
  todonum: integer;
const
  dx: array [0..3] of integer=(0, 0, -1, 1);
  dy: array [0..3] of integer=(-1, 1, 0, 0);

var
  MazeMain: TMazeMain;
  Kol: Integer;

implementation

{$R *.dfm}

procedure TMazeMain.Draw;
var x,y: integer;
begin
  for x:=1 to szw-2 do
  for y:=1 to szh-2 do
  begin
   if ((maze[x][y] and 1) <> 0) then begin // верхняя стена
       Image1.Canvas.MoveTo(x * cellsz, y * cellsz); Image1.Canvas.LineTo(x * cellsz + cellsz + 1, y * cellsz); end;
   if ((maze[x][y] and 2) <> 0) then begin // нижняя стена
       Image1.Canvas.MoveTo(x * cellsz, y * cellsz + cellsz); Image1.Canvas.LineTo(x * cellsz + cellsz + 1, y * cellsz + cellsz); end;
   if ((maze[x][y] and 4) <> 0) then begin // левая стена
       Image1.Canvas.MoveTo(x * cellsz, y * cellsz); Image1.Canvas.LineTo(x * cellsz, y * cellsz + cellsz + 1); end;
   if ((maze[x][y] and 8) <> 0) then begin // правая стена
       Image1.Canvas.MoveTo(x * cellsz + cellsz, y * cellsz); Image1.Canvas.LineTo(x * cellsz + cellsz, y * cellsz + cellsz + 1); end;
  end;
end;

procedure TMazeMain.FormShow(Sender: TObject);
begin
  init;
  draw;
  Image1.Canvas.Pixels[684,484]:=ClBlue;
  Image1.Canvas.Pixels[685,484]:=ClBlue;
  Image1.Canvas.Pixels[685,485]:=ClBlue;
  Image1.Canvas.Pixels[684,485]:=ClBlue;
  Image1.Picture.SaveToFile('Maze.bmp');
end;

procedure TMazeMain.Init;
var
  x,y,n,d: integer;
begin
  for x:=0 to szw-1 do
  for y:=0 to szh-1 do
    if (x=0) or (x=szw-1) or (y=0) or (y=szh-1) then
      maze[x][y]:=32
    else maze[x][y]:=63;

  Randomize;
  x := Random(szw-2)+1;
  y := Random(szh-2)+1;

// Пометить клетку как принадлежащую лабиринту
  maze[x][y]:= maze[x][y] and not 48;

// Занести в список todo все ближайшие необработанные клетки
  for d:=0 to 3 do
    if (maze[x + dx[d]][y + dy[d]] and 16) <> 0 then
    begin
      todo[todonum].x:=x + dx[d];
      todo[todonum].y:=y + dy[d];
      Inc(todonum);
      maze[x + dx[d]][y + dy[d]] := maze[x + dx[d]][y + dy[d]] and not 16;
    end;

   // Пока не обработаны все клетки
   while todonum > 0 do
   begin
       // Выбрать из списка todo произвольную клетку
       n:= Random(todonum);
       x:= todo[n].x;
       y:= todo[n].y;

       // Удалить из списка обработанную клетку
       Dec(todonum);
       todo[n]:= todo[todonum];

       // Выбрать направление, которое ведет к лабиринту
       repeat
           d:=Random (4);
       until not ((maze[x + dx[d]][y + dy[d]] and 32) <> 0);

       // Присоединить выбранную клетку к лабиринту
       maze[x][y] := maze[x][y] and not ((1 shl d) or 32);
       maze[x + dx[d]][y + dy[d]] := maze[x + dx[d]][y + dy[d]] and not (1 shl (d xor 1));

       // Занести в список todo все ближайшие необработанные клетки
       for d:=0 to 3 do
           if (maze[x + dx[d]][y + dy[d]] and 16) <> 0 then
           begin
             todo[todonum].x := x + dx[d];
             todo[todonum].y := y + dy[d];
             Inc(todonum);
             maze[x + dx[d]][y + dy[d]] := maze[x + dx[d]][y + dy[d]] and not 16;
           end;
   end;

   maze[1][1] := maze[1][1] and not 1;                 // начало лабиринта - в левом верхнем углу
   maze[szw-2][szh-2] := maze[szw-2][szh-2] and not 2; // конец лабиринта - в правом нижнем углу
end;

procedure TMazeMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    kol:=kol+1;
  case key of
    37: if Image1.Canvas.Pixels[Shape1.Left-1,Shape1.Top]>0 then Shape1.Left:=Shape1.Left-1 else Message1.Lines.Add('Упс!.. Стена');
    39: if Image1.Canvas.Pixels[Shape1.Left+2,Shape1.Top]>0 then Shape1.Left:=Shape1.Left+1 else Message1.Lines.Add('Упс!.. Стена');
    40: if Image1.Canvas.Pixels[Shape1.Left,Shape1.Top+2]>0 then Shape1.Top:=Shape1.Top+1 else Message1.Lines.Add('Упс!.. Стена');
    38: if Image1.Canvas.Pixels[Shape1.Left,Shape1.Top-1]>0 then Shape1.Top:=Shape1.Top-1 else Message1.Lines.Add('Упс!.. Стена');
  end;
  if Image1.Canvas.Pixels[Shape1.Left,Shape1.Top]=clBlue then
    begin
    Victory.Show;
    Victory.Label3.Caption:='Ходов: '+IntToStr(kol);
    Victory.Label4.Caption:='Упоров в стену: '+IntToStr(Message1.Lines.Count-22);
    end;
end;

end.
