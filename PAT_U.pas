//Stephen Jacobson
unit PAT_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPickers, DateUtils, Data.DB, Vcl.Grids, Vcl.DBGrids, conPAT_U,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TfrmPAT = class(TForm)
    pgcRegister: TPageControl;
    tbsSignUp: TTabSheet;
    lbl8Char: TLabel;
    lblC: TLabel;
    lblE: TLabel;
    lblNa: TLabel;
    lblPa: TLabel;
    lblSignUpMain: TLabel;
    lblSur: TLabel;
    edtSur: TEdit;
    chxConfirm: TCheckBox;
    edtCf: TEdit;
    edtEmail1: TEdit;
    edtName: TEdit;
    edtPass: TEdit;
    btnConfirm: TButton;
    lstEmail: TListBox;
    lstPassword: TListBox;
    tbsLogin: TTabSheet;
    lblEmail: TLabel;
    lblLogin: TLabel;
    lblPassword: TLabel;
    lblSignUp: TLabel;
    lblMo: TLabel;
    edtEmail: TEdit;
    edtPassword: TEdit;
    edtLogin: TButton;
    pnlInfo: TPanel;
    lblInfo: TLabel;
    lstREmail: TListBox;
    lstRPassword: TListBox;
    tbsSelect: TTabSheet;
    tbs4Text: TTabSheet;
    lblB1: TLabel;
    lblB2: TLabel;
    lblWinner: TLabel;
    lblWinHead: TLabel;
    edtTeam1: TEdit;
    edtTeam2: TEdit;
    edtTeam3: TEdit;
    edtTeam4: TEdit;
    BtnConTeam: TButton;
    edt2Team1: TEdit;
    edt2Team2: TEdit;
    edt1Team1: TEdit;
    btnConScore1: TButton;
    btnConScore2: TButton;
    edt1Team2: TEdit;
    edt1Team3: TEdit;
    edt1Team4: TEdit;
    tbsDBTourn: TTabSheet;
    lblTeam1: TLabel;
    lblTeam2: TLabel;
    lblTeam3: TLabel;
    lblTeam4: TLabel;
    lblTeam5: TLabel;
    lblTeam8: TLabel;
    lblB4Win: TLabel;
    lblB3Win: TLabel;
    lblB2Win: TLabel;
    lblB1Win: TLabel;
    lblSemi2: TLabel;
    lblSemi1: TLabel;
    lblWinnerDB: TLabel;
    lblSc1: TLabel;
    lblSc2: TLabel;
    lblSc3: TLabel;
    lblSc4: TLabel;
    lblSc5: TLabel;
    lblSc6: TLabel;
    lblSc7: TLabel;
    lblSc8: TLabel;
    lblSSc1: TLabel;
    lblQf2: TLabel;
    lblSSc2: TLabel;
    lblQf1: TLabel;
    lblQf3: TLabel;
    lblQf4: TLabel;
    lblTeam6: TLabel;
    lblTeam7: TLabel;
    btnLoadDB: TButton;
    tbsCodeInfo: TTabSheet;
    dbgDBTourn: TDBGrid;
    tbsTextLoad: TTabSheet;
    Label1: TLabel;
    btn4Team: TButton;
    btn8Team: TButton;
    tbsTextInfo: TTabSheet;
    dbgTextWin: TDBGrid;
    dbgTextName: TDBGrid;
    lblTTeam1: TLabel;
    lblTTeam2: TLabel;
    lblTTeam3: TLabel;
    lblTTeam4: TLabel;
    lblTScore4: TLabel;
    lblTScore3: TLabel;
    lblTScore2: TLabel;
    lblTScore1: TLabel;
    lblT1Team1: TLabel;
    lblT1Team2: TLabel;
    lblT1Score2: TLabel;
    lblT1Score1: TLabel;
    lblTWin: TLabel;
    Label15: TLabel;
    lstTText: TListBox;
    btnTextLoad: TButton;
    lblTHead: TLabel;
    btnToSelect: TButton;
    btnToSelect2: TButton;
    btnToSelect3: TButton;
    Label2: TLabel;
    img8Team: TImage;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    procedure btnConfirmClick(Sender: TObject);
    procedure edtLoginClick(Sender: TObject);
    procedure lblSignUpClick(Sender: TObject);
    procedure btnLoadDBClick(Sender: TObject);
    procedure lblTeam1Click(Sender: TObject);
    procedure FillTournament;
    procedure ChangeName;
    procedure ChangeScore1;
    procedure ChangeScore2;
    procedure ChangeScore3;
    procedure ChangeScore4;
    procedure ChangeScore5;
    procedure ChangeScoreSemi1;
    procedure ChangeScoreSemi2;
    procedure ClearTextTourn;
    procedure FormCreate(Sender: TObject);
    procedure lblTeam2Click(Sender: TObject);
    procedure lblTeam3Click(Sender: TObject);
    procedure lblTeam4Click(Sender: TObject);
    procedure lblTeam5Click(Sender: TObject);
    procedure lblTeam6Click(Sender: TObject);
    procedure lblTeam8Click(Sender: TObject);
    procedure lblTeam7Click(Sender: TObject);
    procedure lblSc1Click(Sender: TObject);
    procedure lblSc4Click(Sender: TObject);
    procedure lblSc2Click(Sender: TObject);
    procedure lblSc3Click(Sender: TObject);
    procedure lblQf1Click(Sender: TObject);
    procedure lblQf2Click(Sender: TObject);
    procedure lblQf3Click(Sender: TObject);
    procedure lblQf4Click(Sender: TObject);
    procedure lblSc5Click(Sender: TObject);
    procedure lblSc6Click(Sender: TObject);
    procedure lblSc7Click(Sender: TObject);
    procedure lblSc8Click(Sender: TObject);
    procedure lblSSc1Click(Sender: TObject);
    procedure lblSSc2Click(Sender: TObject);
    procedure BtnConTeamClick(Sender: TObject);
    procedure btnConScore1Click(Sender: TObject);
    procedure btnConScore2Click(Sender: TObject);
    procedure btn4TeamClick(Sender: TObject);
    procedure btn8TeamClick(Sender: TObject);
    procedure btnTextLoadClick(Sender: TObject);
    procedure lstTTextClick(Sender: TObject);
    procedure btnToSelectClick(Sender: TObject);
    procedure btnToSelect2Click(Sender: TObject);
    procedure btnToSelect3Click(Sender: TObject);
    procedure tbs4TextEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPAT: TfrmPAT;
  arrTeams1: array[1..8] of string;
  arrTeams2: array[1..4] of string;
  arrTeams3: array[1..2] of string;
  arrScores1: array[1..8] of Integer;
  arrScores2: array[1..4] of Integer;
  arrScores3: array[1..2] of Integer;
  arrTeamText1:array[1..4] of string;
  arrTeamTextScore1:array[1..4] of integer;
  arrTeamTextScore2:array[1..2] of integer;
  bClicked, bInt:boolean;
  iNext:integer;
  tTourn:TextFile;
  sTourn:string;


implementation

{$R *.dfm}

