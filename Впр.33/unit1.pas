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
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Eng_words, Ukr_words: array[0..100] of String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.Memo2Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button3Click(Sender: TObject);
var
i:Integer; s:String;
begin
s:=Edit3.Text;
i:= -1;
Repeat i:= i +1;
Until Eng_words[i] = s;
Edit4.Text:= Ukr_words[i];
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
 For i:=0 to Memo1.Lines.Count - 1 do
 begin
  Ukr_words[i]:=Memo1.Lines[i];
  Eng_words[i]:= Memo2.Lines[i];
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
i:Integer; s:String;
begin
s:=Edit1.Text;
i:= -1;
Repeat i:= i +1;
Until Ukr_words[i] = s;
Edit2.Text:= Eng_words[i];
end;

end.

