program Project_auto_quarto;

uses
  System.StartUpCopy,
  FMX.Forms,
  auto_quarto in 'auto_quarto.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
