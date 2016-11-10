unit uUpdate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmUpdate = class(TForm)
    IdHTTP1: TIdHTTP;
    Button1: TButton;
    Label1: TLabel;
    ListBox1: TListBox;
    Timer1: TTimer;

    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    newupdate:boolean;
    procedure ConnectToSite;
    procedure CheckVersion;
    procedure DownloadUpdate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUpdate: TfrmUpdate;
Const Mainsite='http://www.newbrainemu.eu/';

implementation

uses shellapi, New;

{$R *.dfm}


procedure TfrmUpdate.ConnectToSite;
Var s:String[40];
   ms:TStringStream;
   c:integer;
Begin
  newupdate:=false;
  listbox1.Clear;
  s:='';
  ms:=TStringStream.Create;
  try
   try
    Idhttp1.get(mainsite+'version.ver',ms);
    ms.position:=0;
    c:=ms.Size;
    s:=ms.ReadString(c) ;
//    ms.SaveToFile('g:\version.txt');
   except
      on e:exception do
        listbox1.Items.Add(e.Message);
   end;
  finally
   ms.Free;
  end;
  if s<>'' then
    listbox1.Items.Add(s);
  application.ProcessMessages;
End;

procedure TfrmUpdate.DownloadUpdate;
Var s:String;
   ms:TFileStream;
   c:integer;
Begin
  s:='';
  listbox1.Items.Add('Downloading File...');
  application.ProcessMessages;
  ms:=TFileStream.Create('NewVersion.dld',fmCreate);
  try
   try
    Idhttp1.get(mainsite+'newversion.dld',ms);
    s:='Update Downloaded OK';
    newupdate:=true;
//    ms.SaveToFile('g:\version.txt');
   except
      on e:exception do
        listbox1.Items.Add(e.Message);
   end;
  finally
   ms.Free;
  end;
  if s<>'' then
    listbox1.Items.Add(s);
  application.ProcessMessages;
End;

procedure TfrmUpdate.FormShow(Sender: TObject);
begin
  timer1.enabled:=true;
end;

procedure TfrmUpdate.Timer1Timer(Sender: TObject);
begin
 timer1.Enabled:=false;
 button1click(nil);
end;

procedure TfrmUpdate.CheckVersion;
Var Newver,Curver:String;
Begin
  Newver:=listbox1.Items.Values['latest'];
  Listbox1.Clear;
  Curver:=StringReplace(copy(fNewbrain.Leddisp.Text,8,maxint),' ','',[rfReplaceall]);
  listbox1.Items.Add('New Version='+Newver);
  listbox1.Items.Add('Cur Version='+Curver);
  application.ProcessMessages;
  if newver<>curver then
    DownloadUpdate;
End;

procedure TfrmUpdate.Button1Click(Sender: TObject);
Var fn:String;
begin
 ConnectToSite;
 if listbox1.Items.Count>0 then
  CheckVersion;
 if newupdate then
 Begin
   Showmessage('A new version has been downloaded.'#13#10'Click OK to Update and Restart the emulator.');
   fn:=ExtractFilePath(Application.exename)+'update.cmd';
   ShellExecute(0,'OPEN',Pchar(fn),nil,Pchar(ExtractFilepath(fn)),SW_HIDE);
   Application.Terminate;
 End
  Else
  Begin
    ShowMessage('You have the latest version.');
    Hide;
  End;
end;

end.
