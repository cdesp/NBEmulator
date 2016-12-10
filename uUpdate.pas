{
Grundy NewBrain Emulator Pro Made by Despsoft

Copyright (c) 2004, Despoinidis Chris
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software without
specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON A
NY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
}
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

    procedure DownloadUpdate;
    { Private declarations }
  public
    { Public declarations }
    function CheckVersion:boolean;
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

function TfrmUpdate.CheckVersion:boolean;
Var Newver,Curver:String;
Begin
  result:=false;
  ConnectToSite;
  if listbox1.Items.Count=0 then exit;
  Newver:=listbox1.Items.Values['latest'];
  Listbox1.Clear;
  Curver:=StringReplace(copy(fNewbrain.Leddisp.Text,8,maxint),' ','',[rfReplaceall]);
  listbox1.Items.Add('New Version='+Newver);
  listbox1.Items.Add('Cur Version='+Curver);
  application.ProcessMessages;
  result:=newver<>curver;
End;

procedure TfrmUpdate.Button1Click(Sender: TObject);
Var fn:String;
begin
// ConnectToSite;
// if listbox1.Items.Count>0 then
  if CheckVersion then
    DownloadUpdate;
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
