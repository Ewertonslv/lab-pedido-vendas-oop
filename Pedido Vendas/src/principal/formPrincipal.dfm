object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Administrativo'
  ClientHeight = 157
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 20
  object btnCadastrarParticipante: TSpeedButton
    Left = 40
    Top = 49
    Width = 89
    Height = 78
    Caption = 'PARTICIPANTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCadastrarParticipanteClick
  end
  object btnCadastrarProduto: TSpeedButton
    Left = 168
    Top = 49
    Width = 89
    Height = 78
    Caption = 'PRODUTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCadastrarProdutoClick
  end
  object Label1: TLabel
    Left = 112
    Top = 16
    Width = 80
    Height = 20
    Alignment = taCenter
    Caption = 'CADASTRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 376
    Top = 16
    Width = 55
    Height = 20
    Alignment = taCenter
    Caption = 'PEDIDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object btnPedido: TSpeedButton
    Left = 360
    Top = 49
    Width = 89
    Height = 78
    BiDiMode = bdLeftToRight
    Caption = 'PEDIDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    ParentBiDiMode = False
    OnClick = btnPedidoClick
  end
end
