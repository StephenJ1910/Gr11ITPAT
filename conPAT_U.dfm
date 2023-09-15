object dmPAT: TdmPAT
  OldCreateOrder = False
  Height = 288
  Width = 493
  object conPATDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\Nandia1\Documents\Delphi Projects 2021\2022\PAT\PAT Code\PAT' +
      '.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:' +
      'System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database' +
      ' Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking ' +
      'Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk' +
      ' Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Cre' +
      'ate System Database=False;Jet OLEDB:Encrypt Database=False;Jet O' +
      'LEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Withou' +
      't Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 88
    Top = 104
  end
  object tblPAT: TADOTable
    Active = True
    Connection = conPATDB
    CursorType = ctStatic
    TableName = 'First Tournament'
    Left = 200
    Top = 104
  end
  object dscPAT: TDataSource
    DataSet = tblPAT
    Left = 304
    Top = 104
  end
  object dscTextWin: TDataSource
    DataSet = tblTextWin
    Left = 304
    Top = 152
  end
  object tblTextWin: TADOTable
    Active = True
    Connection = conPATDB
    CursorType = ctStatic
    TableName = 'Text_Winners'
    Left = 200
    Top = 152
  end
  object tblTextName: TADOTable
    Active = True
    Connection = conPATDB
    CursorType = ctStatic
    TableName = 'Text_Tournament'
    Left = 200
    Top = 200
  end
  object dscTextName: TDataSource
    DataSet = tblTextName
    Left = 304
    Top = 200
  end
end
