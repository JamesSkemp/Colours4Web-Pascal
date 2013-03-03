object FormMain: TFormMain
  Left = 650
  Top = 147
  Width = 345
  Height = 343
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  Caption = 'Colours4Web'
  Color = clMenu
  Constraints.MaxHeight = 500
  Constraints.MaxWidth = 345
  Constraints.MinHeight = 167
  Constraints.MinWidth = 345
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object LabelRed: TLabel
    Left = 8
    Top = 14
    Width = 73
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Red'
  end
  object LabelGreen: TLabel
    Left = 88
    Top = 14
    Width = 73
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Green'
  end
  object LabelBlue: TLabel
    Left = 168
    Top = 14
    Width = 73
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Blue'
  end
  object ScrollBarRed: TScrollBar
    Left = 8
    Top = 32
    Width = 73
    Height = 13
    Max = 5
    PageSize = 0
    TabOrder = 0
    OnChange = ScrollBarRedChange
  end
  object EditRed: TEdit
    Left = 8
    Top = 112
    Width = 73
    Height = 21
    TabStop = False
    MaxLength = 3
    ReadOnly = True
    TabOrder = 1
    Text = '00'
  end
  object ScrollBarGreen: TScrollBar
    Left = 88
    Top = 32
    Width = 73
    Height = 13
    Max = 5
    PageSize = 0
    TabOrder = 2
    OnChange = ScrollBarGreenChange
  end
  object EditGreen: TEdit
    Left = 88
    Top = 112
    Width = 73
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 3
    Text = '00'
  end
  object ScrollBarBlue: TScrollBar
    Left = 168
    Top = 32
    Width = 73
    Height = 13
    Max = 5
    PageSize = 0
    TabOrder = 4
    OnChange = ScrollBarBlueChange
  end
  object EditBlue: TEdit
    Left = 168
    Top = 112
    Width = 73
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 5
    Text = '00'
  end
  object EditRGB: TEdit
    Left = 256
    Top = 112
    Width = 73
    Height = 21
    TabStop = False
    ReadOnly = True
    TabOrder = 6
    Text = '#000000'
  end
  object PanelRed: TPanel
    Left = 8
    Top = 48
    Width = 73
    Height = 57
    BevelOuter = bvLowered
    Color = clBlack
    TabOrder = 7
  end
  object PanelGreen: TPanel
    Left = 88
    Top = 48
    Width = 73
    Height = 57
    BevelOuter = bvLowered
    Color = clBlack
    TabOrder = 8
  end
  object PanelBlue: TPanel
    Left = 168
    Top = 48
    Width = 73
    Height = 57
    BevelOuter = bvLowered
    Color = clBlack
    TabOrder = 9
  end
  object PanelRGB: TPanel
    Left = 256
    Top = 48
    Width = 73
    Height = 57
    BevelOuter = bvLowered
    Color = clBlack
    TabOrder = 10
  end
  object ButtonRandomize: TButton
    Left = 256
    Top = 136
    Width = 75
    Height = 20
    Caption = 'Randomize'
    TabOrder = 11
    OnClick = ButtonRandomizeClick
  end
  object GroupBoxAbout: TGroupBox
    Left = 2
    Top = 216
    Width = 334
    Height = 97
    Caption = 'About'
    TabOrder = 12
    object ButtonSite: TButton
      Left = 7
      Top = 69
      Width = 147
      Height = 20
      Caption = 'Visit StrivingLife.net'
      TabOrder = 0
      OnClick = ButtonSiteClick
    end
    object ButtonEmail: TButton
      Left = 176
      Top = 69
      Width = 151
      Height = 20
      Caption = 'Email the creator'
      TabOrder = 1
      OnClick = ButtonSiteClick
    end
    object MemoAbout: TMemo
      Left = 8
      Top = 16
      Width = 321
      Height = 49
      Enabled = False
      Lines.Strings = (
        'Memo1')
      TabOrder = 2
    end
  end
  object ButtonRandomColour: TButton
    Left = 280
    Top = 24
    Width = 25
    Height = 17
    Caption = 'ButtonRandomColour'
    TabOrder = 13
    TabStop = False
    Visible = False
    OnClick = ButtonRandomColourClick
  end
  object GroupBoxSaved: TGroupBox
    Left = 2
    Top = 160
    Width = 333
    Height = 57
    Caption = 'Saved'
    TabOrder = 14
    object MemoSaved: TMemo
      Left = 8
      Top = 16
      Width = 321
      Height = 33
      Lines.Strings = (
        'MemoSaved')
      TabOrder = 0
    end
  end
  object ButtonRestart: TButton
    Left = 168
    Top = 136
    Width = 75
    Height = 20
    Caption = 'Restart/Clear'
    TabOrder = 15
    OnClick = ButtonRestartClick
  end
  object ButtonSave: TButton
    Left = 8
    Top = 136
    Width = 75
    Height = 20
    Caption = 'Save'
    TabOrder = 16
    OnClick = ButtonSaveClick
  end
end
