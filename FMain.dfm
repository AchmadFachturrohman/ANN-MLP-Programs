object MainForm: TMainForm
  Left = 488
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  Caption = 'ANN - MLP With EPBA Program'
  ClientHeight = 442
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mainPanel: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 441
    Color = 10569485
    ParentBackground = False
    TabOrder = 0
    object btnHome: TButton
      Left = 55
      Top = 56
      Width = 75
      Height = 25
      Caption = 'HOME'
      TabOrder = 0
      OnClick = btnHomeClick
    end
    object btnTugas: TButton
      Left = 55
      Top = 159
      Width = 83
      Height = 25
      Caption = 'Task I'
      TabOrder = 1
      OnClick = btnTugasClick
    end
    object btnExit: TButton
      Left = 55
      Top = 368
      Width = 75
      Height = 25
      Caption = 'EXIT'
      TabOrder = 2
      OnClick = btnExitClick
    end
    object btnUTS: TButton
      Left = 55
      Top = 263
      Width = 75
      Height = 25
      Caption = 'Gait Phase II'
      TabOrder = 3
      OnClick = btnUTSClick
    end
  end
  object cmd1Panel: TPanel
    Left = 184
    Top = 0
    Width = 137
    Height = 441
    Color = 12608789
    ParentBackground = False
    TabOrder = 1
    Visible = False
    object btnInit1: TButton
      Left = 32
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Initialization'
      TabOrder = 0
      OnClick = btnInit1Click
    end
    object btnAnn1: TButton
      Left = 32
      Top = 159
      Width = 75
      Height = 25
      Caption = 'ANN Training'
      TabOrder = 1
      OnClick = btnAnn1Click
    end
    object btnRecall1: TButton
      Left = 32
      Top = 243
      Width = 75
      Height = 25
      Caption = 'Recall'
      TabOrder = 2
      OnClick = btnRecall1Click
    end
    object btnClear1: TButton
      Left = 32
      Top = 333
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 3
      OnClick = btnClear1Click
    end
  end
  object infoPanel: TPanel
    Left = 184
    Top = 0
    Width = 249
    Height = 441
    Color = 16747076
    ParentBackground = False
    TabOrder = 2
    object Memo1: TMemo
      Left = 8
      Top = 8
      Width = 234
      Height = 425
      Lines.Strings = (
        'Memo1')
      ReadOnly = True
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 15
      Top = 8
      Width = 185
      Height = 105
      Caption = 'Result'
      TabOrder = 1
      Visible = False
      object Label5: TLabel
        Left = 11
        Top = 22
        Width = 42
        Height = 13
        Caption = 'Iteration'
      end
      object Label6: TLabel
        Left = 11
        Top = 69
        Width = 24
        Height = 13
        Caption = 'Error'
      end
      object Edit1: TEdit
        Left = 61
        Top = 19
        Width = 108
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 61
        Top = 66
        Width = 108
        Height = 21
        TabOrder = 1
        Text = 'Edit2'
      end
    end
    object GroupBox2: TGroupBox
      Left = 15
      Top = 119
      Width = 146
      Height = 138
      Caption = 'Parameters Value'
      TabOrder = 2
      Visible = False
      object Label1: TLabel
        Left = 8
        Top = 22
        Width = 56
        Height = 13
        Caption = 'Input Layer'
      end
      object Label2: TLabel
        Left = 8
        Top = 50
        Width = 64
        Height = 13
        Caption = 'Output Layer'
      end
      object Label3: TLabel
        Left = 8
        Top = 76
        Width = 72
        Height = 13
        Caption = 'Hidden Layer 1'
      end
      object Label4: TLabel
        Left = 8
        Top = 103
        Width = 72
        Height = 13
        Caption = 'Hidden Layer 2'
      end
      object SpinEdit1: TSpinEdit
        Left = 101
        Top = 19
        Width = 36
        Height = 22
        MaxValue = 2
        MinValue = 2
        TabOrder = 0
        Value = 2
      end
      object SpinEdit2: TSpinEdit
        Left = 101
        Top = 47
        Width = 36
        Height = 22
        MaxValue = 1
        MinValue = 1
        TabOrder = 1
        Value = 1
      end
      object SpinEdit3: TSpinEdit
        Left = 101
        Top = 75
        Width = 36
        Height = 22
        MaxValue = 2
        MinValue = 2
        TabOrder = 2
        Value = 8
      end
      object SpinEdit4: TSpinEdit
        Left = 101
        Top = 103
        Width = 36
        Height = 22
        MaxValue = 2
        MinValue = 2
        TabOrder = 3
        Value = 8
      end
    end
    object GroupBox3: TGroupBox
      Left = 15
      Top = 263
      Width = 114
      Height = 119
      Caption = 'Function'
      TabOrder = 3
      Visible = False
      object rbtnAND: TRadioButton
        Left = 16
        Top = 24
        Width = 113
        Height = 17
        Caption = 'AND'
        TabOrder = 0
        OnClick = rbtnANDClick
      end
      object rbtnOR: TRadioButton
        Left = 16
        Top = 47
        Width = 113
        Height = 17
        Caption = 'OR'
        TabOrder = 1
        OnClick = rbtnORClick
      end
      object rbtnXOR: TRadioButton
        Left = 16
        Top = 70
        Width = 113
        Height = 17
        Caption = 'XOR'
        TabOrder = 2
        OnClick = rbtnXORClick
      end
      object rbtnGP: TRadioButton
        Left = 17
        Top = 93
        Width = 113
        Height = 17
        Caption = 'Gait Phase I'
        TabOrder = 3
        OnClick = rbtnGPClick
      end
    end
    object GroupBox4: TGroupBox
      Left = 15
      Top = 263
      Width = 113
      Height = 105
      Caption = 'Topology'
      TabOrder = 4
      Visible = False
      object rbtnTopoA: TRadioButton
        Left = 17
        Top = 32
        Width = 113
        Height = 17
        Caption = '  A'
        TabOrder = 0
        OnClick = rbtnTopoAClick
      end
      object rbtnTopoB: TRadioButton
        Left = 17
        Top = 70
        Width = 113
        Height = 17
        Caption = '  B'
        TabOrder = 1
        OnClick = rbtnTopoBClick
      end
    end
    object GroupBox5: TGroupBox
      Left = 15
      Top = 8
      Width = 185
      Height = 105
      Caption = 'Result'
      TabOrder = 5
      Visible = False
      object Memo2: TMemo
        Left = 8
        Top = 16
        Width = 168
        Height = 82
        Lines.Strings = (
          'Memo2')
        TabOrder = 0
      end
    end
  end
  object interface1Panel: TPanel
    Left = 838
    Top = 0
    Width = 593
    Height = 441
    Color = 16757122
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object Chart3: TChart
      Left = 9
      Top = 222
      Width = 289
      Height = 210
      Legend.CheckBoxes = True
      Title.Color = clBlack
      Title.Text.Strings = (
        'Output')
      View3D = False
      Color = clWhite
      TabOrder = 0
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series3: TBarSeries
        HoverElement = []
        SeriesColor = clBlue
        Title = 'Target'
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
      object Series4: TBarSeries
        HoverElement = []
        SeriesColor = clYellow
        Title = 'Recall'
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
      end
    end
    object Chart1: TChart
      Left = 9
      Top = 12
      Width = 289
      Height = 210
      Legend.Visible = False
      Title.Text.Strings = (
        'Input')
      BottomAxis.Axis.Width = 1
      BottomAxis.Grid.Visible = False
      BottomAxis.LabelStyle = talPointValue
      BottomAxis.MinorTicks.Visible = False
      BottomAxis.Ticks.Visible = False
      BottomAxis.TicksInner.Visible = False
      Hover.Visible = False
      LeftAxis.Axis.Width = 1
      LeftAxis.Grid.Visible = False
      LeftAxis.LabelStyle = talMark
      LeftAxis.MinorTicks.Visible = False
      LeftAxis.Ticks.Visible = False
      LeftAxis.TicksInner.Visible = False
      LeftAxis.Title.Visible = False
      View3D = False
      Color = clWhite
      TabOrder = 1
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: TPointSeries
        HoverElement = [heCurrent]
        ColorEachPoint = True
        Marks.Frame.Visible = False
        Marks.Transparent = True
        ClickableLine = False
        Pointer.HorizSize = 10
        Pointer.InflateMargins = True
        Pointer.Style = psCircle
        Pointer.VertSize = 10
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
    object Chart2: TChart
      Left = 298
      Top = 12
      Width = 289
      Height = 210
      Legend.Visible = False
      Title.Color = clBlack
      Title.Text.Strings = (
        'Error')
      Hover.Visible = False
      View3D = False
      Color = clWhite
      TabOrder = 2
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series2: TLineSeries
        HoverElement = [heCurrent]
        SeriesColor = clRed
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
    object Chart4: TChart
      Left = 298
      Top = 222
      Width = 289
      Height = 210
      Legend.CheckBoxes = True
      Title.Color = clBlack
      Title.Text.Strings = (
        'th')
      View3D = False
      Color = clWhite
      TabOrder = 3
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series5: TLineSeries
        HoverElement = [heCurrent]
        SeriesColor = 33023
        Title = 'Th1'
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object Series6: TLineSeries
        HoverElement = [heCurrent]
        SeriesColor = clAqua
        Title = 'Th2'
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
      object Series7: TLineSeries
        HoverElement = [heCurrent]
        SeriesColor = clYellow
        Title = 'Th3'
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
      end
    end
  end
  object interface2Panel: TPanel
    Left = 838
    Top = 0
    Width = 593
    Height = 441
    Color = 16757122
    DoubleBuffered = False
    ParentBackground = False
    ParentDoubleBuffered = False
    TabOrder = 4
    Visible = False
    object PageControl1: TPageControl
      Left = 2
      Top = 0
      Width = 594
      Height = 441
      ActivePage = TabSheet3
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Gait Phase I'
        object Chart5: TChart
          Left = 0
          Top = 218
          Width = 583
          Height = 196
          Legend.CheckBoxes = True
          Title.Text.Strings = (
            'TChart')
          Title.Visible = False
          View3D = False
          Color = clWhite
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series8: TLineSeries
            HoverElement = [heCurrent]
            Title = 'Heel'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series9: TLineSeries
            HoverElement = [heCurrent]
            Title = 'Toe'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series10: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clBlack
            Title = 'Target'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series15: TBarSeries
            HoverElement = []
            SeriesColor = clBlue
            Title = 'Recall'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
        end
        object Chart6: TChart
          Left = 0
          Top = 0
          Width = 260
          Height = 212
          Legend.Visible = False
          Title.Text.Strings = (
            'Error')
          View3D = False
          Color = clWhite
          TabOrder = 1
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series11: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clRed
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
        object Chart7: TChart
          Left = 266
          Top = 0
          Width = 320
          Height = 212
          Legend.CheckBoxes = True
          Title.Text.Strings = (
            'Th')
          View3D = False
          Color = clWhite
          TabOrder = 2
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series12: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clPurple
            Title = 'Th1'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series13: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = 16744703
            Title = 'Th2'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series14: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = 10485760
            Title = 'Th3'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Gait Phase II'
        ImageIndex = 1
        object Chart10: TChart
          Left = 0
          Top = 0
          Width = 583
          Height = 281
          Legend.CheckBoxes = True
          Title.Text.Strings = (
            'Training Data A')
          View3D = False
          Color = clWhite
          TabOrder = 0
          Visible = False
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series17: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = 33023
            Title = 'Heel'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series18: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = 8388863
            Title = 'Toe'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series19: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clBlack
            Title = 'Target'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series20: TBarSeries
            HoverElement = []
            SeriesColor = clLime
            Title = 'Recall'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
        end
        object Chart8: TChart
          Left = 0
          Top = 0
          Width = 583
          Height = 281
          Legend.CheckBoxes = True
          Title.Text.Strings = (
            'Training Data B')
          View3D = False
          Color = clWhite
          TabOrder = 1
          Visible = False
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series21: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = 33023
            Title = 'Heel'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series22: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clGreen
            Title = 'Toe'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series23: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = 8388863
            Title = 'SW'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series24: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = 16744703
            Title = 'IC'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series25: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clAqua
            Title = 'FF'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series26: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clBlue
            Title = 'Mst'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series27: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clLime
            Title = 'HO'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series28: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clBlack
            Title = 'TO'
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series29: TBarSeries
            HoverElement = []
            SeriesColor = clYellow
            Title = 'Recall SW'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series30: TBarSeries
            HoverElement = []
            SeriesColor = clLime
            Title = 'Recall IC'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series31: TBarSeries
            HoverElement = []
            SeriesColor = 33023
            Title = 'Recall FF'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series32: TBarSeries
            HoverElement = []
            SeriesColor = 16777088
            Title = 'Recall Mst'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series33: TBarSeries
            HoverElement = []
            SeriesColor = 16744703
            Title = 'Recall HO'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
          object Series34: TBarSeries
            HoverElement = []
            SeriesColor = 16744448
            Title = 'Recall TO'
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Bar'
            YValues.Order = loNone
          end
        end
        object Chart9: TChart
          Left = 0
          Top = 272
          Width = 583
          Height = 140
          Legend.Visible = False
          Title.Text.Strings = (
            'Error')
          View3D = False
          Color = clWhite
          TabOrder = 2
          DefaultCanvas = 'TGDIPlusCanvas'
          ColorPaletteIndex = 13
          object Series16: TLineSeries
            HoverElement = [heCurrent]
            SeriesColor = clRed
            Brush.BackColor = clDefault
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Fuzzy System'
        ImageIndex = 2
        object Chart16: TChart
          Left = 0
          Top = 3
          Width = 582
          Height = 200
          Foot.Font.Color = clBlack
          LeftWall.Color = clWhite
          Legend.CheckBoxes = True
          RightWall.Color = clWhite
          SubFoot.Font.Color = clBlack
          SubTitle.Font.Color = clBlack
          Title.Font.Color = clBlack
          Title.Text.Strings = (
            'Heel')
          BottomAxis.MinorTicks.Color = clBlack
          BottomAxis.Ticks.Color = clBlack
          BottomAxis.TicksInner.Color = clBlack
          DepthAxis.Grid.Color = clBlack
          DepthAxis.MinorTicks.Color = clBlack
          DepthAxis.Ticks.Color = clBlack
          DepthAxis.TicksInner.Color = clBlack
          DepthTopAxis.Grid.Color = clBlack
          DepthTopAxis.MinorTicks.Color = clBlack
          DepthTopAxis.Ticks.Color = clBlack
          DepthTopAxis.TicksInner.Color = clBlack
          Emboss.Color = clWhite
          LeftAxis.MinorTicks.Color = clBlack
          LeftAxis.Ticks.Color = clBlack
          LeftAxis.TicksInner.Color = clBlack
          RightAxis.Grid.Color = clBlack
          RightAxis.MinorTicks.Color = clBlack
          RightAxis.Ticks.Color = clBlack
          RightAxis.TicksInner.Color = clBlack
          TopAxis.Grid.Color = clBlack
          TopAxis.MinorTicks.Color = clBlack
          TopAxis.Ticks.Color = clBlack
          TopAxis.TicksInner.Color = clBlack
          View3D = False
          Color = clWhite
          TabOrder = 0
          DefaultCanvas = 'TGDIPlusCanvas'
          object Series38: TLineSeries
            HoverElement = [heCurrent]
            Legend.Text = 'Low'
            LegendTitle = 'Low'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series39: TLineSeries
            HoverElement = [heCurrent]
            Legend.Text = 'Medium'
            LegendTitle = 'Medium'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series40: TLineSeries
            HoverElement = [heCurrent]
            Legend.Text = 'High'
            LegendTitle = 'High'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
        object Chart11: TChart
          Left = 0
          Top = 209
          Width = 582
          Height = 200
          Foot.Font.Color = clBlack
          LeftWall.Color = clWhite
          Legend.CheckBoxes = True
          RightWall.Color = clWhite
          SubFoot.Font.Color = clBlack
          SubTitle.Font.Color = clBlack
          Title.Font.Color = clBlack
          Title.Text.Strings = (
            'Toe')
          BottomAxis.MinorTicks.Color = clBlack
          BottomAxis.Ticks.Color = clBlack
          BottomAxis.TicksInner.Color = clBlack
          DepthAxis.Grid.Color = clBlack
          DepthAxis.MinorTicks.Color = clBlack
          DepthAxis.Ticks.Color = clBlack
          DepthAxis.TicksInner.Color = clBlack
          DepthTopAxis.Grid.Color = clBlack
          DepthTopAxis.MinorTicks.Color = clBlack
          DepthTopAxis.Ticks.Color = clBlack
          DepthTopAxis.TicksInner.Color = clBlack
          LeftAxis.MinorTicks.Color = clBlack
          LeftAxis.Ticks.Color = clBlack
          LeftAxis.TicksInner.Color = clBlack
          RightAxis.Grid.Color = clBlack
          RightAxis.MinorTicks.Color = clBlack
          RightAxis.Ticks.Color = clBlack
          RightAxis.TicksInner.Color = clBlack
          TopAxis.Grid.Color = clBlack
          TopAxis.MinorTicks.Color = clBlack
          TopAxis.Ticks.Color = clBlack
          TopAxis.TicksInner.Color = clBlack
          View3D = False
          Color = clWhite
          TabOrder = 1
          DefaultCanvas = 'TGDIPlusCanvas'
          object Series35: TLineSeries
            HoverElement = [heCurrent]
            Legend.Text = 'Low'
            LegendTitle = 'Low'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series36: TLineSeries
            HoverElement = [heCurrent]
            Legend.Text = 'Medium'
            LegendTitle = 'Medium'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
          object Series37: TLineSeries
            HoverElement = [heCurrent]
            Legend.Text = 'High'
            LegendTitle = 'High'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
          end
        end
      end
    end
  end
  object cmd2Panel: TPanel
    Left = 184
    Top = 0
    Width = 137
    Height = 441
    Color = 12608789
    ParentBackground = False
    TabOrder = 5
    Visible = False
    object btnInit2: TButton
      Left = 32
      Top = 81
      Width = 75
      Height = 25
      Caption = 'Initialization'
      TabOrder = 0
      OnClick = btnInit2Click
    end
    object btnAnnTopoA: TButton
      Left = 32
      Top = 159
      Width = 75
      Height = 25
      Caption = 'ANN Training'
      TabOrder = 1
      OnClick = btnAnnTopoAClick
    end
    object btnRecallTopoA: TButton
      Left = 32
      Top = 243
      Width = 75
      Height = 25
      Caption = 'Recall'
      TabOrder = 2
      OnClick = btnRecallTopoAClick
    end
    object btnClear2: TButton
      Left = 32
      Top = 333
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 3
      OnClick = btnClear3Click
    end
    object btnAnnTopoB: TButton
      Left = 32
      Top = 159
      Width = 75
      Height = 25
      Caption = 'ANN Training'
      TabOrder = 4
      OnClick = btnAnnTopoBClick
    end
    object btnRecallTopoB: TButton
      Left = 32
      Top = 243
      Width = 75
      Height = 25
      Caption = 'Recall'
      TabOrder = 5
      OnClick = btnRecallTopoBClick
    end
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    FileName = 'recall**.txt'
    Left = 368
    Top = 248
  end
end
