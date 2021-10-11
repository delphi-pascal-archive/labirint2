program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {MazeMain},
  Unit2 in 'Unit2.pas' {Victory};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Maze Game';
  Application.CreateForm(TMazeMain, MazeMain);
  Application.CreateForm(TVictory, Victory);
  Application.Run;
end.
