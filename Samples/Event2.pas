unit Event2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation;

type
  TfrmEvent2 = class(TFrame)
    Timer1: TTimer;
    Panel1: TPanel;
    Memo1: TMemo;
    Panel2: TPanel;
    Switch1: TSwitch;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

implementation

{$R *.fmx}

procedure TfrmEvent2.Switch1Switch(Sender: TObject);
begin
  Timer1.Enabled := Switch1.IsChecked;
end;

procedure TfrmEvent2.Timer1Timer(Sender: TObject);
begin
  Memo1.Lines.Insert(0, DateTimeToStr(Now()));
end;

end.