procedure TfrmPAT.btn4TeamClick(Sender: TObject);      //takes to 4 person text file database
var cHash:char;
I, iPos1:integer;
sOrg1, sSen1, sSen2:string;
bError:boolean;
begin
  bError:=false;          //to use as an error check later
  sTourn:='';
  sTourn:=inputbox('Choose a name for your 4 team tournament','Enter:','');   //name of text file database
  assignFile(tTourn, '4Tournament.txt');
  reset(tTourn);

  repeat
    begin
      readln(tTourn, sOrg1);
      iPos1:=pos('#',sOrg1);
      sSen1:=copy(sOrg1,1,iPos1-1);
      if sSen1=sTourn
      then bError:=true;
    end;
  until eof(tTourn);               //checks if tournament name already exists
  closefile(tTourn);


  for I := 1 to length(sTourn) do
  begin
    cHash:=sTourn[I];
    if (cHash='#')or(cHash='-')
    then bError:=true;           //checks that tournamnet name doesnt contain '#' or '-'
  end;
  if sTourn=''
  then bError:=true;      //null check
  if bError=true          //overall error check
  then showmessage('Please enter a valid tournament name')
  else begin
       ClearTextTourn;
       pgcRegister.activepage:=tbs4Text;
       end;
end;

procedure TfrmPAT.btn8TeamClick(Sender: TObject);
begin
pgcRegister.activepage:=tbsDBTourn;
end;

procedure TfrmPAT.btnConfirmClick(Sender: TObject);
var sName, sSur, sError, sEm, sPass:string;
bGood:boolean;
tEmail, tPass:textfile;
I:integer;
begin
  bGood:=true;
  sError:='The following errors have occurred:'+#13;
  sName:='';
  sSur:='';
  sEm:='';
  if edtName.Text=''                          //next code will create an error message to show at end if needed
  then begin
         bGood:=False;
         sError:=sError+'Please enter a valid name.'+#13;
       end;
  if edtSur.Text=''
  then begin
         bGood:=False;
         sError:=sError+'Please enter a valid surname.'+#13;
       end;
  if (edtEmail1.Text='')or(pos('@',edtEmail1.Text)=0)  //null check and '@' check
  then begin
         bGood:=False;
         sError:=sError+'Please enter a valid email.'+#13;
       end;
  if (edtPass.Text='')or((length(edtPass.text))<>8)          //null check and length
  then begin
         bGood:=false;
         sError:=sError+'Please enter a valid password with only 8 characters.'+#13;
       end;
  if not(edtPass.Text=edtCf.Text)         //check if passwords
  then begin
         bGood:=false;
         sError:=sError+'The passwords do NOT match, please enter the same password to confirm.'+#13;
       end;
  if chxConfirm.Checked=false             //checks if check human box is ticked
  then  begin
         bGood:=false;
         sError:=sError+'Please confirm that you are human.';
       end;
  if bGood=true                        //runs program if no errors
  then begin
         sName:=edtName.Text;
         sSur:=edtSur.Text;
         sEm:=edtEMail1.Text;
         sPass:=edtPass.text;                  //sets variables
         AssignFile(tEmail,'email.txt');
         AssignFile(tPass,'password.txt');
         rewrite(tEmail);
         rewrite(tPass);                      //sets text files values
         writeln(tEmail,edtEmail1.text);
         writeln(tPass,edtPass.text);
         closefile(tEmail);
         closefile(tPass);
         pgcRegister.ActivePage:=tbsLogin;
       end
  else showmessage(sError);        //show error message with relavant errors

end;

procedure TfrmPAT.btnConScore1Click(Sender: TObject);
var I:integer;
bError:boolean;
cInt:char;
begin
  bError:=false;   //check if error has occurred
  if (edt1Team1.Text='')or(edt1Team2.Text='')or(edt1Team3.Text='')or(edt1Team4.Text='')  //null check
  then bError:=true
  else begin
  for I := 1 to length(edt1Team1.Text) do
  begin
    cInt:=edt1Team1.Text[I];
    if not(cInt in ['0'..'9'])
    then bError:=true;                   //integer check
  end;

  for I := 1 to length(edt1Team2.Text) do
  begin
    cInt:=edt1Team2.Text[I];
    if not(cInt in ['0'..'9'])
    then bError:=true;
  end;

  for I := 1 to length(edt1Team3.Text) do
  begin
    cInt:=edt1Team3.Text[I];
    if not(cInt in ['0'..'9'])
    then bError:=true;
  end;

  for I := 1 to length(edt1Team4.Text) do
  begin
    cInt:=edt1Team4.Text[I];
    if not(cInt in ['0'..'9'])
    then bError:=true;
  end;
  end;

  if bError=true
  then Showmessage('Please enter valid score')
  else begin
       arrTeamTextScore1[1]:=StrToint(edt1Team1.Text);
       edt1Team1.Enabled:=false;
       arrTeamTextScore1[2]:=StrToint(edt1Team2.Text);
       edt1Team2.Enabled:=false;
       arrTeamTextScore1[3]:=StrToint(edt1Team3.Text);
       edt1Team3.Enabled:=false;
       arrTeamTextScore1[4]:=StrToint(edt1Team4.Text);
       edt1Team4.Enabled:=false;                          //sets value of score first array
       btnConScore1.Visible:=false;
       btnConScore1.Enabled:=false;
       btnConScore2.Visible:=true;
       lblB1.visible:=true;
       lblB2.visible:=true;
       edt2Team1.Visible:=true;
       edt2Team2.Visible:=true;        //makes all relavant components visible or enabled
       edt2Team1.enabled:=true;
       edt2Team2.enabled:=true;
       Showmessage('Scores have be confirmed');
       end;
  if bError=false                    //check if errors have occurred
  then begin
         AssignFile(tTourn,'4Tournament.txt');
         append(tTourn);
         write(tTourn,sTourn+'#');      //adds tournament name to beginning of line
         Closefile(tTourn);
         for I := 1 to 4 do
           begin
             append(tTourn);
             write(tTourn,arrTeamText1[I]+'#'+IntToStr(arrTeamTextScore1[I])+'#'); //adds values and team names and '#' to split data
             Closefile(tTourn);
             if (I=1) 
             then begin
                    if arrTeamTextScore1[I]>arrTeamTextScore1[I+1] 
                    then lblB1.Caption:=arrTeamText1[I]
                    else lblB1.Caption:=arrTeamText1[I+1];         //to determine a winner with scores
                  end
             else if (I=3) 
             then begin
                    if arrTeamTextScore1[I]>arrTeamTextScore1[I+1] 
                    then lblB2.Caption:=arrTeamText1[I]
                    else lblB2.Caption:=arrTeamText1[I+1];
                  end
           end;

       end;
end;

