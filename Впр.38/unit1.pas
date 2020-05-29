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
  mk: array[1..3, 1..3] of Integer;
 Numbers: array[1..9] of Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
 i,j,k,n: Integer;
begin
Randomize;
For i:= 1 to 3 do
 For j:= 1 to 3 do mk[i,j] := 0;
For i:= 0 to 2 do StringGrid1.Rows[i].Clear;
For i:= 1 to 9 do Numbers[i] := i + 3;
k:= 0;
While k < 3 do begin
i:= Random(3) + 1; j := Random (3) + 1;
n:= Random(9) + 1;
If (mk[i,j]=0) and (Numbers[n] <> 0) Then begin
mk[i,j] := Numbers[n];
k := k + 1;
 Numbers[n] := 0;
StringGrid1.Cells[j - 1, i - 1] := IntToStr(mk[i,j]);
end;
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 i,j,sum_row,sum_col: Integer;
 Prap: Boolean;
begin
For i:= 1 to 3 do
 For j:= 1 to 3 do mk[i,j] := StrToInt(StringGrid1.Cells[j - 1,i - 1]);
Prap := True;
For i:= 1 to 3 do
 begin
 sum_row := 0;
 For j:= 1 to 3 do sum_row := sum_row + mk[i,j];
 If sum_row <> 24 Then
 Prap := False;
 end;
 For i:= 1 to 3 do
 begin
 sum_col:= 0;
 For j:= 1 to 3 do sum_col := sum_col + mk[i,j];
 If sum_col <> 24 Then
 Prap := False;
 end;
 If Prap = True Then
 Label1.Caption := 'Перемога!'
 Else
   Label1.Caption := 'Спробуй ще!'
end;

end.

