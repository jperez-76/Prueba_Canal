unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFMenu = class(TForm)
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Procesos1: TMenuItem;
    Reportes1: TMenuItem;
    Salir1: TMenuItem;
    Entradas1: TMenuItem;
    Salidas1: TMenuItem;
    Procesos2: TMenuItem;
    Cierremensual1: TMenuItem;
    Aperturaanual1: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Entradas1Click(Sender: TObject);
    procedure Salidas1Click(Sender: TObject);
    procedure Cierremensual1Click(Sender: TObject);
    procedure Aperturaanual1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

Uses UEntradas, USalidas;

{$R *.dfm}

procedure TFMenu.Aperturaanual1Click(Sender: TObject);
begin
  Application.MessageBox('En construcción', '¡Aviso!', mb_ok + MB_ICONEXclamation) ;
end;

procedure TFMenu.Cierremensual1Click(Sender: TObject);
begin
  Application.MessageBox('En construcción', '¡Aviso!', mb_ok + MB_ICONEXclamation) ;
end;

procedure TFMenu.Entradas1Click(Sender: TObject);
begin
  FEntradas := TFEntradas.Create(Self);
  FEntradas.Show;
end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFMenu.Salidas1Click(Sender: TObject);
begin
  FSalidas := TFSalidas.Create(Self);
  FSalidas.Show;
end;

procedure TFMenu.Salir1Click(Sender: TObject);
begin
  Close;
end;

end.
