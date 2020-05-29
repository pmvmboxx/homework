unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    ListBox1: TListBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Mas: array[1..200] of Integer; sr:Real; N:Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i:Integer;
begin
N:=StrToInt(Edit1.Text);
Randomize; Memo1.Clear;
 For i :=1 to N do begin
  Mas[i]:= 1 + Random(500);
  Memo1.Lines.Add(IntToStr(Mas[i]));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, sum :Integer;
begin
sum := 0;
For i := 1 to N do sum := sum + Mas[i];
ListBox1.Items.Add('Денний прибуток:' + IntToStr(sum) + 'грн.');
sr:= sum/N;
ListBox1.Items.Add('Середній чек:' + FormatFloat('0.##',sr) + 'грн.');

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i,chk: Integer;
begin
chk:=0;
 For i:= 1 to N do
 If Mas[i] > sr Then
 chk:= chk + 1;
 ListBox1.Items.Add('Кількість чеків,більших за середнє:' + IntToStr( chk ));
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

end.

