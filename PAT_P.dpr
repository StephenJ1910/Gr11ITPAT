program PAT_P;

uses
  Vcl.Forms,
  PAT_U in 'PAT_U.pas' {frmPAT},
  conPAT_U in 'conPAT_U.pas' {dmPAT: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPAT, frmPAT);
  Application.CreateForm(TdmPAT, dmPAT);
  Application.Run;
end.