procedure TfrmPAT.btnConScore2Click(Sender: TObject);
var I, iNum1, iNum2:integer;
bError:boolean;
cInt:char;
begin
  bError:=false;
  iNum1:=0;
  iNum2:=0;
  if (edt2Team1.Text='')or(edt2Team2.Text='')
  then bError:=true
  else begin
  for I := 1 to length(edt2Team1.Text) do
  begin
    cInt:=edt2Team1.Text[I];
    if not(cInt in ['0'..'9'])
    then bError:=true;
  end;

  for I := 1 to length(edt2Team2.Text) do
  begin
    cInt:=edt2Team2.Text[I];
    if not(cInt in ['0'..'9'])
    then bError:=true;
  end;
  end;


  if bError=true
  then Showmessage('Please enter valid score')
  else begin
       arrTeamTextScore2[1]:=StrToint(edt2Team1.Text);
       edt2Team1.Enabled:=false;
       arrTeamTextScore2[2]:=StrToint(edt2Team2.Text);
       edt2Team2.Enabled:=false;
       btnConScore2.Visible:=false;
       lblWinHead.Visible:=true;
       lblWinner.Visible:=true;

       btnToSelect.Enabled:=true;
       btnTextLoad.Enabled:=true;
       Showmessage('Scores have be confirmed');
       end;
  if bError=false
  then begin
         AssignFile(tTourn,'4Tournament.txt');

             
             repeat
               inc(iNum1);
             until arrTeamText1[iNum1]=(lblB1.Caption); 

             repeat
               inc(iNum2);
             until arrTeamText1[iNum2]=(lblB2.Caption);

             append(tTourn);
             write(tTourn,arrTeamText1[iNum1]+'#'+IntToStr(arrTeamTextScore2[1]));
             writeln(tTourn,'#'+arrTeamText1[iNum2]+'#'+IntToStr(arrTeamTextScore2[2])+'#');
             Closefile(tTourn);
               
         
                    if arrTeamTextScore2[1]>arrTeamTextScore2[2] 
                    then begin
                         lblWinner.Caption:=arrTeamText1[iNum1];
                         dmPat.tblTextWin.Append;
                         dmPat.tblTextWin['Winners']:=arrTeamText1[iNum1];
                         dmPat.tblTextWin.Post;
                         end
                    else begin
                         lblWinner.Caption:=arrTeamText1[iNum2];
                         dmPat.tblTextWin.Append;
                         dmPat.tblTextWin['Winners']:=arrTeamText1[iNum2];
                         dmPat.tblTextWin.Post;
                         end;

         dmPat.tblTextName.Append;
         dmPat.tblTextName['Tournament_Name']:=sTourn;
         dmPat.tblTextName.Post;

       end;
end;

procedure TfrmPAT.BtnConTeamClick(Sender: TObject);
var sHash:string;
I, iErr:integer;
bError:boolean;
begin
  bError:=false;
  if (edtTeam1.Text='')or(edtTeam2.Text='')or(edtTeam3.Text='')or(edtTeam4.Text='')
  then bError:=true
  else begin
  for I := 1 to length(edtTeam1.Text) do
  begin
    sHash:=edtTeam1.Text[I];
    if (sHash='#')
    then bError:=true;
  end;

  for I := 1 to length(edtTeam2.Text) do
  begin
    sHash:=edtTeam2.Text[I];
    if (sHash='#')
    then bError:=true;
  end;

  for I := 1 to length(edtTeam3.Text) do
  begin
    sHash:=edtTeam3.Text[I];
    if (sHash='#')
    then bError:=true;
  end;

  for I := 1 to length(edtTeam4.Text) do
  begin
    sHash:=edtTeam4.Text[I];
    if (sHash='#')
    then bError:=true;
  end;
  end;
  if bError=true
  then Showmessage('Please enter valid team names which dont contain any hashtags')
  else begin
       arrTeamText1[1]:=edtTeam1.Text;
       edtTeam1.Enabled:=false;
       arrTeamText1[2]:=edtTeam2.Text;
       edtTeam2.Enabled:=false;
       arrTeamText1[3]:=edtTeam3.Text;
       edtTeam3.Enabled:=false;
       arrTeamText1[4]:=edtTeam4.Text;
       edtTeam4.Enabled:=false;
       btnConTeam.Visible:=false;
       btnConTeam.Enabled:=false;
       btnConScore1.Visible:=true;
       edt1Team1.Visible:=true;
       edt1Team2.Visible:=true;
       edt1Team3.Visible:=true;
       edt1Team4.Visible:=true;

       edt1Team1.enabled:=true;
       edt1Team2.enabled:=true;
       edt1Team3.enabled:=true;
       edt1Team4.enabled:=true;
       btnConScore1.Enabled:=true;

       btnToSelect.Enabled:=false;
       btnTextLoad.Enabled:=false;
       Showmessage('Team names have be confirmed');
       end;




end;

procedure TfrmPAT.btnLoadDBClick(Sender: TObject);
begin
FillTournament;
bClicked:=true;
end;

procedure TfrmPAT.btnTextLoadClick(Sender: TObject);
var I:integer;
begin
  lstTText.Clear;
  dmPat.tblTextName.First;
  dmPat.tblTextWin.First;
  if dmPat.tblTextName.RecordCount=0      //null check database
  then Showmessage('There are no text file tournament records, start by making one')
  else begin
  for I := 1 to dmPat.tblTextName.RecordCount do
  begin
  lstTText.Items.Add(dmPat.tblTextName['Tournament_Name']+' - Winner: '+dmPat.tblTextWin['Winners']);  //adds values to listbox to be selected later
  dmPat.tblTextName.Next;
  dmPat.tblTextWin.Next;
  end;
  pgcRegister.ActivePage:=tbsTextLoad;
  end;

end;

procedure TfrmPAT.btnToSelect2Click(Sender: TObject);
begin
pgcRegister.ActivePage:=tbsSelect;
end;

procedure TfrmPAT.btnToSelect3Click(Sender: TObject);
begin
pgcRegister.ActivePage:=tbsSelect;
end;

procedure TfrmPAT.btnToSelectClick(Sender: TObject);
begin
pgcRegister.ActivePage:=tbsSelect;
end;

procedure TfrmPAT.ChangeName;     //to change team name in tournament
var sTeam:string;
I:integer;
begin
  if not(bClicked=true) 
  then Showmessage('Please fill table before trying to change a team name')
  else begin

  sTeam:=inputbox('Enter a new team name','Enter:','');   //new team name
  if (sTeam='')                                     //null check
  then Showmessage('Please enter a team name')
  else begin 
         dmPAT.tblPat.First;
         if iNext<>0 
         then
         for I := 1 to iNext do
         dmPAT.tblPat.Next;
         dmPAT.tblPat.Edit;
         dmPAT.tblPat['Team']:=sTeam;    //changes name
         dmPAT.tblPat.post;
         FillTournament;
       end;
  end;
end;

procedure TfrmPAT.ChangeScore1;      //change score
var sScore:string;
I, iNum:integer;
cInt:char;
begin
  bInt:=true;
  if not(bClicked=true)  //checked if table is filled
  then Showmessage('Please fill table before trying to change a score')
  else begin
  
  sScore:=inputbox('Enter a new score','Enter:','');
  for iNum := 1 to length(sScore) do
  begin
    cInt:=sScore[iNum];
    if cInt in ['0'..'9'] 
    then 
    else bInt:=false;                  //integer check
    
  end;
  if (sScore='')or(bInt=false) 
  then Showmessage('Please enter a valid score between 0 and 1000')
  else begin 
         dmPAT.tblPat.First;
         if iNext<>0 
         then
         for I := 1 to iNext do
         dmPAT.tblPat.Next;
         dmPAT.tblPat.Edit;
         dmPAT.tblPat['B1 Score']:=sScore;        //changes score in database
         dmPAT.tblPat.post;
         FillTournament;                 //refills table
       end;
  end;
end;

procedure TfrmPAT.ChangeScore2;
var sScore:string;
I, iNum:integer;
cInt:char;
begin
  bInt:=true;
  


  if not(bClicked=true) 
  then Showmessage('Please fill table before trying to change a score')
  else begin
  
  sScore:=inputbox('Enter a new score','Enter:','');
  for iNum := 1 to length(sScore) do
  begin
    cInt:=sScore[iNum];
    if cInt in ['0'..'9'] 
    then 
    else bInt:=false;
    
  end;
  if (sScore='')or(bInt=false) 
  then Showmessage('Please enter a valid score between 0 and 1000')
  else begin 
         dmPAT.tblPat.First;
         if dmPAT.tblPat['B2 Score']=-1 
         then repeat
              dmPAT.tblPat.Next;
              until (dmPAT.tblPat['B2 Score']=lblQf1.Caption);
         dmPAT.tblPat.Edit;
         dmPAT.tblPat['B2 Score']:=sScore;
         dmPAT.tblPat.post;
         FillTournament;
       end;
  end;
