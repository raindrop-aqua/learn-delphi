unit Menu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox;

type
  TForm1 = class(TForm)
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
  Form1: TForm1;

implementation

uses
  UISample, Blank;

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  item: TListBoxItem;
begin

  item := ListBox1.Selected;

  if Assigned(frame) then begin
    frame.Destroy;
    frame := nil;
  end;

  if not Assigned(item) then begin
  end else if item.Text = 'Blank' then begin
    frame := Blank.TfrmBlank.Create(self);
  end else if item.Text = 'UI Sample' then begin
    frame := UISample.TfrmUISample.Create(self);
  end;

  frame.Align := TAlignLayout.Client;
  frame.Parent := pnlMain;
end;

end.
