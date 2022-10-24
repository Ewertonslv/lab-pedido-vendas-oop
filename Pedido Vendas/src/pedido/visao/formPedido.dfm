object FrmPedido: TFrmPedido
  Left = 0
  Top = 0
  Caption = 'PEDIDO'
  ClientHeight = 326
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 577
    Height = 287
    ActivePage = TabSheet1
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Produto'
      object Label16: TLabel
        Left = 8
        Top = 6
        Width = 38
        Height = 15
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Font.Quality = fqClearTypeNatural
        ParentFont = False
      end
      object Label17: TLabel
        Left = 64
        Top = 6
        Width = 54
        Height = 15
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Font.Quality = fqClearTypeNatural
        ParentFont = False
      end
      object lblQuantidade: TLabel
        Left = 365
        Top = 5
        Width = 64
        Height = 15
        Caption = 'Quantidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Font.Quality = fqClearTypeNatural
        ParentFont = False
      end
      object Label20: TLabel
        Left = 443
        Top = 5
        Width = 28
        Height = 15
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Font.Quality = fqClearTypeNatural
        ParentFont = False
      end
      object Label29: TLabel
        Left = 520
        Top = 271
        Width = 3
        Height = 15
      end
      object valorTotal: TLabel
        Left = 365
        Top = 227
        Width = 60
        Height = 15
        Caption = 'Valor Total: '
      end
      object lblValorTotal: TLabel
        Left = 431
        Top = 227
        Width = 70
        Height = 15
        Caption = '0,00'
      end
      object edtDescricao: TEdit
        Left = 63
        Top = 23
        Width = 296
        Height = 23
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
        TabOrder = 1
      end
      object edtCodigoProduto: TEdit
        Left = 8
        Top = 23
        Width = 50
        Height = 23
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
        TabOrder = 0
      end
      object edtQuantidade: TEdit
        Left = 365
        Top = 22
        Width = 72
        Height = 23
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
        TabOrder = 2
      end
      object edtValor: TEdit
        Left = 443
        Top = 22
        Width = 70
        Height = 23
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Font.Quality = fqClearTypeNatural
        ParentFont = False
        TabOrder = 3
      end
      object btnAdicionar: TButton
        Left = 519
        Top = 51
        Width = 35
        Height = 35
        Caption = '+'
        TabOrder = 4
        OnClick = btnAdicionarClick
      end
      object btnRemover: TButton
        Left = 519
        Top = 92
        Width = 35
        Height = 35
        Caption = '-'
        TabOrder = 5
        OnClick = btnRemoverClick
      end
      object stgProduto: TStringGrid
        Left = 9
        Top = 52
        Width = 504
        Height = 169
        Color = clWhite
        DefaultRowHeight = 16
        DoubleBuffered = True
        FixedCols = 0
        RowCount = 2
        FixedRows = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentDoubleBuffered = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 6
        ColWidths = (
          38
          47
          76
          92
          229)
      end
    end
  end
  object btnSair: TButton
    Left = 502
    Top = 293
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
    TabOrder = 1
  end
  object btnOK: TButton
    Left = 421
    Top = 293
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
