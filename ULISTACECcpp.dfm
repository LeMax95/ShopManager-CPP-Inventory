object FDATECEC: TFDATECEC
  Left = 0
  Top = 0
  Caption = 'FDATECEC'
  ClientHeight = 506
  ClientWidth = 1221
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1221
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1130
    object Label1: TLabel
      Left = 5
      Top = 0
      Width = 56
      Height = 15
      Caption = 'PERIOADA'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 5
      Top = 20
      Width = 81
      Height = 23
      Date = 45255.000000000000000000
      Time = 0.438165266205032800
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 109
      Top = 20
      Width = 81
      Height = 23
      Date = 45255.000000000000000000
      Time = 0.438165266205032800
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 221
      Top = 20
      Width = 75
      Height = 23
      Caption = 'CAUTA'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 325
      Top = 20
      Width = 75
      Height = 23
      Caption = 'ANULEAZA'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 1221
    Height = 457
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1130
    ExplicitHeight = 426
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1219
      Height = 455
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1128
      ExplicitHeight = 424
      object TabSheet1: TTabSheet
        Caption = 'LISTA CEC'
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 1211
          Height = 344
          Align = alClient
          DataSource = DM.DSLISTACEC
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = DBGrid2DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'NR_POZ'
              Title.Alignment = taCenter
              Title.Caption = 'NR POZ'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 62
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NR_CEC'
              Title.Alignment = taCenter
              Title.Caption = 'NR CEC'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_CEC'
              Title.Alignment = taCenter
              Title.Caption = 'DATA CEC'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 215
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SUMA_INITIALA'
              Title.Alignment = taCenter
              Title.Caption = 'SUMA CEC'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 102
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMA_DISCOUN'
              Title.Alignment = taCenter
              Title.Caption = 'SUMA DISCOUNT'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMA_ACHITATA'
              Title.Alignment = taCenter
              Title.Caption = 'SUMA TOTAL'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISCOUNT'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPERATOR'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI'
              Title.Font.Style = [fsBold]
              Width = 170
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 0
          Top = 344
          Width = 1211
          Height = 81
          Align = alBottom
          TabOrder = 1
          object Label2: TLabel
            Left = 274
            Top = 14
            Width = 140
            Height = 17
            Caption = 'TOTAL SUMA INITIALA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 504
            Top = 14
            Width = 151
            Height = 17
            Caption = 'TOTAL SUMA DISCOUNT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 728
            Top = 14
            Width = 153
            Height = 17
            Caption = 'TOTAL SUMA ACHITATA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object TOTAL_SUMA_INITIALA: TEdit
            Left = 282
            Top = 40
            Width = 121
            Height = 23
            ReadOnly = True
            TabOrder = 0
          end
          object TOTAL_SUMA_DISCOUNT: TEdit
            Left = 512
            Top = 40
            Width = 121
            Height = 23
            ReadOnly = True
            TabOrder = 1
          end
          object TOTAL_SUMA_ACHITATA: TEdit
            Left = 728
            Top = 37
            Width = 121
            Height = 23
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'DATE CEC'
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1211
          Height = 425
          Align = alClient
          DataSource = DM.DSVANZARE
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              Title.Alignment = taCenter
              Title.Caption = 'Nr'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 40
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'COD_PRODUS'
              Title.Alignment = taCenter
              Title.Caption = 'Cod Produs'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DENUMIRE'
              Title.Alignment = taCenter
              Title.Caption = 'Produs'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 249
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CANTITATEA'
              Title.Alignment = taCenter
              Title.Caption = 'Cant.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 46
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PRET_VANZ'
              Title.Alignment = taCenter
              Title.Caption = 'Cost'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SUMA'
              Title.Alignment = taCenter
              Title.Caption = 'Suma'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 76
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PROCENT'
              Title.Alignment = taCenter
              Title.Caption = 'Discount'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 71
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SUMA_DISC'
              Title.Alignment = taCenter
              Title.Caption = 'Suma Disc.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 86
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SUMA_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Suma total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end>
        end
      end
    end
  end
end
