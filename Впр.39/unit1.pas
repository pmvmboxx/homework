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
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  A: array[1..6, 1..7] of Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  i, j: Integer;
begin
Randomize;
for i:= 1 to 6 do
 StringGrid1.Cells[0,i] := IntToStr(i);
for j:= 1 to 7 do
 StringGrid1.Cells[j,0] := IntToStr(j);
for i:= 1 to 6 do
 for j:= 1 to 7 do
  begin
    A[i,j]:= Random(100) - 50;
    StringGrid1.Cells[j,i] := IntToStr(A[i,j]);
  end;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  j,k,sum: Integer;
begin
 k:=StrToInt(Edit1.Text);
 sum:=0;
 for j:=1 to 7 do
  sum:=sum+A[k,j];
 Edit2.Text:= IntToStr(sum);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i,j,Sum: Integer;
  Sr: Real;
  R: String;
begin
R := '';
For i:= 1 to 6 do begin
 Sum:= 0;
 For j:= 1 to 7 do
  Sum:= Sum + A[i,j];
 Sr := Sum/7;
 R:= R + FormatFloat('0.0',Sr) + ' ';
 end;
Edit3.Text:= R;
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,j,max:Integer;
  R:String;
begin
R:='';
for j:=1 to 7 do
 begin
  max:=A[1,j];
  for i:=2 to 6 do
   If max < A[i,j] then
      max:=A[i,j];
  R:=R + IntToStr(max) + ' ';
 end;
 Edit4.Text:=R;
end;

procedure TForm1.Button4Click(Sender: TObject);
var k,j,kdr:Integer;
begin
k:=StrToInt(Edit5.Text);
kdr:=0;
for j:=1 to 7 do
 if A[k,j] > 0 then
   kdr:=kdr + 1;
Edit6.Text:=IntToStr(kdr);
end;


end.