end;

procedure TfrmPAT.ChangeScore3;
var sScore:string;
I, iNum:integer;
cInt:char;
begin
  bInt:=true;
  


  if not(bClicked=true) 
  then Showmessage('Please fill table before trying to change a score')
  else begin
  
  sScore:=inputbox('Enter a new score','Enter:','');
  for iNum := 1 to length(sScore) do
  begin
    cInt:=sScore[iNum];
    if cInt in ['0'..'9'] 
    then 
    else bInt:=false;
    
  end;
  if (sScore='')or(bInt=false) 
  then Showmessage('Please enter a valid score between 0 and 1000')
  else begin 
         dmPAT.tblPat.First;
         while dmPAT.tblPat['B2 Score']<>-1 do
         dmPAT.tblPat.Next;
         
         
         if dmPAT.tblPat['B2 Score']=-1 
         then repeat
              dmPAT.tblPat.Next;
              until (dmPAT.tblPat['B2 Score']=lblQf2.Caption);
         dmPAT.tblPat.Edit;
         dmPAT.tblPat['B2 Score']:=sScore;
         dmPAT.tblPat.post;
         FillTournament;
       end;
  end;
end;

procedure TfrmPAT.ChangeScore4;
var sScore:string;
I, iNum:integer;
cInt:char;
begin
  bInt:=true;
  


  if not(bClicked=true) 
  then Showmessage('Please fill table before trying to change a score')
  else begin
  
  sScore:=inputbox('Enter a new score','Enter:','');
  for iNum := 1 to length(sScore) do
  begin
    cInt:=sScore[iNum];
    if cInt in ['0'..'9'] 
    then 
    else bInt:=false;
    
  end;
  if (sScore='')or(bInt=false) 
  then Showmessage('Please enter a valid score between 0 and 1000')
  else begin 
         dmPAT.tblPat.First;
         while dmPAT.tblPat['B2 Score']<>-1 do
         dmPAT.tblPat.Next;
         
         
         if dmPAT.tblPat['B2 Score']=-1 
         then repeat
              dmPAT.tblPat.Next;
              until (dmPAT.tblPat['B2 Score']=lblQf3.Caption);
         dmPAT.tblPat.Edit;
         dmPAT.tblPat['B2 Score']:=sScore;
         dmPAT.tblPat.post;
         FillTournament;
       end;
  end;
end;

procedure TfrmPAT.ChangeScore5;
var sScore:string;
I, iNum:integer;
cInt:char;
begin
  bInt:=true;
  


  if not(bClicked=true)
  then Showmessage('Please fill table before trying to change a score')
  else begin
  
  sScore:=inputbox('Enter a new score','Enter:','');
  for iNum := 1 to length(sScore) do
  begin
    cInt:=sScore[iNum];
    if cInt in ['0'..'9'] 
    then 
    else bInt:=false;
    
  end;
  if (sScore='')or(bInt=false) 
  then Showmessage('Please enter a valid score between 0 and 1000')
  else begin 
         dmPAT.tblPat.First;
         while dmPAT.tblPat['B2 Score']<>-1 do
         dmPAT.tblPat.Next;
         
         
         if dmPAT.tblPat['B2 Score']=-1
         then repeat
              dmPAT.tblPat.Next;
              until (dmPAT.tblPat['B2 Score']=lblQf4.Caption);
         dmPAT.tblPat.Edit;
         dmPAT.tblPat['B2 Score']:=sScore;
         dmPAT.tblPat.post;
         FillTournament;
       end;
  end;
end;

procedure TfrmPAT.ChangeScoreSemi1;           //changes scores of teams in semi final rounds
var sScore:string;
I, iNum:integer;
cInt:char;
begin
  bInt:=true;



  if not(bClicked=true)
  then Showmessage('Please fill table before trying to change a score')
  else begin

  sScore:=inputbox('Enter a new score','Enter:','');
  for iNum := 1 to length(sScore) do
  begin
    cInt:=sScore[iNum];
    if cInt in ['0'..'9']
    then
    else bInt:=false;

  end;
  if (sScore='')or(bInt=false)
  then Showmessage('Please enter a valid score between 0 and 1000')
  else begin
         dmPAT.tblPat.First;
         while dmPAT.tblPat['B3 Score']=-1 do
         dmPAT.tblPat.Next;


         if dmPAT.tblPat['B3 Score']=lblSSc1.Caption
         then begin
              dmPAT.tblPat.Edit;
              dmPAT.tblPat['B3 Score']:=sScore;
              dmPAT.tblPat.post;
              end;
         FillTournament;
       end;
  end;
end;

procedure TfrmPAT.ChangeScoreSemi2;
var sScore:string;
I, iNum:integer;
cInt:char;
begin
  bInt:=true;



  if not(bClicked=true)
  then Showmessage('Please fill table before trying to change a score')
  else begin

  sScore:=inputbox('Enter a new score','Enter:','');
  for iNum := 1 to length(sScore) do
  begin
    cInt:=sScore[iNum];
    if cInt in ['0'..'9']
    then
    else bInt:=false;

  end;
  if (sScore='')or(bInt=false)
  then Showmessage('Please enter a valid score between 0 and 1000')
  else begin
         dmPAT.tblPat.First;
         while (dmPAT.tblPat['B3 Score']=-1)or(dmPAT.tblPat['B3 Score']=lblSSc1.Caption) do
         dmPAT.tblPat.Next;


         if dmPAT.tblPat['B3 Score']=lblSSc2.Caption
         then begin
              dmPAT.tblPat.Edit;
              dmPAT.tblPat['B3 Score']:=sScore;
              dmPAT.tblPat.post;
              end;
         FillTournament;
       end;
  end;
end;

procedure TfrmPAT.ClearTextTourn;          //to reset screen for second use
begin
btnConTeam.Visible:=true;
  btnConTeam.Enabled:=true;
  //
  edtTeam1.Enabled:=true;
  edtTeam2.Enabled:=true;
  edtTeam3.Enabled:=true;
  edtTeam4.Enabled:=true;
  //
  edtTeam1.Clear;
  edtTeam2.Clear;
  edtTeam3.Clear;
  edtTeam4.Clear;

  edt1Team1.Visible:=false;
  edt1Team2.Visible:=false;
  edt1Team3.Visible:=false;
  edt1Team4.Visible:=false;
  //
  edt1Team1.clear;
  edt1Team2.clear;
  edt1Team3.clear;
  edt1Team4.clear;

  lblB1.Visible:=false;
  lblB2.Visible:=false;
  //
  lblB1.Caption:='';
  lblB2.Caption:='';
  //
  edt2Team1.visible:=false;
  edt2Team2.visible:=false;
  //
  edt2Team1.clear;
  edt2Team2.clear;
  //
  lblWinner.visible:=false;
  lblWinner.caption:='';
end;

