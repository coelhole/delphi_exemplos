object Form3: TForm3
  Left = 191
  Top = 113
  BorderStyle = bsToolWindow
  Caption = 'DECIMAL EDIT'
  ClientHeight = 57
  ClientWidth = 212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 24
    Width = 140
    Height = 21
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
    OnKeyPress = Edit1KeyPress
  end
end
