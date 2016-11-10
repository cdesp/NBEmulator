{
    <Grundy NewBrain Emulator Pro Made by Despsoft>
    Copyright (C) 2004  <Despinidis Chris>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
}

program NewBrain;

{$R *.dres}

uses
  Forms,
  New in 'New.pas' {fNewBrain},
  raze in 'raze.pas',
  UDISASM in 'UDISASM.PAS',
  uprogr in 'uprogr.pas' {frmProgress},
  ustrings in 'ustrings.pas',
  frmNewDebug in 'frmNewDebug.pas' {NewDebug},
  frmChrDsgn in 'frmChrDsgn.pas' {fchrdsgn},
  frmAbout in 'frmAbout.pas' {fAbout},
  frmTapeMgmt in 'frmTapeMgmt.pas' {fTapeMgmt},
  uNBMemory in 'uNBMemory.pas',
  uNBScreen in 'uNBScreen.pas',
  uNBTapes in 'uNBTapes.pas',
  uNBCop in 'uNBCop.pas',
  uNBTypes in 'uNBTypes.pas',
  uNBKeyboard2 in 'uNBKeyboard2.pas',
  uNBStream in 'uNBStream.pas',
  frmDiskMgmt in 'frmDiskMgmt.pas' {fDiskMgmt},
  uPCComms in 'uPCComms.pas' {dmCommd: TDataModule},
  frmOptions in 'frmOptions.pas' {foptions},
  frmDrvInfo in 'frmDrvInfo.pas' {fDrvInfo},
  frmSplash in 'frmSplash.pas' {fsplash},
  frmDisassembly in 'frmDisassembly.pas' {frmdis},
  uNBIO in 'uNBIO.pas',
  uNBCPM in 'uNBCPM.pas',
  frmRomVersion in 'frmRomVersion.pas' {fRomVersion},
  uAsm in 'uAsm.pas',
  uNBParser in 'uNBParser.pas',
  frmCPUWin in 'frmCPUWin.pas' {fCPUWin},
  frmOSWin in 'frmOSWin.pas' {fOSWin},
  uAsmPrj in 'uAsmPrj.pas',
  frmPeriferals in 'frmPeriferals.pas' {frmPerif},
  frmInstructions in 'frmInstructions.pas' {fInstructions},
  Vcl.Themes,
  Vcl.Styles,
  uUpdate in 'uUpdate.pas' {frmUpdate};

{$R *.RES}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Obsidian');
  Application.Title := 'NewBrain Emulator';
  Application.CreateForm(TfNewBrain, fNewBrain);
  Application.CreateForm(TdmCommd, dmCommd);
  Application.CreateForm(TfrmProgress, frmProgress);
  Application.CreateForm(TNewDebug, NewDebug);
  Application.CreateForm(TfTapeMgmt, fTapeMgmt);
  Application.CreateForm(TfDiskMgmt, fDiskMgmt);
  Application.CreateForm(Tfoptions, foptions);
  Application.CreateForm(TfDrvInfo, fDrvInfo);
  Application.CreateForm(TfrmPerif, frmPerif);
  Application.CreateForm(Tfsplash, fsplash);
  Application.CreateForm(TfrmUpdate, frmUpdate);
  Application.Run;
end.
