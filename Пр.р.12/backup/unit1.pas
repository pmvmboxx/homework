unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    ListBox1: TListBox;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  const month: array[1..12] of String = ('січень', 'лютий', 'березень', 'квітень',
'травень', 'червень', 'липень', 'серпень', 'вересень', 'жовтень', 'листопад',
'грудень');
Mas: array[1..12] of Integer = (54, 13, 30, 15, 40, 32, 10, 20, 46, 60, 56, 38);
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ListBox1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i,sum:Integer;
  average:real;
begin
sum:=0;
for i:=1 to 12 do
sum:=sum +Mas[i];
ListBox1.Items.Add('S= ' + IntToStr(sum) + 'мм');
average:=sum/12;
ListBox1.Items.Add('Середнє значення ' + FloatToStr(average) + 'мм');
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,min,k:Integer;
begin
min:=Mas[1];
k:=1;
for i:=2 to 12 do
if Mas[i] < min then
begin
  min:=Mas[i];
  k:=i;
end;
ListBox1.Items.Add('Найсухіший місяць: ' + month[k]);
end;

procedure TForm1.Button3Click(Sender: TObject);
var i,max,k:Integer;
begin
 max:=Mas[1];
k:=1;
for i:=2 to 12 do
if Mas[i] > max then
begin
  max:=Mas[i];
  k:=i;
end;
ListBox1.Items.Add('Найвологіший місяць: ' + month[k]);
end;

procedure TForm1.Button4Click(Sender: TObject);
var i,k:Integer;
begin
ListBox1.Items.Add('Місяці,в які кількість опадів < 40 мм: ');
k:=0;
for i:=1 to 12 do
if Mas[i] < 40 then
begin
 ListBox1.Items.Add(month[i]);
 k:=k+1;
end;
 ListBox1.Items.Add('Кількість місяців < 40 мм - ' + IntToStr(k));
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:Integer;
begin
 for i:=1 to 12 do
 begin
   StringGrid1.Cells[i-1,0] := month[i];
   StringGrid1.Cells[i-1,1] := IntToStr(Mas[i]);
 end;
end;

end.

