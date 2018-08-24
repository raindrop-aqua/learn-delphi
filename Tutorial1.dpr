program Tutorial1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menu in 'Menu.pas' {frmMenu},
  UISample in 'Samples\UISample.pas' {frmUISample: TFrame},
  Blank in 'Samples\Blank.pas' {frmBlank: TFrame},
  Event1 in 'Samples\Event1.pas' {frmEvent1: TFrame},
  Event2 in 'Samples\Event2.pas' {frmEvent2: TFrame},
  Clock in 'Samples\Clock.pas' {frmClock: TFrame},
  Game1 in 'Samples\Game1.pas' {frmGame1: TFrame},
  MultiThread1 in 'Samples\MultiThread1.pas' {frmMultiThread1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
