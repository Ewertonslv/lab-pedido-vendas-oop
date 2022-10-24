object FrmProduto: TFrmProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro Produto'
  ClientHeight = 283
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 28
    Width = 38
    Height = 15
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentFont = False
  end
  object lblDescricao: TLabel
    Left = 80
    Top = 28
    Width = 54
    Height = 15
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentFont = False
  end
  object Label2: TLabel
    Left = 364
    Top = 28
    Width = 82
    Height = 15
    Caption = 'Valor de venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Font.Quality = fqClearTypeNatural
    ParentFont = False
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 49
    Width = 66
    Height = 23
    NumbersOnly = True
    TabOrder = 0
  end
  object edtDescricao: TMemo
    Left = 80
    Top = 49
    Width = 275
    Height = 23
    MaxLength = 120
    TabOrder = 1
    OnChange = edtDescricaoChange
  end
  object edtValor: TKrkVCLNumberEdit6
    Left = 361
    Top = 49
    Width = 113
    Height = 23
    Alignment = taRightJustify
    TabOrder = 2
    Text = '0,00'
    UserDefinedColorPalette.GeometryHoverColor = clBlack
    OnChange = edtValorChange
  end
  object btnSair: TButton
    Left = 399
    Top = 227
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Sai&r'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 3
    OnClick = btnSairClick
  end
  object btnCancelar: TButton
    Left = 318
    Top = 227
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object btnOK: TButton
    Left = 237
    Top = 227
    Width = 75
    Height = 25
    Caption = '&OK'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
end
