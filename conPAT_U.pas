//Stephen Jacobson
unit conPAT_U;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmPAT = class(TDataModule)
    conPATDB: TADOConnection;
    tblPAT: TADOTable;
    dscPAT: TDataSource;
    dscTextWin: TDataSource;
    tblTextWin: TADOTable;
    tblTextName: TADOTable;
    dscTextName: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPAT: TdmPAT;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
