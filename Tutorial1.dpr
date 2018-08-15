program Tutorial1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menu in 'Menu.pas' {Form1},
  UISample in 'Samples\UISample.pas' {frmUISample: TFrame},
  Blank in 'Samples\Blank.pas' {frmBlank: TFrame},
  Event1 in 'Samples\Event1.pas' {frmEvent1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
