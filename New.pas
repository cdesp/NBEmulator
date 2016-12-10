{
Grundy NewBrain Emulator Pro Made by Despsoft
BSD 3-Clause License (https://opensource.org/licenses/BSD-3-Clause)


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

unit New;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  raze, StdCtrls,  Menus, AppEvnts, DXDraws, DXClass, ExtCtrls,
   ComCtrls,  JDLed,uNBTypes, Vcl.ToolWin, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage{, JvRegAuto}
  ;
{$i 'dsp.inc'}
type


  TfNewBrain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Start1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Debug1: TMenuItem;
    Debug2: TMenuItem;
    Suspend1: TMenuItem;
    terminate1: TMenuItem;
    SetMHz1: TMenuItem;
    SetBasicFile1: TMenuItem;
    OpenDialog1: TOpenDialog;
    StatusBar1: TStatusBar;
    N4: TMenuItem;
    LoadTextFile1: TMenuItem;
    N5: TMenuItem;
    DesignChars1: TMenuItem;
    Tools1: TMenuItem;
    N6: TMenuItem;
    About1: TMenuItem;
    TapeManagement1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    WithExpansion1: TMenuItem;
    WithCPM1: TMenuItem;
    DiskManagement1: TMenuItem;
    SaveMemoryMap1: TMenuItem;
    Storage1: TMenuItem;
    Options1: TMenuItem;
    VFDisplayUp1: TMenuItem;
    Help1: TMenuItem;
    Help2: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    NBDigitizer1: TMenuItem;
    CheckRoms1: TMenuItem;
    ShowDriveContents1: TMenuItem;
    E1: TMenuItem;
    KeyboardMapping1: TMenuItem;
    Restart1: TMenuItem;
    FullScreen1: TMenuItem;
    SaveNewSystem1: TMenuItem;
    thrEmulate: TDXTimer;
    Disassembly1: TMenuItem;
    SelectRomVersion1: TMenuItem;
    LoadBinaryFileInMemory1: TMenuItem;
    OpenDialog2: TOpenDialog;
    SaveDisckNOW1: TMenuItem;
    WithPibox: TMenuItem;
    N9: TMenuItem;
    PeripheralSetup1: TMenuItem;
    Options2: TMenuItem;
    ShowInstructions1: TMenuItem;
    CaptureRawScreen1: TMenuItem;
    ape1: TMenuItem;
    SaveMemorytoDisk1: TMenuItem;
    Setup1: TMenuItem;
    N3: TMenuItem;
    N1: TMenuItem;
    N10: TMenuItem;
    Reset1: TMenuItem;
    aclist: TActionList;
    acStEmul: TAction;
    acRomSel: TAction;
    ImageList1: TImageList;
    acReset: TAction;
    acGenOptions: TAction;
    acTapeSelect: TAction;
    acTapeManagement: TAction;
    acDiskManagement: TAction;
    Action1: TAction;
    UpdateCheck1: TMenuItem;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    LedDisp: TJDLed;
    Panel5: TPanel;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton7: TToolButton;
    ToolButton3: TToolButton;
    ToolButton9: TToolButton;
    ToolButton8: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Image1: TImage;
    Panel6: TPanel;
    newscr: TDXDraw;
    procedure Button1Click(Sender: TObject);
    procedure Start1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Debug2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Suspend1Click(Sender: TObject);
    procedure terminate1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetMHz1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SetBasicFile1Click(Sender: TObject);
    procedure LoadTextFile1Click(Sender: TObject);
    procedure DesignChars1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure About1Click(Sender: TObject);
    procedure SaveCharMap1Click(Sender: TObject);
    procedure TapeManagement1Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure WithExpansion1Click(Sender: TObject);
    procedure WithCPM1Click(Sender: TObject);
    procedure DiskManagement1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SaveMemoryMap1Click(Sender: TObject);
    procedure Options1Click(Sender: TObject);
    procedure VFDisplayUp1Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure Help2Click(Sender: TObject);
    procedure NBDigitizer1Click(Sender: TObject);
    procedure CheckRoms1Click(Sender: TObject);
    procedure Disassembly1Click(Sender: TObject);
    procedure ShowDriveContents1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure KeyboardMapping1Click(Sender: TObject);
    procedure Restart1Click(Sender: TObject);
    procedure FullScreen1Click(Sender: TObject);
    procedure LoadBinaryFileInMemory1Click(Sender: TObject);
    procedure PeripheralSetup1Click(Sender: TObject);
    procedure WithPiboxClick(Sender: TObject);
    procedure SaveDisckNOW1Click(Sender: TObject);
    procedure SaveNewSystem1Click(Sender: TObject);
    procedure SelectRomVersion1Click(Sender: TObject);
    procedure ShowInstructions1Click(Sender: TObject);
    procedure thrEmulateTimer(Sender: TObject; LagCount: Integer);
    procedure CaptureRawScreen1Click(Sender: TObject);
    procedure SaveMemorytoDisk1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
    procedure UpdateCheck1Click(Sender: TObject);

  private
    { Private declarations }
    Halted:Boolean;
    IsSuspended: Boolean;
    procedure HideInstructions;
    procedure ShowInstructions;
    function GetNewbrainDescr: String;
    procedure RefreshRomVer;
    procedure WriteP3(s: String);
    procedure LoadOptions;
    procedure SaveOptions;

    procedure SetParams;
    procedure DoEmulation;
    function GetRoot: string;
    function CreateOpenDialog: TOpenDialog;
    procedure MakeTapeButtons;
    procedure tpbtnClick(Sender: TObject);
    function GetOLDOS: Byte;
    procedure OpenFile(Fname: String);
    function GetColor(cl: TColor): TColor;
  public
    { Public declarations }
    keybFileinp:Boolean;
    bootok: boolean;
    Emuls: Real;
    MHz: Real;
    Debugging: Boolean;
    DoOne: Boolean;
    Constructor Create(Aowner:TComponent);Override;
    procedure SuspendEmul;
    procedure ResumeEmul;
    procedure StartEmul;
    procedure WriteP1(s:String);
    procedure SaveCharMap;
    procedure LoadCharMap;
    procedure SetLed(Sender: Tobject);
    procedure WriteP2(s: String);
    procedure Step;
    procedure ShowSplash(DoShow:Boolean=true);
    property Root: string read GetRoot;
    property OLDOS: Byte read GetOLDOS;
    property Suspended: Boolean read IsSuspended;
  end;


function GetFiles(Wld:AnsiString;ODirs:Boolean): TStrings;

procedure ODS(s:String);

var
  fNewBrain: TfNewBrain;
  LASTPC:WORD;  //last pc for debugging
  InterruptServed:Boolean=True;
  NBDel:Integer=30;   //Emulation Delay
  fl:String;
  pclist:Tlist=nil;
  SPlist:Tlist=nil;
  Stopped:Boolean=false;
  LastIN:Byte;
  LastOut:Byte;
  LastError:string='';
  AppCaption:String='';

implementation
uses uz80dsm,math, frmNewDebug,jcllogic, frmChrDsgn, frmAbout, frmTapeMgmt,
     uNBMemory,uNBCOP,uNBIO,uNBCPM,uNBScreen,uNBTapes,uNBKeyboard2,
     frmDiskMgmt,mmsystem, frmOptions,shellapi, frmDrvInfo,SendKey,
     frmSplash,frmDisassembly,inifiles, frmRomVersion,ustrings, frmPeriferals,
     frmInstructions, uUpdate;

Var dbgsl:TStringlist=nil;

{$R *.DFM}

//Delay procedure in secs and millisecs
Procedure Delay(s,ms:Word);
VAr totdel:Word;
    Lasttick:Cardinal;
Begin
  totdel:=s*1000+ms;
  lasttick:=Gettickcount;
  While (Gettickcount-LastTick)<totdel do
  Begin
   application.processmessages;
  End;
End;

//Get Directories or .Bin and .bas Files
Function GetFiles(Wld:AnsiString;ODirs:Boolean):TStrings;
Var pth:AnsiString;
    pfnddat:_Win32_Find_DataA;
    h:THandle;

    FUnction ISValid:Boolean;
    Begin
      if sametext(pfnddat.cFileName,'.') or
       sametext(pfnddat.cFileName,'..') then
      Begin
        result:=false;
        exit;
      End;
      if odirs then
      Begin
       if pfnddat.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY=FILE_ATTRIBUTE_DIRECTORY then
        result:=true
       else
        result:=false;
      End
      Else
      Begin
       if pfnddat.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY=FILE_ATTRIBUTE_DIRECTORY then
        result:=False
       else
        result:=True;
       if result then
        if (pos('.bin',LOWERCASE(pfnddat.cFileName))=0) and
           (pos('.bas',LOWERCASE(pfnddat.cFileName))=0) then
           result:=false;
      End;
    End;

Begin
  pth:=ExtractFilepath(application.exename);
  Result:=TStringlist.create;
  h:=FindFirstFileA(PAnsiChar(pth+wld),pfnddat);
  if h>0 then
  Begin
    if isvalid then
     result.Add(pfnddat.cFileName);
    While FindNextFileA(h,pfnddat) do
    Begin
     if isvalid then
      result.Add(pfnddat.cFileName);
    End;
  End;
End;

Procedure ODS(s:String);
Var a:word;
Begin
  a:=z80_get_reg(Z80_REG_PC);
  LASTPC:=a;
  if dbgsl=nil then
   dbgsl:=tstringlist.create;
 {$IFNDEF NBDEBUG}
  EXIT;
 {$ENDIF}
  a:=z80_get_reg(Z80_REG_PC);
  s:=Timetostr(now)+'PC: '+inttohex(a,4)+','+inttohex(LastPC,4)+' '+s;
  OutputDebugString(pchar(s));
try
 dbgsl.add(s);
Except
 on e:Exception do
  Outputdebugstring(Pchar(e.message));
End;
 // NewDebug.dbg.items.insert(0,s);
  LASTPC:=a;
End;


//Call back from emulator DLL
Function READBYTE(ADDR:WORD):byte;cdecl;
Var a:word;
Begin
//  a:=z80_get_reg(Z80_REG_PC);   //not used
  result:=nbmem.ROM[ADDR];
  if not fnewbrain.bootok then exit;

{  if nbio.kbint and (addr=$3d) then
   nbio.kbint:=false;}
  if Cop420.CheckReady(addr) then
    result:=nbmem.ROM[ADDR];
END;

Procedure WRITEBYTE(Addr:Word;B:Byte);cdecl;
Var a:word;
Begin
 // a:=z80_get_reg(Z80_REG_PC);
{  if not fnewbrain.bootok then
   if addr>=$8000 then exit
  else
   if addr>=$A000 then exit;}
  nbmem.ROM[addr]:=b;
  if addr=$3d then
   cop420.rom3d:=b;
End;

Function GetCommentOnPort(prt:Integer):String;
Var s:String;
Begin
  S:='';
  Case prt of
    1:s:='Load En Reg 2';
    2:s:='Load Page Registers';
    3:s:='Centronics Printer Port';
    4:s:='Reset Clock Interrupt';
    5:s:='Load DAC';
    6:s:='Communicate With COP420';
    7:s:='Load Enable Register 1';
    8,10:s:='Set 9th bit of Video Addr';
    9,11:s:='Load First 8 bit of Video Addr';
    12,13,14,15:s:='Load Video Control Register';
    16:s:='Anin0 - Conversion channel 0,4';
    17:s:='Anin1 - Conversion channel 1,5';
    18:s:='Anin2 - Conversion channel 1,5';
    19:s:='Anin3 - Conversion channel 1,5';
    20:s:='Read Status Reg 1';
    21:s:='Read Status Reg 2';
    22:s:='Data Input Reg 1';
    23:s:='User Data Bus';
    24:s:='Control Reg ACIA';
    25:s:='Receive Data Reg ACIA';
    26,27:s:='Unused';
    28:s:='Ch 0 of CTC';
    29:s:='Ch 1 of CTC';
    30:s:='Ch 2 of CTC';
    31:s:='Ch 3 of CTC';
    200:s:='PIBOX ACIA';
    204:s:='PIBOX PAGING STATUS';
    205:s:='PIBOX PAGING STATUS';
    206:s:='PIBOX PAGING STATUS';
    207:s:='PIBOX PAGING STATUS';
    255:s:='Load Page Status Reg';
  End;

  Result:=s;
End;

Const ReversePorts=True;

function NewIn(port: word):Byte;cdecl	;
   {$IFDEF NBOutDEBUG}
var
    a:word;
    {$Endif}

   Function PortValid:Boolean;
   Begin
      Case Port And $ff of
//       2,255,9,12,4,6,20:result:=false;
       128:Result:=False;//SCREEN IO
      Else
       Result:=true;
     End;
     if ReversePorts then
      Result:=not Result;
   End;

Begin
 //Result := $FF;
 {$IFDEF NBOutDEBUG}
  a:=z80_get_reg(Z80_REG_PC);
 LASTPC:=a;
 {$Endif}
 LastIn:=(port and $ff);
 result:=NbIO.NBIN(LastIn);
 {$IFDEF NBOutDEBUG}
 if PortValid then
 ODS(' Port IN '+inttostr(LastIn)+
  ' '+inttostr((Port and $f000) div 256 )+
   ' : '+inttostr(result)+'  -  '+GetCommentOnPort(LastIn));
 {$Endif}
End;


procedure NewOut(port: word; value: byte);cdecl	;
Var ch:Char;

   Function PortValid:Boolean;
   Begin
      Case Port And $ff of
       7:result:=false;
       //2,255,9,12,4,6,7:result:=false;
       128:Result:=false;//SCREEN IO
      Else
       Result:=True;
     End;
     if ReversePorts then
      Result:=not Result;
   End;

Begin
 LastOut:=port and $ff;
 {$IFDEF NBOutDEBUG}
 ch:=' ';
 If value>32 then
  ch:=chr(value);
  if PortValid then
  ODS(' Port OUT '+inttostr(LastOut) +
      ' '+inttostr((Port and $f000) div 256 )+' : '
       +inttostr(value)+'['+ch+']  -  '+GetCommentOnPort(LastOut) );
 {$ENDIF}
  NbIO.NBOut(LastOut,Value);
End;


{
Procedure RETI;cdecl;
Begin
  exit;
End;
}
Const MAxHist=50;
Var Prepc:Word;
    NTI:iNTEGER=0;

procedure StepProc(Const pc: word); cdecl;
var
    sp:word;
    IF1:word;
Begin
 fnewbrain.thrEmulate.enabled:=false;
{$IFDEF NBDEBUG}
 sp:=  z80_get_reg(Z80_REG_SP);
 if pclist=nil then
 Begin
  pclist:=tlist.create;
  splist:=tlist.create;
  pclist.Capacity:= MAxHist;
  splist.Capacity:= MAxHist;
 End;
 if nti>10 then
 Begin
   nti:=0;
   if splist.count>MAxHist then
   Begin
    splist.delete(0);
    splist.Add(Pointer(sp));
   End
   Else
    splist.Add(Pointer(sp));
   if pclist.count>MAxHist then
   Begin
    pclist.delete(0);
    pclist.Add(Pointer(pc));
   End
   Else
    pclist.Add(Pointer(pc));
  End
  Else
   inc(nti);
{$ENDIF}
  newdebug.checkbreak(pc);
  Prepc:=pc;
  IF1:=z80_get_reg(Z80_REG_IFF1);
  if (IF1=0) or interruptserved then
      z80_lower_IRQ
  Else
  if not InterruptServed and (IF1=1) And (z80_get_reg(Z80_REG_IRQLine)=0) then
      Z80_Raise_irq($ff);
   if fnewbrain.debugging AND NOT STOPPED then
  Begin
   z80_stop_emulating;
   Stopped:=true;
  End;
 fnewbrain.thrEmulate.enabled:=true;
End;

//interface with emulation DLL
procedure TfNewBrain.SetParams;
Begin
      // Allow opcodes to be fetched from all of the ROM/RAM */
//      z80_map_fetch($0000, $ffff, @ROM);
 //   For i:=0 to 7 do
   //  z80_map_fetch(i*$2000, (i+1)*$2000-1, @NBMem.mainslots[i].memory );
      // Allow reads from all of the ROM/RAM */
//      z80_add_read($0000, $ffff, Z80_MAP_DIRECT, @ROM[0]);
      z80_add_read($0000, $ffff, Z80_MAP_HANDLED, @READBYTE);
      // Don't allow writes to 0x8000->0xffff (ROM), but allow RAM writes */
//      z80_add_write($0000, $7fff, Z80_MAP_DIRECT, @ROM[0]);
      z80_add_write($0000, $Ffff, Z80_MAP_HANDLED, @WRITEBYTE);
      z80_set_in(@Newin);
      z80_set_out(@Newout);
      z80_set_fetch_callback(@StepProc);
   //   z80_set_reti(@RETI);
End;

procedure TfNewBrain.Button1Click(Sender: TObject);
begin
  doemulation;
end;

constructor TfNewBrain.Create(Aowner: TComponent);
begin
  inherited;
  acTapeSelect.enabled:=false;
  acTapeManagement.enabled:=false;
  acDiskManagement.enabled:=false;
  acReset.enabled:=false;
  acStEmul.Enabled:=true;
  acRomSel.Enabled:=true;
end;

procedure TfNewBrain.Start1Click(Sender: TObject);
begin
  //Set Title
  if start1.Tag=0 then
  begin
   AppCaption:=caption;
   caption:=AppCaption+' ~ [ '+GetNewbrainDescr+' ]';
   start1.Tag:=1;
  end;
  //CREATE CLASSES
  acStEmul.enabled:=false;
  acReset.enabled:=true;
  WithExpansion1.Enabled:=false;
  WithCpm1.enabled:=false;
  acTapeSelect.enabled:=true;
  acTapeManagement.enabled:=true;
  acDiskManagement.enabled:=true;
  acRomSel.Enabled:=false;
  ShowDriveContents1.enabled:=true;
  SaveNewSystem1.enabled:=true;
  LoadBinaryFileInMemory1.enabled:=true;
  LoadTextFile1.enabled:=true;
  Restart1.enabled:=true;
  Disassembly1.enabled:=true;
  //Start Emulation
  BootOk:=false;
  try
   freeandnil(Cop420);
   freeandnil(nbio);
   freeandnil(nbmem);
   freeandnil(nbscreen);
   freeandnil(TapeInfo);
  except

  end;
  TapeInfo:=TTapeInfo.create;
  NBIO:=TNBInoutSupport.Create;
  COP420:=TCOP420.create;
  NBMem:=TNBMemory.Create;
  NBScreen:=TNbScreen.create;
  nbscreen.whitecolor:=GetColor(foptions.Fore.Selected);
  nbscreen.Blackcolor:=GetColor(foptions.Back.Selected);
  nbscreen.Newscr:=newscr;
  halted:=false;
  z80_init_memmap;
  nbmem.Fpath:=root+'\roms\';
  if not nbmem.LoadMem then
   nbmem.init
  else
    WriteP1('Ram/Rom Setup from .ini');
    //todo:print to info panel the loaded rom version

 { For j:=0 to $1fff do
   nbmem.Rom[j]:=nbmem.rom[$e000+j];}
  SetParams;        //Add Handlers
  z80_end_memmap;
  z80_reset; // reset the CPU */
  LoadCharset('CharSet2.chr');
 // newdebug.bpnts.items.add('B785');
 // newdebug.bpnts.items.add('E162');
//  newdebug.bpnts.items.add('E17c');
//  newdebug.bpnts.items.add('E17B');
//  bpnts.items.add('E025');
//  bpnts.items.add('E039');
 //newdebug.bpnts.items.add('6039');
// newdebug.bpnts.items.add('0000');
// newdebug.bpnts.items.add('0001');
  FullScreen1.Checked:=Not FullScreen1.Checked;
  FullScreen1Click(nil);
  if ShowDriveContents1.Checked and WithCPM1.Checked then
   ShowDriveContents1Click(nil);
  if not withcpm1.Checked then
  Begin
     acDiskManagement.Enabled:=false;
     ShowDriveContents1.Enabled:=false;
     SaveDisckNOW1.Enabled:=false;
  End;
  Resumeemul;
  fNewbrain.SetFocus;
end;

procedure TfNewBrain.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If key=vk_f7 then
  Begin
    if maxpn>1 then
     dec(maxpn);
    Exit;
  End;
  If key=vk_f8 then
  Begin
    inc(maxpn);
    Exit;
  End;
  If key=vk_f9 then
  Begin
    if nbdel>1 then
     dec(nbdel);
    Exit;
  End;
  If key=vk_f10 then
  Begin
    inc(nbdel);
    Exit;
  End;
  nbkeyboard.PCKeyUp(Key,Shift);
end;

procedure TfNewBrain.MakeTapeButtons;
Var btn:TButton;
    bw,bh:Integer;
Begin
 bw:=20;
 bh:=18;

 btn:=TButton.create(self);
 btn.Parent:=statusbar1;
 btn.left:=0;
 btn.top:=1;
 btn.width:=bw;
 btn.height:=bh;
 btn.font.Size:=6;
 btn.caption:='<<';
 btn.tag:=1;
 btn.onClick:=tpbtnClick;
 btn.Hint:='First file on tape';
 btn.ShowHint:=true;
 btn.TabStop:=false;

 btn:=TButton.create(self);
 btn.Parent:=statusbar1;
 btn.left:=bw+1;
 btn.top:=1;
 btn.width:=bw;
 btn.height:=bh;
 btn.font.Size:=6;
 btn.caption:='<';
 btn.tag:=2;
 btn.onClick:=tpbtnClick;
 btn.Hint:='Previous file on tape';
 btn.ShowHint:=true;
 btn.TabStop:=false;

 btn:=TButton.create(self);
 btn.Parent:=statusbar1;
 btn.left:=2*(bw+1);
 btn.top:=1;
 btn.width:=bw;
 btn.height:=bh;
 btn.font.Size:=6;
 btn.caption:='>';
 btn.tag:=3;
 btn.onClick:=tpbtnClick;
 btn.Hint:='Next file on tape';
 btn.ShowHint:=true;
 btn.TabStop:=false;

 btn:=TButton.create(self);
 btn.Parent:=statusbar1;
 btn.left:=3*(bw+1);
 btn.top:=1;
 btn.width:=bw;
 btn.height:=bh;
 btn.font.Size:=6;
 btn.caption:='>>';
 btn.tag:=4;
 btn.onClick:=tpbtnClick;
 btn.Hint:='Last file on tape';
 btn.ShowHint:=true;
 btn.TabStop:=false;

 btn:=TButton.create(self);
 btn.Parent:=statusbar1;
 btn.left:=4*(bw+1);
 btn.top:=1;
 btn.width:=bw;
 btn.height:=bh;
 btn.font.Size:=6;
 btn.caption:='^';
 btn.tag:=5;
 btn.onClick:=tpbtnClick;
 btn.Hint:='Eject tape';
 btn.ShowHint:=true;
 btn.TabStop:=false;

End;

procedure TfNewBrain.tpbtnClick(Sender: TObject);
Var btn:TButton;
Begin
  Self.activecontrol:=nil;
  if not (sender is tbutton) then exit;
  if not tapeinfo.TapeLoaded then
  Begin
   ShowMessage('Load A Tape First');
   exit;
  End;
  btn:=TButton(sender);
  Case btn.tag of
   1:Tapeinfo.FirstFile;
   2:Tapeinfo.PrevFile;
   3:Tapeinfo.NextFile;
   4:Tapeinfo.LastFile;
   5:Tapeinfo.Eject;
  End;
  fnewbrain.StatusBar1.Panels[0].Text:=Tapeinfo.GetNextFileName;
End;

procedure TfNewBrain.UpdateCheck1Click(Sender: TObject);
begin
 frmUpdate.show;
end;

procedure TfNewBrain.FormCreate(Sender: TObject);
begin
//   thremulate:=nil;
   timeBeginPeriod(1);
   Savedialog1.initialdir:=root+'Progs\';
   Mhz:=1;//4
   statusbar1.TabStop:=false;
//   statusbar1.onkeydown:=FormKeyDown;
//   statusbar1.onkeyup:=FormKeyUp;
   if fileexists(ExtractFilepath(application.exename)+'charmap0.cmp') then
    LoadCharMap
   else
    FillCharArray;
end;

Var Pretick:Cardinal=0;
    ems:Cardinal=0;

    Doesc:Boolean=true;

    //1.000.000 States is 1Mhz
    //13000 States is 13ms in 1MHz Clock
    //13000*4=52000 States is 13ms in 4Mhz Clock

    CopStates:Integer=52000;  //13ms @ 4mhz
    ClkStates:Integer=80000;  //20ms @ 4Mhz
    CopInt:Integer=0;
    ClkInt:Integer=0;

    //EMULATION IS FASTER BECAUSE WE 'REFRESH' THE SCREEN FASTER
    //SHOULD FIND OUT HOW MANY ms NEWBRAIN NEEDS TO REFRESH THE SCREEN
    //AND DELAY AS MUCH

    cEmuls:integer=0;
    sle:tstringlist=nil;
    St:Integer=0;
    emuled:Integer=0;

procedure TfNewBrain.DoEmulation;


   //calculation of newbrain interrupts
   //cop interrupt every 13 ms
   //clk interrupt every 20 ms
   Function GetNextIntStates:Integer;
   Var a,b:integer;
   Begin
    a:=copstates-copint;
    b:=clkstates-clkint;
    if a<b then
    Begin
      Result:=a;
      copint:=0;
      clkint:=clkint+a;
      nbio.CopInt:=true;
      fl:='Cop';
    End
    Else
    If a>b then
    Begin
      Result:=b;
      copint:=copint+b;
      clkint:=0;
      nbio.ClockInt:=true;
      fl:='Clock';
    End
    Else
    Begin
     Result:=a;
     CopInt:=0;
     ClkInt:=0;
     nbio.CopInt:=true;
     nbio.ClockInt:=true;
     fl:='Both';     
    End;
   End;

var dif:Real;
    idif:Integer;
Begin
  if sle=nil then sle:=tstringlist.create;
  if bootok and ((NBkey=$80) or (nbkey=0)) and cop420.KBEnabled then
     CheckKeyBoard;
  If Debugging then
  Begin
    if emuled>=st then
    Begin
     st:=GetNextIntStates;
     if InterruptServed then
     Begin
      Emuled:=0;
      InterruptServed:=false;
      if z80_get_reg(Z80_REG_IFF1)=1 then
       z80_raise_IRQ($ff); //do rst56= NB IS
     End;
    End;
    Stopped:=false;
    emuled:=emuled+Z80_Emulate(st-emuled);
  End
  Else
  Begin
     Emuled:=0;
     st:=GetNextIntStates;
     if InterruptServed then
     Begin
      InterruptServed:=false;
      if z80_get_reg(Z80_REG_IFF1)=1 then
       z80_raise_IRQ($ff); //do rst56= NB IS
     End;
    Z80_Emulate(st);
  End;
 { Inc(cEmuls);
  if cemuls<2000 then
   sle.add(inttostr(st)+'  '+fl)
  else
  Begin
   sle.savetofile('c:\emuls.txt');
   suspend1click(nil);
  End;
  }
  Ems:=Ems+st;//Tstates
  If GetTickCount-Pretick>=1000 then
  Begin
   Emuls:= Ems / 4000000;//4Mhz
   dif:=mhz-emuls;
   idif:=Abs(Trunc(Dif*10) div 2);
   if idif=0 then idif:=1;
   if (nbdel=0) and (idif>1) then
   Begin
    Inc(maxpn);
    inc(nbdel,3);
   End;
   if abs(dif)>0.09 then //check how precise we want the emulation to be
   Begin
    if emuls<Mhz then
    Begin
      if (nbdel-idif)>0 then Dec(NBDel,idif)
      else
       if nbdel>0 then dec(nbdel);
     End
     Else
      if emuls>Mhz then Inc(NBDel,idif);
   End;//if abs
   Ems:=0;
   PreTick:=GetTickCount;
  End; //gettickcount
End;

procedure TfNewBrain.Button3Click(Sender: TObject);
Var addr:String;
    k:Integer;
begin
 if InputQuery('ADDRESS', 'Prompt', Addr) then
 BEgin
   k:=NewDebug.bpnts.items.indexof(Addr);
   if k=-1 then
    NewDebug.bpnts.items.add(ADDR);
 End;
end;

procedure TfNewBrain.Button4Click(Sender: TObject);
begin
 if NewDebug.bpnts.ItemIndex>-1 then
   NewDebug.bpnts.Items.delete(NewDebug.bpnts.ItemIndex);
end;

procedure TfNewBrain.Exit1Click(Sender: TObject);
begin
 Close;
end;

function TfNewBrain.GetRoot: string;
begin
   Result := Extractfilepath(application.exename);
end;

procedure TfNewBrain.Debug2Click(Sender: TObject);
begin
 debug2.checked:= not debug2.checked;
 NewDebug.Visible:=debug2.checked;
end;

Function TfNewBrain.CreateOpenDialog:TOpenDialog;
Begin
  result:=TopenDialog.create(Self);
  result.Options:=[ofHideReadOnly,ofEnableSizing];
  result.filter:='NewBrain Files|*.sav';
  result.DefaultExt:='*.sav';
  Result.initialdir:=root+'Progs\';
  result.FilterIndex:=1;
End;

procedure TfNewBrain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
    AShift: TShiftState;
begin
   ashift:=[];
   if getasynckeystate(VK_RShift)<>0 then
    RShift:=true //send it in nbkeyboard
   else
     RShift:=false;
   if getasynckeystate(VK_RShift)<>0 then
    ashift:=ashift+[ssShift];
   if getasynckeystate(VK_LShift)<>0 then
    ashift:=ashift+[ssShift];
   if getasynckeystate(VK_LControl)<>0 then
    ashift:=ashift+[ssCtrl];
   if getasynckeystate(VK_RControl)<>0 then
    ashift:=ashift+[ssAlt];
   nbKeyboard.PCKeyDown(Key,AShift);
end;

Function ReverseBits(b1:Byte):Byte;
Begin
  Asm
      push ax
      push bx
      mov al,b1
      mov bl,0
      mov bh,8
@@ee: rcr al,1
      rcl bl,1
      dec bh
      jnz @@ee
      mov Result,bl
      pop bx
      pop ax
  End;
End;

var eer:integer=0;

procedure TfNewBrain.SuspendEmul;
begin
 IsSuspended:=true;
 //thrscreen.Enabled:=false;
 thremulate.Enabled:=False;
end;

procedure TfNewBrain.ResumeEmul;
begin
 IsSuspended:=False;
// thrscreen.Enabled:=true;
 thremulate.Enabled:=true
end;

procedure TfNewBrain.Suspend1Click(Sender: TObject);
begin
 Suspend1.checked:= not Suspend1.checked;
 if  Suspend1.checked then
  Suspendemul
 else
  resumeemul;
end;

procedure TfNewBrain.StartEmul;
begin
 IsSuspended:=False;
end;

procedure TfNewBrain.terminate1Click(Sender: TObject);
begin
 //FPS Check Menu
 Terminate1.Checked:=not Terminate1.Checked;
 if Assigned(nbscreen) then
  Nbscreen.ShowFps:=Terminate1.Checked;
end;

procedure TfNewBrain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if assigned(cop420) then
 Begin
  cop420.Closeprinter;
  cop420.CloseComm;
 End;
 freeandnil(cop420);
 SaveOptions;
end;

procedure TfNewBrain.SetMHz1Click(Sender: TObject);
var m:String;
begin
 m:=floattostr(mhz);
 if inputquery('Input Cpu Multiplier ','Value (Float) (Default 1, NB~0,7)',m) then
 Begin
   try
     Mhz:=strtofloat(m);
   Except
     if pos(',',m)>0 then
       m:=stringreplace(m,',','.',[])
     else
       m:=stringreplace(m,'.',',',[]);
     try
      Mhz:=strtofloat(m);
     Except
      Mhz:=1;
     End; 
   End;
 End;
end;

procedure TfNewBrain.FormShow(Sender: TObject);
var fRomVersion: TfRomVersion;
begin
   fRomVersion:= TfRomVersion.create(nil);
   try
    fRomVersion.getRomVersion(Vers,sVers);
    RefreshRomVer;
   finally
     fRomVersion.free;
   end;
   MakeTapeButtons;
   Debug2Click(Sender);
end;

procedure TfNewBrain.SetBasicFile1Click(Sender: TObject);
begin
  opendialog1.initialdir:=cop420.root;
  if opendialog1.Execute then
  Begin
   if Sametext(extractfileext(opendialog1.FileName),'.bin') then
    cop420.FileIsBinary:=true
   else
    cop420.FileIsBinary:=false;
//   BinaryFile1.checked:=cop420.FileIsBinary;
   cop420.filename:=Extractfilename(opendialog1.FileName);
   cop420.filename:=ChangeFileExt(cop420.filename,'');
   delay(1,0);
   kbuf:='LOAD';
   nbkeyboard.import(kbuf);
  End;

end;

procedure TfNewBrain.WriteP1(s:String);
begin
 fnewbrain.statusbar1.Panels[0].text:=s;
end;

procedure TfNewBrain.WriteP2(s:String);
begin
 fnewbrain.statusbar1.Panels[1].text:=s;
end;

procedure TfNewBrain.WriteP3(s:String);
begin
 fnewbrain.statusbar1.Panels[3].text:=s;
end;

procedure TfNewBrain.LoadTextFile1Click(Sender: TObject);
Var sl:Tstringlist;
    fpath:String;
    opdlg:TopenDialog;
begin
 fpath:=Extractfilepath(application.exename);
 opdlg:=TopenDialog.create(nil);
try
 opdlg.InitialDir:=fpath;
 if opdlg.execute then
 Begin
   sl:=Tstringlist.create;
   try
    sl.loadfromfile(opdlg.FileName);
   kbuf:=#13#10+'Open#0,0,"l200"'+#13#10+sl.text+
     #13#10+'Importing Finished...';
   finally
    sl.free;
   end;
   kbufc:=1;
   nbkeyboard.import(kbuf);
//   keybFileinp:=true;
//   doImport;
  // ShowMessage('Import Finished');
 End;
Finally
  opdlg.free;
End;
end;

procedure TfNewBrain.DesignChars1Click(Sender: TObject);
begin
  // Suspendemul;
   fchrdsgn:= Tfchrdsgn.create(nil);
   fchrdsgn.show;
end;

procedure TfNewBrain.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var s:String;
   i:Integer;
begin
 try
  if assigned(nbdiscctrl) then
  Begin
   nbdiscctrl.dir1:='';
   nbdiscctrl.dir2:='';
  End;
 Except
 End;
 IsSuspended:=true;
// sleep(1000); 
 try
  if assigned( dbgsl) then
  Begin
    if pclist<>nil then
    Begin
      dbgsl.add('------END-----');
      dbgsl.add('PC,SP HISTORY');
      For i:=0 to pclist.count-1 do
      Begin
        s:=format('PC: %d - SP: %d',[Integer(pclist[i]),Integer(splist[i])]);
        dbgsl.add(s);
      end;
    End;
    dbgsl.SaveToFile(AppPath+ 'ODS2.txt');
   End;
  Except
  End;
end;

procedure TfNewBrain.About1Click(Sender: TObject);
begin
 Fabout:=Tfabout.Create(Self);
 fabout.showmodal;
 Freeandnil(fabout);
end;

procedure TfNewBrain.SetLed(Sender:Tobject);
BEgin
 leddisp.text:=Nbscreen.ledtext;
End;

//Keyboard Mappings
procedure TfNewBrain.SaveCharMap;
Var i:Integer;
    sl:tstringlist;
begin
     sl:=tstringlist.create;
     try
       For i:=1 to 255 do
        sl.values['PC_'+inttostr(i)]:=inttostr(a[0,i]);
       sl.savetofile(ExtractFilepath(application.exename)+'charmap0.cmp');
       sl.clear;
       For i:=1 to 255 do
        sl.values['PC_'+inttostr(i)]:=inttostr(a[1,i]);
       sl.savetofile(ExtractFilepath(application.exename)+'charmap1.cmp');
     Finally
       sl.free;
     End;
end;

//Keyboard Mappings
procedure TfNewBrain.LoadCharMap;
Var i:Integer;
    sl:tstringlist;
begin
     sl:=tstringlist.create;
     try
       sl.Loadfromfile(ExtractFilepath(application.exename)+'charmap0.cmp');
       For i:=1 to 255 do
        a[0,i]:=strtoint(sl.values['PC_'+inttostr(i)]);
       sl.clear;
       sl.LoadFromfile(ExtractFilepath(application.exename)+'charmap1.cmp');
       For i:=1 to 255 do
         a[1,i]:=Strtoint(sl.values['PC_'+inttostr(i)]);
     Finally
       sl.free;
     End;
end;

procedure TfNewBrain.SaveCharMap1Click(Sender: TObject);
begin
  SaveCharMap;
end;

procedure TfNewBrain.TapeManagement1Click(Sender: TObject);
begin
   fTapeMgmt:= TfTapeMgmt.create(Self);
   try
    if fTapeMgmt.showmodal=MROk then
     if fTapeMgmt.Selected<>'' then
       tapeinfo.LoadTape(fTapeMgmt.Selected);
   Finally
    fTapeMgmt.free;
   End;
//  Seldir.InitialDir:=extractfilepath(Application.exename)+'\Basic\';
//  if seldir.Execute then
//   tapeinfo.LoadTape(extractfilename(seldir.Directory));
end;

procedure TfNewBrain.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
 exit;
 case msg.message of
  WM_KEYFIRST..WM_KEYLAST:
   ShowMEssage('hi');
 End;
 Handled:=false;
end;

procedure TfNewBrain.WithExpansion1Click(Sender: TObject);
begin
 WithExpansion1.Checked:=not WithExpansion1.checked;
end;

procedure TfNewBrain.WithCPM1Click(Sender: TObject);
begin
 WithCPM1.Checked:=not WithCPM1.checked;
end;

procedure TfNewBrain.WithPiboxClick(Sender: TObject);
begin
  Withpibox.Checked:=not WithPibox.Checked;
  if Withpibox.Checked then
  Begin
    WithExpansion1.Checked:=false;
//    WithCPM1.Checked:=false;
    WithExpansion1.Enabled:=false;
//    WithCPM1.Enabled:=false;
  end
  else
  begin
    WithExpansion1.Enabled:=true;
//    WithCPM1.Enabled:=true;
    WriteP2('');
  end;
end;

function TfNewBrain.GetOLDOS: Byte;
begin
   Result := nbmem.rom[$AD];
end;

procedure TfNewBrain.DiskManagement1Click(Sender: TObject);
Var dir1,dir2:String;
    t:integer;
begin
 dir1:=NBDiscCtrl.dir1;
 Dir2:=NBDiscCtrl.dir2;
 t:= fDiskMgmt.lb1.items.indexof(dir1);
 fDiskMgmt.lb1.itemindex:=t;
 if t=-1 then
  Dir1:='';
 t:= fDiskMgmt.lb2.items.indexof(dir2);
 fDiskMgmt.lb2.itemindex:=t;
 if t=-1 then
  Dir2:='';
 if fDiskMgmt.ShowModal=mrok then
 Begin
  if fDiskMgmt.lb1.Itemindex>-1 then
   dir1:=fDiskMgmt.lb1.items[fDiskMgmt.lb1.Itemindex]
  Else
   Dir1:='';
  if fDiskMgmt.lb2.Itemindex>-1 then
   dir2:=fDiskMgmt.lb2.items[fDiskMgmt.lb2.Itemindex]
  Else
   Dir2:='';
  NBDiscCtrl.dir1:=Dir1;
  NBDiscCtrl.dir2:=Dir2;
  ShowDriveContents1Click(nil);
 End;
end;

procedure TfNewBrain.FormDestroy(Sender: TObject);
begin
  timeEndPeriod(1);
end;

procedure TfNewBrain.SaveMemoryMap1Click(Sender: TObject);
Var m:TNBMemory;
begin
 m:=TNBMemory.create;
 m.SaveMem;
 m.free;
end;

procedure TfNewBrain.SaveMemorytoDisk1Click(Sender: TObject);
var stmem,bytelen:integer;
    f:TFilestream;
    nbb:byte;
    i:integer;
begin
  if start1.enabled then exit;
  stmem:= 642;//nb screen start
  bytelen:=11000;
  f:=tfilestream.Create(AppPath+'nbscreen.bin',fmCreate  );
  for i := stmem to stmem+bytelen-1  do
  Begin
   nbb:=nbmem.Rom[i];
   f.Write(nbb,1);
  end;
  f.Destroy;
end;

procedure TfNewBrain.Step;
begin
  DoOne:=true;
end;

Type tcolrec=record
               r:Byte;
               g:Byte;
               b:Byte;
             End;
     pColRec=^tcolrec;

Function TfNewBrain.GetColor(cl:TColor):TColor;
Var pc:pColRec;
    t:Byte;
Begin
  pc:=@cl;
  t:=pc.r;
  pc.r:=pc.b;
  pc.b:=t;
  result:=cl;
End;

procedure TfNewBrain.Options1Click(Sender: TObject);
begin
   if foptions.showmodal=mrok then
   Begin
    if assigned(nbscreen) then
    Begin
     nbscreen.whitecolor:=GetColor(foptions.Fore.Selected);
     nbscreen.Blackcolor:=GetColor(foptions.Back.Selected);
    End;
   End;
end;

procedure TfNewBrain.VFDisplayUp1Click(Sender: TObject);
begin
  VFDisplayUp1.checked:=not VFDisplayUp1.checked;
  if VFDisplayUp1.checked then
   panel1.align:=altop
  else
   panel1.align:=albottom; 
end;

procedure TfNewBrain.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
 ShowMessage(e.message+#13#10+'Emulator will be terminated');
 ExitProcess(0);
 Halt(0);
end;

procedure TfNewBrain.Help2Click(Sender: TObject);
//Var pth:String;
begin
 // pth:=ExtractFilePath(Application.exename);
//  ShowText('',pth+'help.txt','Newbrain Help');
 Shellexecute(Handle,'open',Pchar('newbrain.hlp'),nil,Pchar(Root),SW_SHOW);
end;

procedure TfNewBrain.OpenFile(Fname:String);
Begin
 Shellexecute(Handle,'open',Pchar(Fname),nil,Pchar(ExtractFilePath(Fname)),SW_SHOW);
End;

procedure TfNewBrain.NBDigitizer1Click(Sender: TObject);
begin
 If fileexists(Root+'tools\NBDigit2.exe') then
  OpenFile(Root+'tools\NBDigit2.exe')
 Else
  MessageDlg('Place NbDigit2.exe in the tools subdir.', mtWarning, [mbOK], 0);
end;

procedure TfNewBrain.CaptureRawScreen1Click(Sender: TObject);
begin
 if assigned(NBScreen) then
  nbscreen.capturetodisk;
end;

procedure TfNewBrain.CheckRoms1Click(Sender: TObject);
begin
 if fileexists(Root+'tools\CRoms.exe') then
  OpenFile(Root+'tools\CRoms.exe')
 else
  MessageDlg('Place CRoms.exe in the tools subdir.', mtWarning, [mbOK], 0);
end;

procedure TfNewBrain.Disassembly1Click(Sender: TObject);
begin
  ShowDisassembler;
end;

procedure TfNewBrain.ShowDriveContents1Click(Sender: TObject);
begin
 if sender<>nil then
   ShowDriveContents1.Checked:= not ShowDriveContents1.checked;
 if fDrvInfo=nil then
  fDrvInfo:=TfDrvInfo.create(Self);
 fDrvInfo.visible:=ShowDriveContents1.checked;
 fDrvInfo.FillInfo(-1);
end;

procedure TfNewBrain.FormResize(Sender: TObject);
begin
  if fDrvInfo.Visible then
   fDrvInfo.DoResize1;
end;

procedure TfNewBrain.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  if fDrvInfo.Visible then
   fDrvInfo.DoResize1;
end;

procedure TfNewBrain.ShowSplash(DoShow:Boolean=true);
begin
 If DoShow then
 Begin
  fsplash:=TFSplash.create(Self);
  fsplash.Show;
 End
 Else
  FSplash.free;
end;

procedure TfNewBrain.FormActivate(Sender: TObject);
begin
   OnActivate:=nil;
//   ShowSplash(True);
   LoadOptions;
   RefreshRomVer;
//   Delay(1,500);
//   ShowSplash(False);
   ShowInstructions1Click(nil);
   if frmupdate.CheckVersion then
     WriteP2('New Version exist!!! Please update.');

end;

procedure TfNewBrain.KeyboardMapping1Click(Sender: TObject);
begin
  if fileexists(Root+'tools\NBMapKeyb.exe') then
   OpenFile(Root+'tools\NBMapKeyb.exe')
  else
    MessageDlg('Place NBMapKeyb.exe in the tools subdir.', mtWarning, [mbOK], 0);
end;

procedure TfNewBrain.Reset1Click(Sender: TObject);
begin
   SuspendEmul;
   fnewbrain.bootok:=false;
   start1.enabled:=true;
   start1click(nil);
end;

procedure TfNewBrain.Restart1Click(Sender: TObject);
Var fn:String;
begin
 fn:=Application.exename;
 ShellExecute(0,'OPEN',Pchar(fn),nil,Pchar(ExtractFilepath(fn)),SW_SHOW);
 Close;
end;

procedure TfNewBrain.FullScreen1Click(Sender: TObject);
begin
 FullScreen1.Checked:=not FullScreen1.Checked;
 if Start1.enabled then exit; 
 If FullScreen1.Checked then
 Begin
  newscr.Options:=Newscr.Options+[doFullScreen];
  Debug2.enabled:=false;
  LedDisp.visible:=false;
 End
 else
 Begin
   newscr.Options:=Newscr.Options-[doFullScreen];
   Debug2.enabled:=True;
   LedDisp.visible:=true;
 End;
 newscr.Initialize;
end;

//Load a .LDR and the correspondin bin file to memory
procedure TfNewBrain.LoadBinaryFileInMemory1Click(Sender: TObject);
var sl:Tstringlist;
    sts,ses:String;
    st,se,i:Integer;
    sf:TFileStream;
    b:byte;
begin
  if OpenDialog2.execute then
  Begin
     sl:=Tstringlist.create;
     try
       sl.LoadFromFile(OpenDialog2.filename);
       sts:=sl.Values['ADDRESS'];
       ses:=sl.Values['LENGTH'];
       If GetValidInteger(sts,st) and GetValidInteger(ses,se) then
       Begin
          sf:=TFileStream.Create(ChangeFileext(OpenDialog2.filename,'.BIN'),fmOpenRead);
          try
            for i := 0 to se-1 do
            Begin
               sf.Read(b,1);
               nbmem.SetRom(st+i,b);
            end;
            ShowMessage('File Loaded at Address:'+sts+' ['+ses+' bytes]');
          finally
            sf.Free;
          end;
       end;
     finally
       sl.free;
     end;
  end;
end;

procedure TfNewBrain.SaveNewSystem1Click(Sender: TObject);
Var NewSysNm:String;
begin
  NewSysNm:='System1.dsk';
  If InputQuery('Sys File Name', 'Prompt', NewSysnm) then
   nbdiscctrl.SaveNewSystem(NewSysnm);
end;

Var DebugTimer:Integer;

procedure TfNewBrain.thrEmulateTimer(Sender: TObject; LagCount: Integer);
begin
    if LastError<>'' then
    Begin
      thrEmulate.Enabled:=false;
      try
        ShowMessage(LastError);
        LastError:='';
      finally
        thrEmulate.Enabled:=true;
      end;
    End;
    if not IsSuspended then
    Begin
      if debugging then
      Begin
        if doOne then
        Begin
         doone:=false;
         Doemulation;
        End;
        Sleep(10);
      End
      else
       doEmulation;
    End;
    //calculate delays for speed calibration
    inc(eer);
    if eer>5 then
    begin
      if debugging and slowrun then
       doone:=true;
     if not debugging and FNEWBRAIN.thrEmulate.Enabled then
      Sleep(NBDel)
     Else
      NBDel:=12; 
     eer:=0;
    end;
    IF Debug2.Checked then
    Begin
      if DebugTimer>10 then
      Begin
        Nbscreen.paintDebug;
        DebugTimer:=0
      end
      Else
       Inc(DebugTimer);
    end;
end;


procedure TfNewBrain.PeripheralSetup1Click(Sender: TObject);
begin
  if frmPerif.showmodal=mrOk then
  Begin
    if withMicropage or withdatapack or unbtypes.withpibox then
    Begin
      WithExpansion1.Checked:=false;
      WithCPM1.Checked:=false;
      WithExpansion1.Enabled:=false;
      WithCPM1.Enabled:=false;
      if withDatapack then
        WriteP2('Type "OPEN#0,10" for Datapack MENU')
      Else
        WriteP2('');
      Peripheralsetup1.Checked:=true;
    end
    else
    Begin
      WithExpansion1.Enabled:=false;
      WithCPM1.Enabled:=false;
      Peripheralsetup1.Checked:=false;
    end;
  End;
end;

Function TfNewbrain.GetNewbrainDescr:String;
Var v:String;
Begin
  v:='AD Ver.';
  v:=v+Inttostr(Vers)+'.'+inttostr(sVers);
  if WithCPM1.Checked then
   v:=v+' - CPM';
  if WithExpansion1.Checked then
   v:=v+' - EIM';
  if WithMicroPage then
   v:=v+' - MP';
  if WithDataPack then
   v:=v+' - DP';
  if unbtypes.WithPIBOX then
   v:=v+' - PIBOX';
  Result:= v;
end;


procedure TfNewbrain.LoadOptions;
Var Inif:TIniFile;
    pth:String;
begin
  pth:=ExtractFilePath(Application.Exename);
  Inif:=TIniFile.create(pth+'Config.Ini');
  try
   VFDisplayUp1.Checked:=inif.ReadBool('FILE','VFDisp',VFDisplayUp1.Checked);
   WithExpansion1.Checked:=inif.ReadBool('FILE','withExp',WithExpansion1.Checked);
   WithCPM1.Checked:=inif.ReadBool('FILE','withCPM',WithCPM1.Checked);
   ShowInstructions1.Checked:=inif.ReadBool('OPTIONS','ShowInst',ShowInstructions1.Checked);
   ShowDriveContents1.Checked:=inif.ReadBool('DISK','ShowDriveCont',ShowDriveContents1.Checked);
  Finally
     inif.free;
  End;
end;


procedure TfNewbrain.SaveOptions;
Var Inif:TIniFile;
    pth:String;
begin
  pth:=ExtractFilePath(Application.Exename);
  Inif:=TIniFile.create(pth+'Config.Ini');
  try
   inif.WriteBool('FILE','VFDisp',VFDisplayUp1.Checked);
   inif.WriteBool('FILE','withExp',WithExpansion1.Checked);
   inif.WriteBool('FILE','withCPM',WithCPM1.Checked);
   inif.WriteBool('OPTIONS','ShowInst',ShowInstructions1.Checked);
   inif.WriteBool('DISK','ShowDriveCont',ShowDriveContents1.Checked);
  Finally
     inif.free;
  End;
end;

procedure TfNewBrain.RefreshRomVer;
Var s:String;
Begin
 s:=Inttostr(Vers)+'.'+inttostr(sVers);
 WriteP3(s);
end;

procedure TfNewBrain.SaveDisckNOW1Click(Sender: TObject);
begin
  NBDiscCtrl.WriteDisk('temp.dsk');
end;

procedure TfNewBrain.SelectRomVersion1Click(Sender: TObject);
begin
   fRomVersion:= TfRomVersion.create(nil);
   try
    If fRomVersion.showmodal=mrOk then
    Begin
     Vers:=fRomVersion.MjVersion;
     sVers:=fRomVersion.MnVersion;
     RefreshRomVer;
    end;
   finally
      fRomVersion.free;
   end;
end;

procedure TfNewBrain.ShowInstructions1Click(Sender: TObject);
begin
 if sender<>nil then 
   ShowInstructions1.checked:= Not ShowInstructions1.checked;
 if ShowInstructions1.checked then
   ShowInstructions
 Else
   HideInstructions;
end;

procedure TfNewBrain.ShowInstructions;
Begin
  if Assigned(fInstructions) then
  Begin
   fInstructions.Bringtofront;
   fInstructions.Show;
   Exit;
  end;
  fInstructions:= TfInstructions.Create(Self);
  fInstructions.Show;
end;


procedure TfNewBrain.HideInstructions;
Begin
    fInstructions.free;
    fInstructions:=nil;
end;

Initialization
registerclass(tbutton);
AppPath:=ExtractFilePath(Application.ExeName);

Finalization


end.
