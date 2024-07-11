unit Unit2;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, frxClass, frxDBSet;

type
  TDataModuleKoneksi = class(TDataModule)
    con1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    frreport1: TfrxReport;
    frdbdatasetlaporan: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleKoneksi: TDataModuleKoneksi;

implementation

{$R *.dfm}

end.
