unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Label1: TLabel;
    ListBox1: TListBox;
    Memo1: TMemo;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Tur:array[1..5,1..6] of Integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  i:Integer;
begin
for i:=1 to 5 do
 begin
  StringGrid1.Cells[0,i]:= IntToStr(i);
  StringGrid1.Cells[i,0] := IntToStr(i);
 end;
 StringGrid1.Cells[6,0]:='Сума';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i,j:Integer;
begin
for i:=1 to 5 do
For j:=1 to 5 do
Tur[i,j]:=StrToInt(StringGrid1.Cells[j,i]);
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j,sum:Integer;
begin
for i:=1 to 5 do
  begin
sum:=0;
for j:=1 to 6 do
sum:=sum + Tur[i,j];
StringGrid1.Cells[6,i]:=IntToStr(sum);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  N,k,i:Integer;
begin
 k:=0;
 for N:=8 downto 0 do
  for i:=1 to 5 do
  if StrToInt(StringGrid1.Cells[6,i]) = N then
  begin
   Memo1.Lines[k]:=IntToStr(i);
   k:=k + 1;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i:Integer;
  p:String;
begin
p:='III';
for i:=1 to 3 do
ListBox1.Items.Add(Copy(p, 1, i) + ' місце - ' + Memo1.Lines[i-1] + ' команда ');
end;

end.

