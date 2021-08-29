program PAlamacen;

uses
  Forms,
  UMenu in 'UMenu.pas' {FMenu},
  USalidas in 'USalidas.pas' {FSalidas},
  UEntradas in 'UEntradas.pas' {FEntradas},
  URSalidas in 'URSalidas.pas' {FRSalidas},
  UDMAlmacen in 'UDMAlmacen.pas' {DMAlmacen: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMAlmacen, DMAlmacen);
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
