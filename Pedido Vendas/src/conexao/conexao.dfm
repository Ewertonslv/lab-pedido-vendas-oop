object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=D:\Users\Viggo\Documents\Ewerton\Projeto Alessandro\db\' +
        'loja.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Left = 304
    Top = 176
  end
end
