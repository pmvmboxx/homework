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
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  i:Integer;
begin
 For i:=1 to 10 do
 StringGrid1.Cells[i-1,0] := IntToStr(i);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  a: array[1..10] of Integer;
  i,c: Integer;
begin
 For i:=1 to 10 do
     if Length(StringGrid1.Cells[i - 1,1]) <> 0 then
      a[i] := StrToInt(StringGrid1.Cells[i - 1, 1])
 else
   a[i]:= 0;
 i:=1;
 while i<=9 do
begin
  c:= a[i];
  a[i]:= a[i+1];
  a[i+1]:= c;
  i:= i+2;
 end;
 for i:= 1 to 10 do
 StringGrid1.Cells[i-1,1] := IntToStr(a[i]);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   a: array[1..10] of Integer;
  i: Integer;
begin
 For i:=1 to 10 do
     if Length(StringGrid1.Cells[i - 1,1]) <> 0 then
      begin
      a[i] := StrToInt(StringGrid1.Cells[i - 1, 1]);
      if i mod 2=0 then
       a[i]:= 0;
      end
 else
 a[i]:= 0;
 for i:=1 to 10 do
   StringGrid1.Cells[i - 1,1]:= IntToStr(a[i]);
end;

end.