procedure TfrmPAT.edtLoginClick(Sender: TObject);   //if successful takes to next screen
var bGood:boolean;
sE, sP:string;
begin
  bGood:=true;
  sE:='';
  sP:='';
  if fileexists('password.txt')           //check if password fle exists which in turn means email text will exist
  then begin
       lstRPassword.Items.LoadFromFile('password.txt');      //loads files into invisible listboxes so that informantion can be read
       lstREmail.Items.LoadFromFile('email.txt');
       sE:=lstREmail.Items[0];
       sP:=lstRPassword.Items[0];
       if (edtEmail.Text='')or(edtEmail.text<>sE)or(edtPassword.Text='')or(edtPassword.text<>sP) //null check and check to see if they are the same
       then Showmessage('Email or password is incorrect')
       else pgcRegister.ActivePage:=tbsSelect;  //change to next page
       end;


end;

procedure TfrmPAT.FillTournament;    //fills 8 team tournament from database
var iNum, iNum1, iNum2, iNext:integer;
sWinner:string;
begin
  dmPAT.tblPat.First;
  for iNum := 1 to 8 do
    begin
      
      arrTeams1[iNum]:=dmPAT.tblPat['Team'];     //fills team name array with database data
      if iNum<>8
      then dmPAT.tblPat.Next;
    end;
  dmPAT.tblPat.First;
  for iNum := 1 to 8 do
    begin
      
      arrScores1[iNum]:=dmPAT.tblPat['B1 Score'];  //fills first round score array with database data
      if iNum<>8
      then dmPAT.tblPat.Next;
    end;
  iNum1:=1;
  for iNum := 1 to 8 do
    begin
      if iNum mod 2 =0
      then begin
           if arrScores1[iNum]>arrScores1[iNum-1]
           then arrTeams2[iNum1]:=arrTeams1[iNum]
           else arrTeams2[iNum1]:=arrTeams1[iNum-1];   //sets next round teams based on winning scores
           inc(iNum1);
           end;
    end;
  dmPAT.tblPat.First;
  iNum2:=1;
  for iNum := 1 to 8 do
    begin
      if dmPAT.tblPat['B2 Score']=-1     //null check of database score(null set to '-1')
      then
      else begin
           arrScores2[iNum2]:=dmPAT.tblPat['B2 Score'];   //fills second round scores into new array
           inc(iNum2);
           end;
      
      
      if iNum<>8
      then dmPAT.tblPat.Next;     //moves through database so different values can be set
    end;

  iNum1:=1;
  for iNum := 1 to 4 do
    begin
      if iNum mod 2 =0
      then begin
           if arrScores2[iNum]>arrScores2[iNum-1]
           then arrTeams3[iNum1]:=arrTeams2[iNum]
           else arrTeams3[iNum1]:=arrTeams2[iNum-1];  //determines semi finals teams
           inc(iNum1);
           end;
    end;
  dmPAT.tblPat.First;
  iNum2:=1;
  for iNum := 1 to 8 do
    begin
      if dmPAT.tblPat['B3 Score']=-1          //database score null check
      then
      else begin
           arrScores3[iNum2]:=dmPAT.tblPat['B3 Score'];        //fills last score array with filled in scores
           inc(iNum2);
           end;
      
      
      if iNum<>8
      then dmPAT.tblPat.Next;
    end; 

  if arrScores3[1]>arrScores3[2]
  then sWinner:=arrTeams3[1]
  else sWinner:=arrTeams3[2];      //decides which team is winner based on semi final scores

  iNext:=1;           //used to move through array
  
  lblTeam1.Caption:=arrTeams1[iNext];
  inc(iNext);
  lblTeam2.Caption:=arrTeams1[iNext];
  inc(iNext);
  lblTeam3.Caption:=arrTeams1[iNext];
  inc(iNext);
  lblTeam4.Caption:=arrTeams1[iNext];
  inc(iNext);
  lblTeam5.Caption:=arrTeams1[iNext];
  inc(iNext);
  lblTeam6.Caption:=arrTeams1[iNext];
  inc(iNext);
  lblTeam7.Caption:=arrTeams1[iNext];
  inc(iNext);
  lblTeam8.Caption:=arrTeams1[iNext];      //sets beginning team names

  iNext:=1;

  lblSc1.Caption:=IntToStr(arrScores1[iNext]);
  inc(iNext);
  lblSc2.Caption:=IntToStr(arrScores1[iNext]);
  inc(iNext);
  lblSc3.Caption:=IntToStr(arrScores1[iNext]);
  inc(iNext);
  lblSc4.Caption:=IntToStr(arrScores1[iNext]);
  inc(iNext);
  lblSc5.Caption:=IntToStr(arrScores1[iNext]);
  inc(iNext);
  lblSc6.Caption:=IntToStr(arrScores1[iNext]);
  inc(iNext);
  lblSc7.Caption:=IntToStr(arrScores1[iNext]);
  inc(iNext);
  lblSc8.Caption:=IntToStr(arrScores1[iNext]);   //sets beginning round scores

  iNext:=1;

  lblB1Win.Caption:=arrTeams2[iNext];
  inc(iNext);
  lblB2Win.Caption:=arrTeams2[iNext];
  inc(iNext);
  lblB3Win.Caption:=arrTeams2[iNext];
  inc(iNext);
  lblB4Win.Caption:=arrTeams2[iNext];

  iNext:=1;

  lblQf1.Caption:=IntToStr(arrScores2[iNext]);
  inc(iNext);
  lblQf2.Caption:=IntToStr(arrScores2[iNext]);
  inc(iNext);
  lblQf3.Caption:=IntToStr(arrScores2[iNext]);
  inc(iNext);
  lblQf4.Caption:=IntToStr(arrScores2[iNext]);

  iNext:=1;

  lblSemi1.Caption:=arrTeams3[iNext];
  inc(iNext);
  lblSemi2.Caption:=arrTeams3[iNext];

  iNext:=1;

  lblSSc1.Caption:=IntToStr(arrScores3[iNext]);
  inc(iNext);
  lblSSc2.Caption:=IntToStr(arrScores3[iNext]);

  lblWinnerDB.Caption:=sWinner;     //sets winner label

end;

procedure TfrmPAT.FormCreate(Sender: TObject);

begin
  bClicked:=false;     //used to see if database tournament has been filled
  sTourn:='';          //used to get 4 team tournament name


  tbsSignUp.TabVisible:=false;
  tbsLogin.TabVisible:=false;
  tbsSelect.TabVisible:=false;
  tbs4Text.TabVisible:=false;
  tbsDBTourn.TabVisible:=false;
  tbsCodeInfo.TabVisible:=false;
  tbsTextLoad.TabVisible:=false;
  tbsTextInfo.TabVisible:=false;

  pgcRegister.ActivePage:=tbsLogin;
end;

procedure TfrmPAT.lblQf1Click(Sender: TObject);
var sOrg:string;
iScore1, iScore2, I, iNum, iNt, iCount1, iCount2:integer;
bHappened:boolean;
begin
iNext:=0;
iCount1:=0;
icount2:=0;
bHappened:=false;
sOrg:=lblSemi1.Caption;
ChangeScore2;
  
  if lblSemi1.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         while dmPAT.tblPat['Team']<>lblB1Win.Caption do
         begin
         dmPAT.tblPat.Next;
         inc(iCount1);
         end;                                   //Finds position of needed record in database using an integer variable
         iScore1:=dmPAT.tblPat['B3 Score'];     //give integer variable database score
         
         dmPAT.tblPat.First;
         while dmPAT.tblPat['Team']<>lblB2Win.Caption do
         begin
         dmPAT.tblPat.Next;
         inc(iCount2);
         end;
         iScore2:=dmPAT.tblPat['B3 Score'];

         if iScore1>iScore2           //will change position depending on winner
         then begin 
              dmPAT.tblPat.First;
              for I := 0 to iCount2 do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];  //keeps original value so that when setting database value at end, the value wont be change to a different value if not needed
                dmPAT.tblPat.Edit;
                if I=iCount2 
                then iNum:=arrScores3[1];    //changes value of necessary field
                if (dmPAT.tblPat['Team']=lblB1Win.Caption)
                then iNum:=-1;
                dmPAT.tblPat['B3 Score']:=iNum; //sets value
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end
         else begin
              dmPAT.tblPat.First;
              for I := 0 to iCount2 do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                dmPAT.tblPat.Edit;
                if I=iCount2 
                then iNum:=-1;
                if (dmPAT.tblPat['Team']=lblB1Win.Caption) 
                then iNum:=arrScores3[1];
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;

         end;

              end;
         end;

