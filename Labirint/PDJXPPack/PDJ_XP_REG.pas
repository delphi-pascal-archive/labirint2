unit PDJ_XP_REG;

{
*****************************
*         PDJTools          *
*****************************
}

// Register and Design Unit for PDJXPPack

//..............................................................................
// Copyright © 2000-2003 by PDJTools
// Author Peric Djordje
// for D5,D6,D7
//..............................................................................
// http://www.ptt.yu/korisnici/p/e/pericddn/
// E-mail: pericddn@ptt.yu, pericddn@neobee.net
// If You find any errors or rubbish in PDJ_XP_REG.pas please send me Your suggest or Reclamation.


{$I PDJ.INC}

interface

uses
  Windows, Messages, SysUtils, Classes, Controls,
  {$IFDEF PDJ_NO_DSGNINTF}
  DesignIntf,
  DesignEditors;
  {$ELSE}
  DsgnIntf;
  {$ENDIF}

{$R PDJ_XPPackReg.res}

procedure Register;

implementation

uses
  PDJ_XPB,PDJ_XPRB,PDJ_XPPB,PDJ_XPC,PDJ_XPSpB,PDJ_XPGB,PDJ_XPRGB,PDJ_XPCHL,

  PDJ_XPDBC,PDJ_XPDBG,PDJ_XPHD,

  PDJ_XPEB,

  PDJ_XP_HE,

  PDJ_XPCS,

  PDJ_XPEDate,PDJ_XPDBEDate,

  PDJ_XPInCa;


procedure Register;
begin

  RegisterComponents('PDJXPPack',
  [TPDJXPButton,TPDJXPCheckBox,TPDJXPRadioButton,TPDJXPProgressBar,
  TPDJXPComboBox,TPDJXPEdit,TPDJXPSpeedButton,TPDJXPGroupBox,TPDJXPRadioGroup,
  TPDJXPListBox,TPDJXPMemo,TPDJXPCheckListBox,

  TPDJXPHeader,TPDJXPCollapsePanel,

  TPDJXPDBEdit,TPDJXPDBComboBox,TPDJXPDBListBox,TPDJXPDBMemo,TPDJXPDBCheckBox,TPDJXPDBGrid,

  TPDJXPEditBtn,TPDJXPDBEditBtn,

  TPDJXPEditDate,TPDJXPDBEditDate,

  TPDJXPCalendar,

  TPDJXPMaskEdit,

  TPDJXPDBNavigator]);

//******************************************************************************
// register Hint editor

  RegisterPropertyEditor(TypeInfo(String), TPDJXPButton, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPCheckBox, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPRadioButton, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPProgressBar, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPComboBox, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPEdit, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPSpeedButton, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPGroupBox, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPRadioGroup, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPListBox, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPCheckListBox, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPHeader, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPCollapsePanel, 'Hint', TPDJXPHintEditor);

  RegisterPropertyEditor(TypeInfo(String), TPDJXPDBEdit, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPDBComboBox, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPDBListBox, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPDBCheckBox, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPMemo, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPDBMemo, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPDBEditBtn, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TEButton, 'Hint', TPDJXPHintEditor);
  RegisterPropertyEditor(TypeInfo(String), TPDJXPDBGrid, 'Hint', TPDJXPHintEditor);

  RegisterComponentEditor(TPDJXPDBGrid, TPDJXPGridEditor);

end;

end.
