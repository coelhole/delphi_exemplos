object FrmDownload: TFrmDownload
  Left = 191
  Top = 113
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'SYNAPSE DOWNLOAD FILE'
  ClientHeight = 97
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object EdtArquivo: TLabeledEdit
    Left = 8
    Top = 24
    Width = 400
    Height = 21
    EditLabel.Width = 36
    EditLabel.Height = 13
    EditLabel.Caption = 'Arquivo'
    ReadOnly = True
    TabOrder = 0
    Text = 'http://synapse.ararat.cz/doc/help/AllUnits.html'
  end
  object BtDownload: TButton
    Left = 320
    Top = 56
    Width = 88
    Height = 25
    Caption = 'Download'
    TabOrder = 1
    OnClick = BtDownloadClick
  end
end
