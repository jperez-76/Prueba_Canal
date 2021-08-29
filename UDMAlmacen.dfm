object DMAlmacen: TDMAlmacen
  OldCreateOrder = False
  Height = 266
  Width = 469
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\Documents\Alcal' +
      'd'#237'a\DB\almacen.accdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 32
    Top = 16
  end
  object QryABC: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 344
    Top = 8
  end
  object dsc_departamentos: TDataSource
    DataSet = c_departamentos
    Left = 144
    Top = 64
  end
  object c_departamentos: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'cat_departamentos'
    Left = 144
    Top = 9
  end
  object c_unidad: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'cat_areas'
    Left = 248
    Top = 8
  end
  object dsc_unidad: TDataSource
    DataSet = c_unidad
    Left = 248
    Top = 64
  end
  object m_entradas: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'm_entradas'
    Left = 144
    Top = 128
  end
  object dsm_entradas: TDataSource
    DataSet = m_entradas
    Left = 144
    Top = 176
  end
end
