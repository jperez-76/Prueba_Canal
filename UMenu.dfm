object FMenu: TFMenu
  Left = 0
  Top = 0
  Caption = 'Men'#250' principal'
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 96
    Top = 16
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object Salir1: TMenuItem
        Caption = 'Salir'
        OnClick = Salir1Click
      end
    end
    object Procesos2: TMenuItem
      Caption = 'Procesos'
      object Cierremensual1: TMenuItem
        Caption = 'Cierre mensual'
        OnClick = Cierremensual1Click
      end
      object Aperturaanual1: TMenuItem
        Caption = 'Apertura anual'
        OnClick = Aperturaanual1Click
      end
    end
    object Procesos1: TMenuItem
      Caption = 'Movimientos'
      object Entradas1: TMenuItem
        Caption = 'Entradas'
        OnClick = Entradas1Click
      end
      object Salidas1: TMenuItem
        Caption = 'Salidas'
        OnClick = Salidas1Click
      end
    end
    object Reportes1: TMenuItem
      Caption = 'Reportes'
    end
  end
end
