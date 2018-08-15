unit Event1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation;

type
  TfrmEvent1 = class(TFrame)
    Panel1: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button1DblClick(Sender: TObject);
    procedure Button1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Button1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { private 宣言 }
  public
    { public 宣言 }
  end;

implementation

{$R *.fmx}

procedure TfrmEvent1.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add('ボタンをクリックしました');
end;

procedure TfrmEvent1.Button1DblClick(Sender: TObject);
begin
  Memo1.Lines.Add('ボタンをダブルクリックしました');
end;

procedure TfrmEvent1.Button1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Memo1.Lines.Add('ボタンを押しました');
end;

procedure TfrmEvent1.Button1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  Memo1.Lines.Add('ボタンを離しました');
end;

procedure TfrmEvent1.Memo1KeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  Edit1.Text := KeyChar;
  Edit2.text := Key.ToString;
end;

end.