procedure TfrmPAT.lblQf2Click(Sender: TObject);
var sOrg:string;
iScore1, iScore2, I, iNum, iNt, iCount1, iCount2:integer;
bHappened:boolean;
begin
iNext:=0;
iCount1:=0;
icount2:=0;
bHappened:=false;
sOrg:=lblSemi1.Caption;
ChangeScore3;
  
  if lblSemi1.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         while dmPAT.tblPat['Team']<>lblB2Win.Caption do
         begin
         dmPAT.tblPat.Next;
         inc(iCount1);
         end;
         iScore1:=dmPAT.tblPat['B3 Score'];
         
         dmPAT.tblPat.First;
         while dmPAT.tblPat['Team']<>lblB1Win.Caption do
         begin
         dmPAT.tblPat.Next;
         inc(iCount2);
         end;
         iScore2:=dmPAT.tblPat['B3 Score'];
         if iScore1>iScore2
         then begin 
              dmPAT.tblPat.First;
              for I := 0 to iCount1 do
              begin
                dmPAT.tblPat.Edit;
                if I=iCount2 
                then iNum:=arrScores3[1]
                else iNum:=-1;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end
         else begin
              dmPAT.tblPat.First;
              for I := 0 to iCount1 do
              begin
                dmPAT.tblPat.Edit;
                if I=iCount1 
                then iNum:=arrScores3[1]
                else iNum:=-1;

                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
         end;
  end;
end;

procedure TfrmPAT.lblQf3Click(Sender: TObject);
var sOrg:string;
iScore1, iScore2, I, iNum, iNt, iCount1, iCount2:integer;
bHappened:boolean;
begin
iNext:=0;
iCount1:=0;
icount2:=0;
bHappened:=false;
sOrg:=lblSemi2.Caption;
ChangeScore4;
  
  if lblSemi2.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         while dmPAT.tblPat['Team']<>lblB3Win.Caption do
         begin
         dmPAT.tblPat.Next;
         inc(iCount1);
         end;
         iScore1:=dmPAT.tblPat['B3 Score'];
         
         dmPAT.tblPat.First;
         while dmPAT.tblPat['Team']<>lblB4Win.Caption do
         begin
         dmPAT.tblPat.Next;
         inc(iCount2);
         end;
         iScore2:=dmPAT.tblPat['B3 Score'];
         if iScore1>iScore2
         then begin 
              
                dmPAT.tblPat.First;
              for I := 0 to iCount2 do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                dmPAT.tblPat.Edit;
                if I=iCount2 
                then iNum:=arrScores3[2];
                if (dmPAT.tblPat['Team']=lblB3Win.Caption) 
                then iNum:=-1;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next; 
              end;

              end
         else begin
              dmPAT.tblPat.First;
              for I := 0 to iCount2 do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                dmPAT.tblPat.Edit;
                if I=iCount2 
                then iNum:=-1;
                if (dmPAT.tblPat['Team']=lblB3Win.Caption) 
                then iNum:=arrScores3[2];
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
         end;
end;

end;

procedure TfrmPAT.lblQf4Click(Sender: TObject);
var sOrg:string;
iScore1, iScore2, I, iNum, iNt, iCount1, iCount2:integer;
bHappened:boolean;
begin
iNext:=0;
iCount1:=0;
icount2:=0;
bHappened:=false;
sOrg:=lblSemi2.Caption;
ChangeScore5;
  
  if lblSemi2.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         while dmPAT.tblPat['Team']<>lblB3Win.Caption do
         begin
         dmPAT.tblPat.Next;
         inc(iCount1);
         end;
         iScore1:=dmPAT.tblPat['B3 Score'];
         
         dmPAT.tblPat.First;
         while dmPAT.tblPat['Team']<>lblB4Win.Caption do
         begin
         dmPAT.tblPat.Next;
         inc(iCount2);
         end;
         iScore2:=dmPAT.tblPat['B3 Score'];
         if iScore1>iScore2
         then begin 
              dmPAT.tblPat.First;
              for I := 0 to iCount2 do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                dmPAT.tblPat.Edit;
                if I=iCount2 
                then iNum:=arrScores3[2];
                if (dmPAT.tblPat['Team']=lblB3Win.Caption) 
                then iNum:=-1;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next; 
              end;
              end
         else begin
              dmPAT.tblPat.First;
              for I := 0 to iCount2 do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                dmPAT.tblPat.Edit;
                if I=iCount2 
                then iNum:=-1;
                if (dmPAT.tblPat['Team']=lblB3Win.Caption) 
                then iNum:=arrScores3[2];
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
         end;
end;
end;

procedure TfrmPAT.lblSc1Click(Sender: TObject);
var sOrg, sOrg2:string;
iScore1, iScore2, I, iNum, iNt:integer;
bHappened:boolean;
begin
iNext:=0;
bHappened:=false;
sOrg:=lblB1Win.Caption;
sOrg2:=lblSemi1.Caption;
ChangeScore1;
  
  if lblB1Win.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         iScore1:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.Next;
         iScore2:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.First;
         if iScore1>iScore2
         then begin 
              dmPAT.tblPat.First;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=1 
                then iNum:=-1
                else iNum:=arrScores2[1];
                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
              end;
              end
         else begin 
              dmPAT.tblPat.First;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=1 
                then iNum:=arrScores2[1]
                else iNum:=-1;

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
         end;
         
       end;
  if lblSemi1.Caption<>sOrg2 
  then begin
         dmPAT.tblPat.First;
         iScore1:=dmPAT.tblPat['B3 Score'];
         dmPAT.tblPat.next;
         iScore2:=dmPAT.tblPat['B3 Score'];
         
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;

                if dmPAT.tblPat['Team']=lblSemi1.Caption
                then iNum:=arrScores3[1];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
              end;
              end


         else begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;
                
                if dmPAT.tblPat['Team']=lblSemi1.Caption
                then iNum:=arrScores3[1];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end;
         
       end;
      
end;

