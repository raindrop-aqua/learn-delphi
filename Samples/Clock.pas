unit Clock;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.DateUtils, FMX.Types, FMX.Graphics, FMX.Controls,
  FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Edit;

type
  TfrmClock = class(TFrame)
    RoundRectMinute: TRoundRect;
    RoundRectHour: TRoundRect;
    RoundRectSecond: TRoundRect;
    Edit1: TEdit;
    Circle1: TCircle;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

implementation

{$R *.fmx}

procedure TfrmClock.Timer1Timer(Sender: TObject);
var
  timestamp: TDateTime;

  Hour: Double;
  Min: Double;
  Sec: Double;
begin

  timestamp := Now();
  Sec := SecondOf(timestamp);
  Min := MinuteOf(timestamp);
  Hour := HourOf(timestamp);

  RoundRectSecond.RotationAngle := Sec * 6;
  RoundRectMinute.RotationAngle := (Min + Sec / 60) * 6;
  RoundRectHour.RotationAngle := (Hour + Min / 60) * 30;

  Edit1.Text := TimeToStr(timestamp);

end;

end.
