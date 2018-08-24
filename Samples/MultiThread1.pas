unit MultiThread1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TfrmMultiThread1 = class(TFrame)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

implementation

uses
  System.Threading;


{$R *.fmx}

procedure TfrmMultiThread1.Button1Click(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to 5 do
  begin
    Sleep(1000);
    Edit1.Text := IntToStr(i);
  end;
end;

procedure TfrmMultiThread1.Button2Click(Sender: TObject);
var
  task: ITask;
begin
  task := TTask.Create(procedure()
    var
      i: integer;
    begin
      for i := 0 to 5 do
      begin
        Sleep(1000);
        TThread.Synchronize(nil, procedure()
          begin
            Edit2.Text := IntToStr(i);
          end);
      end;
    end);
  task.Start;
end;

end.
