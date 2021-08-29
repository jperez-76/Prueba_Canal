unit USalidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, ComCtrls, jpeg;

type
  TFSalidas = class(TForm)
    BtnInsertar1: TSpeedButton;
    BtnEditar1: TSpeedButton;
    BtnEliminar1: TSpeedButton;
    BtnAceptar1: TSpeedButton;
    BtnCancelar1: TSpeedButton;
    BtnBuscar1: TSpeedButton;
    BtnPrimero1: TSpeedButton;
    BtnAnterior1: TSpeedButton;
    BtnSiguiente1: TSpeedButton;
    BtnUltimo1: TSpeedButton;
    BtnImprimir1: TSpeedButton;
    BtnSalir: TSpeedButton;
    BtnInsertar2: TSpeedButton;
    BtnEditar2: TSpeedButton;
    BtnEliminar2: TSpeedButton;
    BtnAceptar2: TSpeedButton;
    BtnCancelar2: TSpeedButton;
    BtnPrimero2: TSpeedButton;
    BtnAnterior2: TSpeedButton;
    BtnSiguiente2: TSpeedButton;
    BtnUltimo2: TSpeedButton;
    Panel1: TPanel;
    SpeedButton13: TSpeedButton;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    Edit5: TEdit;
    Label1: TLabel;
    Label9: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Image1: TImage;
    procedure BtnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnInsertar1Click(Sender: TObject);
    procedure BtnEditar1Click(Sender: TObject);
    procedure BtnEliminar1Click(Sender: TObject);
    procedure BtnAceptar1Click(Sender: TObject);
    procedure BtnCancelar1Click(Sender: TObject);
    procedure BtnInsertar2Click(Sender: TObject);
    procedure BtnEditar2Click(Sender: TObject);
    procedure BtnEliminar2Click(Sender: TObject);
    procedure BtnAceptar2Click(Sender: TObject);
    procedure BtnCancelar2Click(Sender: TObject);
    procedure BtnImprimir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure PBotones1 (S, N:Boolean; Mov:Integer);
    Procedure PPaneles1 (S:Boolean);
  end;

var
  FSalidas: TFSalidas;

implementation

Uses URSalidas;

{$R *.dfm}

procedure TFSalidas.BtnAceptar1Click(Sender: TObject);
begin
  PBotones1 (True, False, 1);
  PPaneles1(False);
end;

procedure TFSalidas.BtnAceptar2Click(Sender: TObject);
begin
  PBotones1 (True, False, 2);
  PPaneles1(False);
end;

procedure TFSalidas.BtnCancelar1Click(Sender: TObject);
begin
  PBotones1 (True, False, 1);
  PPaneles1(False);
end;

procedure TFSalidas.BtnCancelar2Click(Sender: TObject);
begin
  PBotones1 (True, False, 2);
  PPaneles1(False);
end;

procedure TFSalidas.BtnEditar1Click(Sender: TObject);
begin
  PBotones1 (False, True, 1);
end;

procedure TFSalidas.BtnEditar2Click(Sender: TObject);
begin
  PBotones1 (False, True, 2);
end;

procedure TFSalidas.BtnEliminar1Click(Sender: TObject);
begin
  PBotones1 (False, True, 1);
end;

procedure TFSalidas.BtnEliminar2Click(Sender: TObject);
begin
  PBotones1 (False, True, 2);
end;

procedure TFSalidas.BtnImprimir1Click(Sender: TObject);
begin
  FRSalidas := TFRSalidas.Create(Self);
  //FRSalidas.Show;
  FRSalidas.QRSalidas.Preview;
end;

procedure TFSalidas.BtnInsertar1Click(Sender: TObject);
begin
  PBotones1 (False, True, 1);
end;

procedure TFSalidas.BtnInsertar2Click(Sender: TObject);
begin
  PBotones1 (False, True, 2);
end;

procedure TFSalidas.BtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFSalidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFSalidas.FormCreate(Sender: TObject);
begin
  PBotones1 (True, False, 1);
  BtnAceptar2.Enabled  := False;
  BtnCancelar2.Enabled := False;
  PPaneles1(False);
end;

Procedure TFSalidas.PBotones1 (S, N:Boolean; Mov:Integer);
Begin
  If Mov = 1 then begin
    BtnInsertar1.Enabled  := S;     BtnInsertar2.Visible  := S;
    BtnEditar1.Enabled    := S;     BtnEditar2.Visible    := S;
    BtnEliminar1.Enabled  := S;     BtnEliminar2.Visible  := S;
    BtnAceptar1.Enabled   := N;     BtnAceptar2.Visible   := S;
    BtnCancelar1.Enabled  := N;     BtnCancelar2.Visible  := S;
    BtnBuscar1.Enabled    := S;     BtnPrimero2.Visible   := S;
    BtnPrimero1.Enabled   := S;     BtnAnterior2.Visible  := S;
    BtnAnterior1.Enabled  := S;     BtnSiguiente2.Visible := S;
    BtnSiguiente1.Enabled := S;     BtnUltimo2.Visible    := S;
    BtnUltimo1.Enabled    := S;     Panel2.Enabled        := S;
    BtnImprimir1.Enabled  := S;
    BtnSalir.Enabled      := S;
    Panel1.Enabled        := N;
  end;
  If Mov = 2 then begin
    BtnInsertar2.Enabled  := S;     BtnInsertar1.Visible  := S;
    BtnEditar2.Enabled    := S;     BtnEditar1.Visible    := S;
    BtnEliminar2.Enabled  := S;     BtnEliminar1.Visible  := S;
    BtnAceptar2.Enabled   := N;     BtnAceptar1.Visible   := S;
    BtnCancelar2.Enabled  := N;     BtnCancelar1.Visible  := S;
    BtnPrimero2.Enabled   := S;     BtnBuscar1.Visible    := S;
    BtnAnterior2.Enabled  := S;     BtnPrimero1.Visible   := S;
    BtnSiguiente2.Enabled := S;     BtnAnterior1.Visible  := S;
    BtnUltimo2.Enabled    := S;     BtnSiguiente1.Visible := S;
    Panel2.Enabled        := N;     BtnUltimo1.Visible    := S;
                                    BtnImprimir1.Visible  := S;
                                    BtnSalir.Visible      := S;
                                    Panel1.Enabled        := S;
  end;

  
End;

Procedure TFSalidas.PPaneles1 (S:Boolean);
Begin
   Panel1.Enabled := S;
   Panel2.Enabled := S;
End;

end.
