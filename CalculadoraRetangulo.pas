unit CalculadoraRetangulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Core.Classes;

type
  TfrmCalculadoraRetangulo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtAltura: TEdit;
    edtLargura: TEdit;
    GroupBox1: TGroupBox;
    lblPerimetro: TLabel;
    btnCalcular: TButton;
    lblArea: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure Calcular;
    procedure exibirResultado(const Perimetro, Area : Double);
  public
    { Public declarations }
  end;

var
  frmCalculadoraRetangulo: TfrmCalculadoraRetangulo;

implementation

{$R *.dfm}

{ TfrmCalculadoraRetangulo }

procedure TfrmCalculadoraRetangulo.btnCalcularClick(Sender: TObject);
begin
  Calcular;
end;

procedure TfrmCalculadoraRetangulo.Calcular;
var
  Retangulo: TRetangulo;
  Perimetro: Double;
  Area: Double;
begin
  try
    try
        Retangulo := nil;
        Retangulo := TRetangulo.Create;
        Retangulo.Altura := StrToFloat(edtAltura.Text);
        Retangulo.Largura := StrToFloat(edtLargura.Text);

        Perimetro := 2  * (Retangulo.Altura + Retangulo.Largura);
        Area := Retangulo.Altura * Retangulo.Largura;
        exibirResultado(Perimetro, Area);
    except
      on  E: Exception do
          ShowMessage(format('Ocorrreu um erro ao calcular o Perimetro e a �rea do retangulo : %s',[E.Message]));
    end;
  finally
    if Assigned(Retangulo) then
       FreeAndNil(Retangulo);
  end;


end;

procedure TfrmCalculadoraRetangulo.exibirResultado(const Perimetro,
  Area: Double);
begin
    lblPerimetro.Caption := 'O perimetro do ret�ngulo �: ' + FloatToStr(Perimetro);
    lblArea.Caption := ' A �rea do ret�ngulo �: ' + FloatToStr(Area);
end;

end.
