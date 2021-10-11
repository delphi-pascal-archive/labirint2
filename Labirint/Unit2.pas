unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PDJ_XPCS, PDJ_XPB, StdCtrls, ExtCtrls;

type
  TVictory = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PDJXPButton1: TPDJXPButton;
    Image2: TImage;
    procedure PDJXPButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Victory: TVictory;

implementation

{$R *.dfm}

procedure TVictory.PDJXPButton1Click(Sender: TObject);
begin
halt;
end;

end.
