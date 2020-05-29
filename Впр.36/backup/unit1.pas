unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  A: array[1..6] of Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
var i: Integer;
  Prap, Prap2: Boolean;
begin
Prap:= True;
Prap2:= True;
for i:=2 to 6 do
 if A[i] <= A[i - 1] then
 Prap:=False;
if A[i] >= A[i - 1] then
 Prap2:=False;
If Prap then
Label1.Caption:='За неспаданням'
else if Prap2 then
Label1.Caption:='За незростанням'
else
Label1.Caption:='Неупорядкована послідновність';
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:Integer;
begin
 for i:=1 to 6 do
StringGrid1.Cells[i - 1, 0] := IntToStr(i);
end;

procedure TForm1.Button1Click(Sender: TObject);
var i : Integer;
begin
for i:=1 to 6 do
If Length(StringGrid1.Cells[i - 1, 1]) <> 0 then
A[i]:=StrToInt(StringGrid1.Cells[i - 1, 1])
Else
 A[i]:= 0 ;
end;

end.

