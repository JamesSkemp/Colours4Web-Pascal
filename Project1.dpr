program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Colours4Web';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.