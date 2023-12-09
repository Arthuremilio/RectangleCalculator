unit Core.Classes;

interface

uses
  System.SysUtils;

type
  TRetangulo = class
private
    FAltura: Double;
    FLargura: Double;
    FPerimetro: Double;
    FArea: Double;
public
  property Altura: Double read FAltura write FAltura;
  property Largura: Double read FLargura write FLargura;
  property Perimetro: Double read FPerimetro write FPerimetro;
  property Area: Double read FArea write FArea;

  constructor Create;
end;

implementation

{ TRetangulo }

constructor TRetangulo.Create;
begin
  FAltura := 0;
  FLargura := 0;
end;

end.
