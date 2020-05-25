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
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Posl: array[1..100] of Integer;
  N,K,i :Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
K:= 0;
ListBox1.Clear;
For i := 1 to N do begin
 If (Posl[i] Mod 2 = 0) and (i Mod 2 = 0) Then K := K + 1;
 If ( i Mod 2=1) Then
 ListBox1.Items.Add(IntToStr(Posl[i]));
 end;
 Edit2.Text := IntToStr(K);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
N := StrToInt(Edit1.Text);
 Randomize;
 ListBox1.Clear;
For i:=1 to N do begin
  Posl[i] := Random(20);
  ListBox1.Items.Add(IntToStr(Posl[i]));
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

