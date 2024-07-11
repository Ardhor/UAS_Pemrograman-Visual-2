object DataModuleKoneksi: TDataModuleKoneksi
  OldCreateOrder = False
  Left = 163
  Top = 124
  Height = 182
  Width = 317
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\USER\Documents\Pelajaran Sekolah\KULIAH\Semester 4\Pemr' +
      'ograman Visual 2\Tugas\UAS\libmysql\libmysql.dll'
    Left = 16
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 56
    Top = 8
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 96
    Top = 8
  end
  object frreport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45484.868113530090000000
    ReportOptions.LastChange = 45484.868113530090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 8
    Datasets = <
      item
        DataSet = frdbdatasetlaporan
        DataSetName = 'frdbdatasetlaporan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo15: TfrxMemoView
          Left = 219.212740000000000000
          Top = 26.456710000000000000
          Width = 306.141930000000000000
          Height = 30.236240000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA KUSTOMER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 740.787880000000000000
        object Memo8: TfrxMemoView
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Width = 86.929190000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK'
            '')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 124.724490000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 264.567100000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TELEPON')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 377.953000000000000000
          Width = 147.401670000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'EMAIL')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 525.354670000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 676.535870000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'MEMBER')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 207.874150000000000000
        Width = 740.787880000000000000
        DataSet = frdbdatasetlaporan
        DataSetName = 'frdbdatasetlaporan'
        RowCount = 0
        object Memo1: TfrxMemoView
          Width = 37.795300000000000000
          Height = 52.913420000000000000
          DataField = 'id'
          DataSet = frdbdatasetlaporan
          DataSetName = 'frdbdatasetlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frdbdatasetlaporan."id"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Width = 86.929190000000000000
          Height = 52.913420000000000000
          DataField = 'nik'
          DataSet = frdbdatasetlaporan
          DataSetName = 'frdbdatasetlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frdbdatasetlaporan."nik"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 124.724490000000000000
          Width = 139.842610000000000000
          Height = 52.913420000000000000
          DataField = 'nama'
          DataSet = frdbdatasetlaporan
          DataSetName = 'frdbdatasetlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frdbdatasetlaporan."nama"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Width = 113.385900000000000000
          Height = 52.913420000000000000
          DataField = 'telepon'
          DataSet = frdbdatasetlaporan
          DataSetName = 'frdbdatasetlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frdbdatasetlaporan."telepon"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 377.953000000000000000
          Width = 147.401670000000000000
          Height = 52.913420000000000000
          DataField = 'email'
          DataSet = frdbdatasetlaporan
          DataSetName = 'frdbdatasetlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frdbdatasetlaporan."email"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 525.354670000000000000
          Width = 151.181200000000000000
          Height = 52.913420000000000000
          DataField = 'alamat'
          DataSet = frdbdatasetlaporan
          DataSetName = 'frdbdatasetlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frdbdatasetlaporan."alamat"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 676.535870000000000000
          Width = 64.252010000000000000
          Height = 52.913420000000000000
          DataField = 'member'
          DataSet = frdbdatasetlaporan
          DataSetName = 'frdbdatasetlaporan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frdbdatasetlaporan."member"]')
          ParentFont = False
        end
      end
    end
  end
  object frdbdatasetlaporan: TfrxDBDataset
    UserName = 'frdbdatasetlaporan'
    CloseDataSource = False
    DataSource = ds1
    Left = 168
    Top = 8
  end
end
