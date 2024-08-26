unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uDllClass;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  FmyClassInstance.testA('测试对话框');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  btn2.Caption := Format('加法测试：%d', [FmyClassInstance.testB(3, 7)]);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Caption := Caption + '---' + FmyClassInstance.FstrCaption;
end;

end.
