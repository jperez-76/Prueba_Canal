unit UDMAlmacen;

interface

uses
  SysUtils, Classes, ADODB, DB;

type
  TDMAlmacen = class(TDataModule)
    ADOConnection1: TADOConnection;
    QryABC: TADOQuery;
    dsc_departamentos: TDataSource;
    c_departamentos: TADOTable;
    c_unidad: TADOTable;
    dsc_unidad: TDataSource;
    m_entradas: TADOTable;
    dsm_entradas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAlmacen: TDMAlmacen;

implementation

{$R *.dfm}

end.
