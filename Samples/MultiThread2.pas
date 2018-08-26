unit MultiThread2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TfrmMultiThread2 = class(TFrame)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

implementation

uses
  System.Threading, System.Diagnostics;

{$R *.fmx}

procedure TfrmMultiThread2.Button1Click(Sender: TObject);
var
  sw: TStopwatch;
begin
  sw := TStopwatch.Create;
  sw.Start;

  TParallel.For(1, 3, procedure(i: Int64)
    begin
        if (i = 1) then begin
          Sleep(1000);
          Edit1.Text := IntToStr(i);
        end else if (i = 2) then begin
          Sleep(2000);
          Edit2.Text := IntToStr(i);
        end else if (i = 3) then begin
          Sleep(3000);
          Edit3.Text := IntToStr(i);
        end;
    end);

    sw.Stop;
    Memo1.Text := 'èàóùéûä‘(ms)ÅF' + IntToStr(sw.ElapsedMilliseconds);
end;

end.