procedure TfrmPAT.lblSc2Click(Sender: TObject);
var sOrg, sOrg2:string;
iScore1, iScore2, I, iNum:integer;
bHappened:boolean;
begin
iNext:=1;
bHappened:=false;
sOrg:=lblB1Win.Caption;
sOrg2:=lblSemi1.Caption;
ChangeScore1;
  
  if lblB1Win.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.Prior;
         iScore2:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.First;
         if iScore1>iScore2
         then begin 
              dmPAT.tblPat.First;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=2
                then iNum:=-1
                else iNum:=arrScores2[1];

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
              end
         else begin 
              dmPAT.tblPat.First;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=2
                then iNum:=arrScores2[1]
                else iNum:=-1;

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
         end;
         
       end;
  if lblSemi1.Caption<>sOrg2             //used to move score from one database record to another one depending on if winner in a round has been changed
  then begin
         dmPAT.tblPat.First;
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B3 Score'];
         dmPAT.tblPat.prior;
         iScore2:=dmPAT.tblPat['B3 Score'];
         
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;

                if dmPAT.tblPat['Team']=lblSemi1.Caption
                then iNum:=arrScores3[1];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;

              end;
              end
              
         
         else begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;
                
                if dmPAT.tblPat['Team']=lblSemi1.Caption
                then iNum:=arrScores3[1];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end;
         
       end;
end;

procedure TfrmPAT.lblSc3Click(Sender: TObject);
var sOrg, sOrg2:string;
iScore1, iScore2, I, iNum, iNt:integer;
bHappened:boolean;
begin
iNext:=2;
bHappened:=false;
sOrg:=lblB2Win.Caption;
sOrg2:=lblSemi1.Caption;
ChangeScore1;
  
  if lblB2Win.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 2 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.Next;
         iScore2:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.First;
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 2 do
              dmPAT.tblPat.Next;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=1 
                then iNum:=-1
                else iNum:=arrScores2[2];

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
                
              end;
              end
         end
         else begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 2 do
              dmPAT.tblPat.Next;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=1 
                then iNum:=arrScores2[2]
                else iNum:=-1;

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
         end;
         
       end;
  if lblSemi1.Caption<>sOrg2 
  then begin
         dmPAT.tblPat.First;
         dmPAT.tblPat.next;
         dmPAT.tblPat.next;
         iScore1:=dmPAT.tblPat['B3 Score'];
         dmPAT.tblPat.next;
         iScore2:=dmPAT.tblPat['B3 Score'];
         
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;

                if dmPAT.tblPat['Team']=lblSemi1.Caption
                then iNum:=arrScores3[1];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
              end;
              end
              
         
         else begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;
                
                if dmPAT.tblPat['Team']=lblSemi1.Caption
                then iNum:=arrScores3[1];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end;
         
       end;

end;

procedure TfrmPAT.lblSc4Click(Sender: TObject);
var sOrg, sOrg2:string;
iScore1, iScore2, I, iNum, iNt:integer;
bHappened:boolean;
begin
iNext:=3;
bHappened:=false;
sOrg:=lblB2Win.Caption;
sOrg2:=lblSemi1.Caption;
ChangeScore1;
  
  if lblB2Win.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 3 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.Prior;
         iScore2:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.First;
         if iScore1>iScore2
         then begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 2 do
              dmPAT.tblPat.Next;  
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=2
                then iNum:=-1
                else iNum:=arrScores2[2];

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
              end
         else begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 2 do
              dmPAT.tblPat.Next;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=2
                then iNum:=arrScores2[2]
                else iNum:=-1;

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
         end;
         
       end;
  if lblSemi1.Caption<>sOrg2 
  then begin
         dmPAT.tblPat.First;
         dmPAT.tblPat.Next;
         dmPAT.tblPat.Next;
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B3 Score'];
         dmPAT.tblPat.prior;
         iScore2:=dmPAT.tblPat['B3 Score'];
         
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;

                if dmPAT.tblPat['Team']=lblSemi1.Caption
                then iNum:=arrScores3[1];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
              end;
              end
              
         
         else begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;
                
                if dmPAT.tblPat['Team']=lblSemi1.Caption
                then iNum:=arrScores3[1];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end;
         
       end;
end;

procedure TfrmPAT.lblSc5Click(Sender: TObject);
var sOrg, sOrg2:string;
iScore1, iScore2, I, iNum, iNt:integer;
bHappened:boolean;
begin
iNext:=4;
bHappened:=false;
sOrg:=lblB3Win.Caption;
sOrg2:=lblSemi2.Caption;
ChangeScore1;
  
  if lblB3Win.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 4 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.Next;
         iScore2:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.First;
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 4 do
              dmPAT.tblPat.Next;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=1 
                then iNum:=-1
                else iNum:=arrScores2[3];

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
                
              end;
              end
         end
         else begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 4 do
              dmPAT.tblPat.Next;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=1 
                then iNum:=arrScores2[3]
                else iNum:=-1;

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
         end;
         
       end;
  if lblSemi2.Caption<>sOrg2 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 4 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B3 Score'];
         dmPAT.tblPat.next;
         iScore2:=dmPAT.tblPat['B3 Score'];
         
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;

                if dmPAT.tblPat['Team']=lblSemi2.Caption
                then iNum:=arrScores3[2];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
              end;
              end
              
         
         else begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;
                
                if dmPAT.tblPat['Team']=lblSemi2.Caption
                then iNum:=arrScores3[2];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end;
         
       end;
end;

procedure TfrmPAT.lblSc6Click(Sender: TObject);
var sOrg, sOrg2:string;
iScore1, iScore2, I, iNum, iNt:integer;
bHappened:boolean;
begin
iNext:=5;
bHappened:=false;
sOrg:=lblB3Win.Caption;
sOrg2:=lblSemi2.Caption;
ChangeScore1;
  
  if lblB3Win.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 5 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.Prior;
         iScore2:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.First;
         if iScore1>iScore2
         then begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 4 do
              dmPAT.tblPat.Next;  
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=2
                then iNum:=-1
                else iNum:=arrScores2[3];

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
              end
         else begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 4 do
              dmPAT.tblPat.Next;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=2
                then iNum:=arrScores2[3]
                else iNum:=-1;

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
         end;
         
       end;
  if lblSemi2.Caption<>sOrg2 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 5 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B3 Score'];
         dmPAT.tblPat.prior;
         iScore2:=dmPAT.tblPat['B3 Score'];
         
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;

                if dmPAT.tblPat['Team']=lblSemi2.Caption
                then iNum:=arrScores3[2];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
              end;
              end
              
         
         else begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;
                
                if dmPAT.tblPat['Team']=lblSemi2.Caption
                then iNum:=arrScores3[2];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end;
         
       end;
end;

procedure TfrmPAT.lblSc7Click(Sender: TObject);
var sOrg, sOrg2:string;
iScore1, iScore2, I, iNum, iNt:integer;
bHappened:boolean;
begin
iNext:=6;
bHappened:=false;
sOrg:=lblB4Win.Caption;
sOrg2:=lblSemi2.Caption;
ChangeScore1;
  
  if lblB4Win.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 6 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.Next;
         iScore2:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.First;
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 6 do
              dmPAT.tblPat.Next;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=1 
                then iNum:=-1
                else iNum:=arrScores2[4];

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
                
              end;
              end
         end
         else begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 6 do
              dmPAT.tblPat.Next;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=1 
                then iNum:=arrScores2[4]
                else iNum:=-1;

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
         end;
         
       end;
  if lblSemi2.Caption<>sOrg2 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 6 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B3 Score'];
         dmPAT.tblPat.next;
         iScore2:=dmPAT.tblPat['B3 Score'];
         
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;

                if dmPAT.tblPat['Team']=lblSemi2.Caption
                then iNum:=arrScores3[2];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
              end;
              end
              
         
         else begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;
                
                if dmPAT.tblPat['Team']=lblSemi2.Caption
                then iNum:=arrScores3[2];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end;
         
       end;
end;

