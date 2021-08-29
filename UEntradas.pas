unit UEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, ComCtrls, jpeg, DBCtrls, Grids, DBGrids;

type
  TFEntradas = class(TForm)
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
    EOrigen: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox1: TComboBox;
    SpeedButton2: TSpeedButton;
    Edit4: TEdit;
    EPartida: TEdit;
    DFch_ingreso: TDateTimePicker;
    ComboBox2: TComboBox;
    ERecibe: TEdit;
    EAutoriza: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Image1: TImage;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Label10: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure PBotones1 (S, N:Boolean; Mov:Integer);
    Procedure PPaneles1 (S:Boolean);
  end;

var
  FEntradas: TFEntradas;
  acc : integer;

implementation

Uses UDMAlmacen;

{$R *.dfm}

procedure TFEntradas.BtnAceptar1Click(Sender: TObject);
begin
  PBotones1 (True, False, 1);
  PPaneles1(False);

  if acc = 1 then begin

    // Primero debe validar la existencia
      // si existe actualiza
    // En caso contrario inserta
    {DMAlmacen.QryABC.Close;
    DMAlmacen.QryABC.SQL.Clear;
    DMAlmacen.QryABC.SQL.Text := ' insert into m_entradas (id_mentrada, origen, partida, fch_ingreso, autoriza, recibe)' +
                                 ' values (2, '+ QuotedStr(EOrigen.Text) +','+ QuotedStr(EPartida.Text) +','+
                                  QuotedStr(DateToStr(DFch_ingreso.Date)) +','+ QuotedStr(EAutoriza.Text) +','+ QuotedStr(ERecibe.Text) +')';
    ShowMessage(DMAlmacen.QryABC.SQL.Text);

    DMAlmacen.QryABC.ExecSQL;}
    with DMAlmacen.m_entradas do begin
      Append;
      //FieldByName('id_mentrada').AsInteger := 0;
      FieldByName('origen').AsString := EOrigen.Text;
      FieldByName('partida').AsString := EPartida.Text;
      FieldByName('fch_ingreso').AsDateTime := DFch_ingreso.Date;
      FieldByName('autoriza').AsString := EAutoriza.Text;
      FieldByName('recibe').AsString := ERecibe.Text;
      Post;
    end;

  end;
end;

procedure TFEntradas.BtnAceptar2Click(Sender: TObject);
begin
  PBotones1 (True, False, 2);
  PPaneles1(False);
end;

procedure TFEntradas.BtnCancelar1Click(Sender: TObject);
begin
  PBotones1 (True, False, 1);
  PPaneles1(False);
end;

procedure TFEntradas.BtnCancelar2Click(Sender: TObject);
begin
  PBotones1 (True, False, 2);
  PPaneles1(False);
end;

procedure TFEntradas.BtnEditar1Click(Sender: TObject);
begin
  PBotones1 (False, True, 1);
end;

procedure TFEntradas.BtnEditar2Click(Sender: TObject);
begin
  PBotones1 (False, True, 2);
end;

procedure TFEntradas.BtnEliminar1Click(Sender: TObject);
begin
  PBotones1 (False, True, 1);
end;

procedure TFEntradas.BtnEliminar2Click(Sender: TObject);
begin
  PBotones1 (False, True, 2);
end;

procedure TFEntradas.BtnInsertar1Click(Sender: TObject);
begin
  PBotones1 (False, True, 1);
  acc := 1;
end;

procedure TFEntradas.BtnInsertar2Click(Sender: TObject);
begin
  PBotones1 (False, True, 2);
end;

procedure TFEntradas.BtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFEntradas.FormCreate(Sender: TObject);
begin
  PBotones1 (True, False, 1);
  BtnAceptar2.Enabled  := False;
  BtnCancelar2.Enabled := False;
  PPaneles1(False);

  DMAlmacen.c_departamentos.Open;
  DMAlmacen.c_unidad.Open;
  DMAlmacen.m_entradas.Open;

  acc := 0;
end;

Procedure TFEntradas.PBotones1 (S, N:Boolean; Mov:Integer);
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

Procedure TFEntradas.PPaneles1 (S:Boolean);
Begin
   Panel1.Enabled := S;
   Panel2.Enabled := S;
End;

end.
