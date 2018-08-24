unit Game1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects;

type
  TfrmGame1 = class(TFrame)
    Timer1: TTimer;
    Switch1: TSwitch;
    Circle1: TCircle;
    procedure Switch1Switch(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

implementation

{$R *.fmx}

procedure TfrmGame1.Switch1Switch(Sender: TObject);
begin
  Timer1.Enabled := Switch1.IsChecked;
end;

procedure TfrmGame1.Timer1Timer(Sender: TObject);
begin
  //
  Circle1.Position.X := Circle1.Position.X + 10;

end;

end.
