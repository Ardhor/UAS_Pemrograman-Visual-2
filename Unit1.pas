unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtnik: TEdit;
    edtnama: TEdit;
    edttelepon: TEdit;
    edtemail: TEdit;
    edtalamat: TEdit;
    cbbmember: TComboBox;
    lbl7: TLabel;
    lbldiskon: TLabel;
    dbgrd1: TDBGrid;
    btnbaru: TButton;
    btnsimpan: TButton;
    btnedit: TButton;
    btnhapus: TButton;
    btnbatal: TButton;
    lbl9: TLabel;
    edtcari: TEdit;
    btnlaporan: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnbaruClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnsimpanClick(Sender: TObject);
    procedure cbbmemberChange(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure edtcariChange(Sender: TObject);
    procedure btnlaporanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;

implementation

uses
  Unit2;
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  btnsimpan.Enabled:=False;
  btnedit.Enabled:=False;
  btnhapus.Enabled:=False;
  btnbatal.Enabled:=False;
  edtnama.Enabled := False;
  edtnik.Enabled := False;
  edttelepon.Enabled := False;
  edtemail.Enabled := False;
  edtalamat.Enabled := False;
  cbbmember.Enabled := False;
end;

procedure TForm1.btnbaruClick(Sender: TObject);
begin
  btnedit.Enabled:= False;
  btnhapus.Enabled := False;
  btnbaru.Enabled := False;

  btnsimpan.Enabled := True;
  btnbatal.Enabled := True;
  edtnama.Enabled := True;
  edtnik.Enabled := True;
  edttelepon.Enabled := True;
  edtemail.Enabled := True;
  edtalamat.Enabled := True;
  cbbmember.Enabled := True;

end;

procedure TForm1.btnbatalClick(Sender: TObject);
begin
  edtnik.Text := '';
  edtnama.Text := '';
  edttelepon.Text := '';
  edtemail.Text := '';
  edtalamat.Text := '';
  cbbmember.Text := '-- Pilih --';
  lbldiskon.Caption := 'Terisi Otomatis';

  btnedit.Enabled:= False;
  btnhapus.Enabled := False;
  btnsimpan.Enabled := False;
  btnbatal.Enabled := False;
  edtnama.Enabled := False;
  edtnik.Enabled := False;
  edttelepon.Enabled := False;
  edtemail.Enabled := False;
  edtalamat.Enabled := False;
  cbbmember.Enabled := False;

  btnbaru.Enabled := True;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
btnbaru.Enabled := False;
btnsimpan.Enabled := False;

btnhapus.Enabled := True;
btnedit.Enabled := True;
btnbatal.Enabled := True;
edtnama.Enabled := True;
edtnik.Enabled := True;
edttelepon.Enabled := True;
edtemail.Enabled := True;
edtalamat.Enabled := True;
cbbmember.Enabled := True;

a := DataModuleKoneksi.ZQuery1.Fields[0].AsString;
edtnik.Text := DataModuleKoneksi.ZQuery1.Fields[1].AsString;
edtnama.Text := DataModuleKoneksi.ZQuery1.Fields[2].AsString;
edttelepon.Text := DataModuleKoneksi.ZQuery1.Fields[3].AsString;
edtemail.Text := DataModuleKoneksi.ZQuery1.Fields[4].AsString;
edtalamat.Text := DataModuleKoneksi.ZQuery1.Fields[5].AsString;
cbbmember.Text := DataModuleKoneksi.ZQuery1.Fields[6].AsString;
if cbbmember.Text = 'Ya' then
begin
  lbldiskon.Caption := '10%';
end else
begin
  lbldiskon.Caption := '5%';
end;
end;

procedure TForm1.btnsimpanClick(Sender: TObject);
begin
if edtnik.Text = '' then
begin
  ShowMessage('NIK belum diisi');
end else
if edtnama.Text = '' then
begin
  ShowMessage('NAMA belum diisi');
end else
if edttelepon.Text = '' then
begin
  ShowMessage('TELEPON belum diisi');
end else
if edtemail.Text = '' then
begin
  ShowMessage('EMAIL belum diisi');
end else
if edtalamat.Text = '' then
begin
  ShowMessage('ALAMAT belum diisi');
end else
if cbbmember.Text = '-- Pilih --' then
begin
  ShowMessage('MEMBER belum ditentukan');
end else
  begin
  DataModuleKoneksi.ZQuery1.SQL.Clear;
  DataModuleKoneksi.ZQuery1.SQL.Add('insert into kustomer values (null, "'+edtnik.Text+'","'+edtnama.Text+'", "'+edttelepon.Text+'", "'+edtemail.Text+'", "'+edtalamat.Text+'", "'+cbbmember.Text+'")');
  DataModuleKoneksi.ZQuery1.ExecSQL;

  DataModuleKoneksi.ZQuery1.SQL.Clear;
  DataModuleKoneksi.ZQuery1.SQL.Add('select * from kustomer');
  DataModuleKoneksi.ZQuery1.Open;

  edtnik.Text := '';
  edtnama.Text := '';
  edttelepon.Text := '';
  edtemail.Text := '';
  edtalamat.Text := '';
  cbbmember.Text := '-- Pilih --';
  lbldiskon.Caption := 'Terisi Otomatis';

  ShowMessage('Data kustomer berhasil disimpan');
  end;
end;

procedure TForm1.cbbmemberChange(Sender: TObject);
begin
  if (cbbmember.Text = 'Ya') then
    begin
      lbldiskon.Caption := '10%';
    end else
    begin
      lbldiskon.Caption := '5%';
    end;

end;

procedure TForm1.btneditClick(Sender: TObject);
begin
if edtnik.Text = '' then
begin
  ShowMessage('NIK belum diisi');
end else
if edtnama.Text = '' then
begin
  ShowMessage('NAMA belum diisi');
end else
if edttelepon.Text = '' then
begin
  ShowMessage('TELEPON belum diisi');
end else
if edtemail.Text = '' then
begin
  ShowMessage('EMAIL belum diisi');
end else
if edtalamat.Text = '' then
begin
  ShowMessage('ALAMAT belum diisi');
end else
if cbbmember.Text = '-- Pilih --' then
begin
  ShowMessage('MEMBER belum ditentukan');
end else
begin
  DataModuleKoneksi.ZQuery1.SQL.Clear;
  DataModuleKoneksi.ZQuery1.SQL.Add('update kustomer set nik="'+edtnik.Text+'", nama="'+edtnama.Text+'", telepon="'+edttelepon.Text+'", email="'+edtemail.Text+'", alamat="'+edtalamat.Text+'", member="'+cbbmember.Text+'" where id="'+a+'"');
  DataModuleKoneksi.ZQuery1.ExecSQL;

  DataModuleKoneksi.ZQuery1.SQL.Clear;
  DataModuleKoneksi.ZQuery1.SQL.Add('select * from kustomer');
  DataModuleKoneksi.ZQuery1.Open;

  edtnik.Text := '';
  edtnama.Text := '';
  edttelepon.Text := '';
  edtemail.Text := '';
  edtalamat.Text := '';
  cbbmember.Text := '-- Pilih --';
  lbldiskon.Caption := 'Terisi Otomatis';
  ShowMessage('Data kustomer berhasil diedit');
end;
end;

procedure TForm1.btnhapusClick(Sender: TObject);
begin
  DataModuleKoneksi.ZQuery1.SQL.Clear;
  DataModuleKoneksi.ZQuery1.SQL.Add('delete from kustomer where id="'+a+'"');
  DataModuleKoneksi.ZQuery1.ExecSQL;

  DataModuleKoneksi.ZQuery1.SQL.Clear;
  DataModuleKoneksi.ZQuery1.SQL.Add('select * from kustomer');
  DataModuleKoneksi.ZQuery1.Open;

  edtnik.Text := '';
  edtnama.Text := '';
  edttelepon.Text := '';
  edtemail.Text := '';
  edtalamat.Text := '';
  cbbmember.Text := '-- Pilih --';
  lbldiskon.Caption := 'Terisi Otomatis';
  ShowMessage('Data kustomer berhasil dihapus');
end;

procedure TForm1.edtcariChange(Sender: TObject);
begin
  DataModuleKoneksi.ZQuery1.SQL.Clear;
  DataModuleKoneksi.ZQuery1.SQL.Add('select * from kustomer where nama like"%'+edtcari.Text+'%"');
  DataModuleKoneksi.ZQuery1.Open;
end;

procedure TForm1.btnlaporanClick(Sender: TObject);
begin
DataModuleKoneksi.frreport1.ShowReport();
end;

end.
