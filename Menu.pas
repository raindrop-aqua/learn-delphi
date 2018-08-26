unit Menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox;

type
  TfrmMenu = class(TForm)
    Panel1: TPanel;
    ListBox1: TListBox;
    Splitter1: TSplitter;
    Button1: TButton;
    pnlMain: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { private êÈåæ }
    frame: TFrame;
  public
    { public êÈåæ }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses
  Blank, UISample, Event1, Event2, Clock, Game1, MultiThread1, MultiThread2;

{$R *.fmx}

procedure TfrmMenu.Button1Click(Sender: TObject);
var
  item: TListBoxItem;
begin

  item := ListBox1.Selected;

  if Assigned(frame) then begin
    frame.Free;
    frame := nil;
  end;

  if not Assigned(item) then begin
    frame := Blank.TfrmBlank.Create(self);
  end else if item.Text = 'UI Sample' then begin
    frame := TfrmUISample.Create(self);
  end else if item.Text = 'Event1' then begin
    frame := TfrmEvent1.Create(self);
  end else if item.Text = 'Event2' then begin
    frame := TfrmEvent2.Create(self);
  end else if item.Text = 'Clock' then begin
    frame := TfrmClock.Create(self);
  end else if item.Text = 'Game1' then begin
    frame := TfrmGame1.Create(self);
  end else if item.Text = 'Multi Thread1' then begin
    frame := TfrmMultiThread1.Create(self);
  end else if item.Text = 'Multi Thread2' then begin
    frame := TfrmMultiThread2.Create(self);
  end else begin
    frame := Blank.TfrmBlank.Create(self);
  end;

  frame.Align := TAlignLayout.Client;
  frame.Parent := pnlMain;
end;

end.
