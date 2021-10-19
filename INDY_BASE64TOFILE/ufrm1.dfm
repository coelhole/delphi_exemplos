object Form1: TForm1
  Left = 192
  Top = 117
  Width = 628
  Height = 400
  BorderIcons = []
  Caption = 'INDY BASE64 TO FILE'
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    620
    369)
  PixelsPerInch = 96
  TextHeight = 13
  object LblBase64String: TLabel
    Left = 8
    Top = 16
    Width = 84
    Height = 13
    Caption = 'BASE64 STRING'
  end
  object MemoBase64String: TMemo
    Left = 8
    Top = 32
    Width = 600
    Height = 225
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BtSair: TBitBtn
    Left = 497
    Top = 325
    Width = 115
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Sair'
    TabOrder = 1
    OnClick = BtSairClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF006FF00FF00FF0
      07700766666666666F6666660000F00FF00FF000800880666666666688F66666
      00000FF00FF00F0700800866666666668F8F66660000F00FF00FF007800880FF
      FFFFFFF68F68FFFF000000000000070788000088888888868F66888800006666
      660770078880666666668F668F6668F600006666660000078880666666668F66
      8F6668F600006666660888078880666666668F668F6668F60000666666088807
      888066666FFFFFF68F6668F6000066000000080708806666888888868F6668F6
      0000660999990807888066668F666F868F6668F6000060999990880788806668
      F6F6F8668F6668F6000060909908880788806668F8FF8F668F6668F600006000
      900888078880666888F88F668F6668F600006660060888807880666668868F66
      68F668F600006666660888880780666666668F66668F68F60000666666088888
      8070666666668FFFFFF8F8F60000666666000000000066666666888888888866
      0000}
    NumGlyphs = 2
  end
  object BtSalvar: TBitBtn
    Left = 497
    Top = 277
    Width = 115
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = BtSalvarClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
      6666666666666666666666660000666666666666666666666666666666666666
      0000666000000000000066666888888888888866000066044074477704406666
      88887FF77788886600006604407447770440666688887FF77788886600006604
      407447770440666688887FF77788886600006604447777774440666688887777
      7788886600006604444444444440666688888888888888660000660440000000
      044066668888888888888866000066040FFFFFFFF0406666888FFFFFFFF88866
      000066040FFFFFFFF0406666888FFFFFFFF88866000066040F888888F0406666
      888F888888F88866000066040FFFFFFFF0406666888FFFFFFFF8886600006607
      0F888888F0006666878F888888F88866000066040FFFFFFFF0406666888FFFFF
      FFF8886600006600000000000000666688888888888888660000666666666666
      6666666666666666666666660000666666666666666666666666666666666666
      0000}
    NumGlyphs = 2
  end
  object SaveDlg: TSaveDialog
    Left = 464
    Top = 280
  end
end