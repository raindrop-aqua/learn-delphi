unit Generics1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TFrame1 = class(TFrame)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private �錾 }
  public
    { public �錾 }
  end;

implementation

uses
  Generics.Collections;

{$R *.fmx}

procedure TFrame1.Button1Click(Sender: TObject);
var
  list: TList<Integer>;
  i: Integer;
  s: string;
begin
  list := TList<Integer>.Create;
  list.Add(100);
  list.Add(100.15);  // �R���p�C���G���[
  list.Add('111');   // �R���p�C���G���[

  i := list[0];
  s := IntToStr(list[0]);
end;

end.