procedure TfrmPAT.lblSc8Click(Sender: TObject);
var sOrg, sOrg2:string;
iScore1, iScore2, I, iNum, iNt:integer;
bHappened:boolean;
begin
iNext:=7;
bHappened:=false;
sOrg:=lblB4Win.Caption;
sOrg2:=lblSemi2.Caption;
ChangeScore1;
  
  if lblB4Win.Caption<>sOrg 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 7 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.Prior;
         iScore2:=dmPAT.tblPat['B2 Score'];
         dmPAT.tblPat.First;
         if iScore1>iScore2
         then begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 6 do
              dmPAT.tblPat.Next;  
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=2
                then iNum:=-1
                else iNum:=arrScores2[4];

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
              end
         else begin 
              dmPAT.tblPat.First;
              for iNt := 1 to 6 do
              dmPAT.tblPat.Next;
              for I := 1 to 2 do
              begin
                dmPAT.tblPat.Edit;
                if I=2
                then iNum:=arrScores2[4]
                else iNum:=-1;

                dmPAT.tblPat['B2 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next
                
              end;
         end;
         
       end;
  if lblSemi2.Caption<>sOrg2 
  then begin
         dmPAT.tblPat.First;
         for iNt := 1 to 7 do
         dmPAT.tblPat.Next;
         iScore1:=dmPAT.tblPat['B3 Score'];
         dmPAT.tblPat.prior;
         iScore2:=dmPAT.tblPat['B3 Score'];
         
         if iScore1>iScore2
         then  begin 
              dmPAT.tblPat.First;
              
              begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;

                if dmPAT.tblPat['Team']=lblSemi2.Caption
                then iNum:=arrScores3[2];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              
              end;
              end
              
         
         else begin 
              dmPAT.tblPat.First;
              while not(dmPAT.tblPat.Eof) do
              begin
                iNum:=dmPAT.tblPat['B3 Score'];
                if dmPAT.tblPat['Team']=sOrg2 
                then iNum:=-1;
                
                if dmPAT.tblPat['Team']=lblSemi2.Caption
                then iNum:=arrScores3[2];
                dmPAT.tblPat.Edit;
                dmPAT.tblPat['B3 Score']:=iNum;
                dmPAT.tblPat.post;
                dmPAT.tblPat.Next;
              end;
              end;
         
       end;
end;

procedure TfrmPAT.lblSignUpClick(Sender: TObject);
begin
  pgcRegister.ActivePage:=tbsSignUp;
end;

procedure TfrmPAT.lblSSc1Click(Sender: TObject);
var bHappened:boolean;
begin
  bHappened:=false;
  ChangeScoreSemi1;
end;

procedure TfrmPAT.lblSSc2Click(Sender: TObject);
var bHappened:boolean;
begin
  bHappened:=false;
  ChangeScoreSemi2;
end;

procedure TfrmPAT.lblTeam1Click(Sender: TObject);
begin
iNext:=0;
ChangeName;
end;

procedure TfrmPAT.lblTeam2Click(Sender: TObject);
begin
iNext:=1;
ChangeName;
end;

procedure TfrmPAT.lblTeam3Click(Sender: TObject);
begin
iNext:=2;
ChangeName;
end;

procedure TfrmPAT.lblTeam4Click(Sender: TObject);
begin
iNext:=3;
ChangeName;
end;

procedure TfrmPAT.lblTeam5Click(Sender: TObject);
begin
iNext:=4;
ChangeName;
end;

procedure TfrmPAT.lblTeam6Click(Sender: TObject);
begin
iNext:=5;
ChangeName;
end;

procedure TfrmPAT.lblTeam7Click(Sender: TObject);
begin
iNext:=6;
ChangeName;
end;

procedure TfrmPAT.lblTeam8Click(Sender: TObject);
begin
iNext:=7;
ChangeName;
end;

procedure TfrmPAT.lstTTextClick(Sender: TObject);
var sOrg1, sSen1, sOrg2, sSen2, sTeam, sScore, sTFile:string;
iPos1, iPos2:integer;
begin
  assignfile(tTourn, '4Tournament.txt');
  reset(tTourn);
  sOrg1:=lstTText.Items[lstTText.ItemIndex];
  iPos1:=pos('-',sOrg1);
  iPos2:=pos('#',sOrg2);
  sSen1:=copy(sOrg1,1,iPos1-2);          //gets tournament name from list box to use to search through text file
  repeat
    readln(tTourn, sOrg2);
    iPos2:=pos('#',sOrg2);
    sSen2:=copy(sOrg2,1,iPos2-1);
  until sSen1=sSen2;           //finds it in the text file
  closefile(tTourn);
  delete(sOrg2,1,iPos2);

  iPos2:=pos('#',sOrg2);
  sTeam:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblTTeam1.Caption:=sTeam;                  //sets values into labels
  //
  iPos2:=pos('#',sOrg2);
  sScore:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblTScore1.Caption:=sScore;

  iPos2:=pos('#',sOrg2);
  sTeam:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblTTeam2.Caption:=sTeam;
  //
  iPos2:=pos('#',sOrg2);
  sScore:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblTScore2.Caption:=sScore;

  iPos2:=pos('#',sOrg2);
  sTeam:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblTTeam3.Caption:=sTeam;
  //
  iPos2:=pos('#',sOrg2);
  sScore:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblTScore3.Caption:=sScore;

  iPos2:=pos('#',sOrg2);
  sTeam:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblTTeam4.Caption:=sTeam;
  //
  iPos2:=pos('#',sOrg2);
  sScore:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblTScore4.Caption:=sScore;
  ////
  iPos2:=pos('#',sOrg2);
  sTeam:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblT1Team1.Caption:=sTeam;
  //
  iPos2:=pos('#',sOrg2);
  sScore:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblT1Score1.Caption:=sScore;

  iPos2:=pos('#',sOrg2);
  sTeam:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblT1Team2.Caption:=sTeam;
  //
  iPos2:=pos('#',sOrg2);
  sScore:=copy(sOrg2,1,iPos2-1);
  delete(sOrg2,1,iPos2);
  lblT1Score2.Caption:=sScore;

  if StrToInt(lblT1Score1.Caption)>StrToInt(lblT1Score2.Caption)
  then lblTWin.Caption:=lblT1Team1.Caption
  else lblTWin.Caption:=lblT1Team2.Caption        //determines winner


end;

procedure TfrmPAT.tbs4TextEnter(Sender: TObject);
begin
 { btnConTeam.Visible:=true;
  btnConTeam.Enabled:=true;
  //
  edtTeam1.Enabled:=true;
  edtTeam2.Enabled:=true;
  edtTeam3.Enabled:=true;
  edtTeam4.Enabled:=true;
  //
  edtTeam1.Clear;
  edtTeam2.Clear;
  edtTeam3.Clear;
  edtTeam4.Clear;

  edt1Team1.Visible:=false;
  edt1Team2.Visible:=false;
  edt1Team3.Visible:=false;
  edt1Team4.Visible:=false;
  //
  edt1Team1.clear;
  edt1Team2.clear;
  edt1Team3.clear;
  edt1Team4.clear;

  lblB1.Visible:=false;
  lblB2.Visible:=false;
  //
  lblB1.Caption:='';
  lblB2.Caption:='';
  //
  edt2Team1.visible:=false;
  edt2Team2.visible:=false;
  //
  edt2Team1.clear;
  edt2Team2.clear;

  lblWinHead.Visible:=false;
  //
  lblWinner.visible:=false;
  lblWinner.caption:=''; }

end;

end.
