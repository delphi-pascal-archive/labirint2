object MazeMain: TMazeMain
  Left = 231
  Top = 128
  AutoScroll = False
  AutoSize = True
  Caption = #1051#1072#1073#1080#1088#1080#1085#1090
  ClientHeight = 615
  ClientWidth = 1150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010100000000000280100001600000028000000100000002000
    00000100040000000000C0000000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    FFFFFFFFFFFFF000000000000F0FF0F0F0F0F0FFFF0FF0F0F0F0F0F00F0FF0F0
    F0F0F0FF0F0FF0F0F0FFF0FF0F0FF000F0F0F0000F0FF0FFF0F0FFFFFF0FF000
    F000F0000F0FF0FFF0FFF0FF0F0FF0000000000F0F0FF0FFFFFFF0FFFF0FF000
    F000F0F0FF0FF0FFF0FFFFF0FF0FF0F000000000000FFFFFFFFFFFFFFFFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 862
    Height = 615
  end
  object Shape1: TShape
    Left = 18
    Top = 18
    Width = 3
    Height = 3
    Pen.Color = clRed
  end
  object Panel1: TPanel
    Left = 866
    Top = 0
    Width = 284
    Height = 615
    Align = alRight
    TabOrder = 0
    object Message1: TPDJXPMemo
      Left = 1
      Top = 1
      Width = 282
      Height = 613
      TabStop = False
      Align = alClient
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        #1048#1075#1088#1072' "'#1051#1072#1073#1080#1088#1080#1085#1090'"'
        #1050#1088#1072#1089#1085#1072#1103' '#1090#1086#1095#1082#1072' - '#1101#1090#1086' '
        '"'#1080#1075#1088#1086#1082'". '#1053#1091#1078#1085#1086' '#1087#1088#1086#1074#1077#1089#1090#1080' '
        '"'#1080#1075#1088#1086#1082#1072'" '#1095#1077#1088#1077#1079' '#1083#1072#1073#1080#1088#1080#1085#1090' '#1082' '
        #1074#1099#1093#1086#1076#1091'.'
        #1051#1072#1073#1080#1088#1080#1085#1090' '#1074#1089#1077#1075#1076#1072' '
        #1075#1077#1085#1077#1088#1080#1088#1091#1077#1090#1089#1103' '#1089#1083#1091#1095#1072#1081#1085#1086
        '"'#1048#1075#1088#1086#1082'" '#1085#1077' '#1084#1086#1078#1077#1090' '#1080#1076#1090#1080' '#1095#1077#1088#1077#1079' '
        #1089#1090#1077#1085#1091' - '#1085#1091#1078#1085#1086' '#1074#1099#1073#1088#1072#1090#1100' '
        #1086#1087#1090#1080#1084#1072#1083#1100#1085#1099#1081' '#1087#1091#1090#1100'. '#1057#1080#1085#1077#1081' '
        #1090#1086#1095#1082#1077#1081' '#1087#1086#1084#1077#1095#1077#1085#1086' '#1084#1077#1089#1090#1086' '#1082#1091#1076#1072' '
        #1085#1091#1078#1085#1086' '#1076#1086#1081#1090#1080'. '#1050#1086#1075#1076#1072' '#1074#1099' '#1090#1091#1076#1072' '
        #1076#1086#1081#1076#1105#1090#1077' - '#1074#1099' '#1074#1099#1081#1075#1088#1072#1083#1080'.'
        #1050#1072#1078#1077#1090#1089#1103', '#1095#1090#1086' '#1077#1089#1083#1080' '#1074#1099' '#1074#1080#1076#1080#1090#1077' '
        #1083#1072#1073#1080#1088#1080#1085#1090' '#1094#1077#1083#1080#1082#1086#1084', '#1090#1086' '#1095#1077#1088#1077#1079' '
        #1085#1077#1075#1086' '#1087#1088#1086#1089#1090#1086' '#1087#1088#1086#1081#1090#1080', '#1085#1086' '#1101#1090#1086' '
        #1085#1077' '#1090#1072#1082'.'
        #1053#1080#1078#1077' '#1073#1091#1076#1077#1090' '#1086#1090#1086#1073#1088#1072#1078#1072#1090#1100#1089#1103' '
        #1085#1077#1082#1086#1090#1086#1088#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103', '
        #1087#1086#1103#1074#1083#1103#1102#1097#1072#1103#1089#1103' '#1087#1086' '#1093#1086#1076#1091' '
        #1074#1099#1087#1086#1083#1085#1077#1085#1080#1103'.'
        #1059#1076#1072#1095#1080'!')
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
  end
end