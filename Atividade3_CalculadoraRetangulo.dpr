program Atividade3_CalculadoraRetangulo;

uses
  Vcl.Forms,
  CalculadoraRetangulo in 'CalculadoraRetangulo.pas' {frmCalculadoraRetangulo},
  Core.Classes in 'Classes\Core.Classes.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadoraRetangulo, frmCalculadoraRetangulo);
  Application.Run;
end.
