unit UISample;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Filter.Effects, FMX.Objects, FMX.Effects, FMX.Ani,
  FMX.Controls.Presentation;

type
  TfrmUISample = class(TFrame)
    Button1: TButton;
    GlowEffect1: TGlowEffect;
    Switch1: TSwitch;
    ShadowEffect1: TShadowEffect;
    Image1: TImage;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    RippleEffect1: TRippleEffect;
    FloatAnimation3: TFloatAnimation;
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

implementation

{$R *.fmx}

procedure TfrmUISample.FloatAnimation2Finish(Sender: TObject);
begin
  Button1.Position.X := 8;
  Button1.Opacity := 1;
end;

procedure TfrmUISample.Switch1Switch(Sender: TObject);
begin
  FloatAnimation3.Enabled := Switch1.IsChecked;
end;

end.
