unit umainform;

(*
Command line: --debug to turn on debugging mode and logging
*)

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  StdCtrls, ComCtrls, ExtCtrls, Menus, PopupNotifier, eventlog, uscoreform,
  usplashform, thandicapgolfumlclass;// thandicapclassunit;

const
  C_EVENTLOGFILENAME = 'exactega.log';

const
  C_APPVERSION = '1.1.20120329';

type

  { Tmainform }

  Tmainform = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    chk_AdjustmentReport: TCheckBox;
    cmd_calculateadjusthandicap: TBitBtn;
    cmd_close: TBitBtn;
    cmd_scoreform: TBitBtn;
    cmd_calculateplayinghandicap: TBitBtn;
    edt_exactegahandicap: TEdit;
    edt_beststableford: TEdit;
    edt_exactegahandicap1: TEdit;
    edt_stablefordpoints: TEdit;
    Image1: TImage;
    img_icon: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_BogeyRating: TLabel;
    lbl_bogeyratinginfo: TLabel;
    lbl_TotalDistance: TLabel;
    lbl_totaldistanceinfo: TLabel;
    lbl_TeeColour: TLabel;
    lbl_coursename: TLabel;
    lbl_CourseNumTees: TLabel;
    lbl_coursenumteessinfo: TLabel;
    lbl_CoursePar: TLabel;
    lbl_CourseNumHoles: TLabel;
    lbl_coursenumholesinfo: TLabel;
    lbl_CourseRating: TLabel;
    lbl_SlopeRating: TLabel;
    lbl_clubname: TLabel;
    lbl_courseparinfo: TLabel;
    lbl_courseratinginfo: TLabel;
    lbl_exactegahandicap1: TLabel;
    lbl_exacthandicap1: TLabel;
    lbl_exacthandicapadjusted: TLabel;
    lbl_stablefordpoints: TLabel;
    lbl_preciseplayinghandicap: TLabel;
    lbl_exactegahandicap: TLabel;
    lbl_playinghandicap: TLabel;
    lbl_displayplayinghandicap: TLabel;
    lbl_exacthandicapresult: TLabel;
    lbl_beststableford: TLabel;
    lbl_exacthandicap: TLabel;
    lbl_sloperatinginfo: TLabel;
    MainMenu1: TMainMenu;
    mnu_helpaboutgolfml: TMenuItem;
    mnu_teecolour: TMenuItem;
    mnu_TeeDummy: TMenuItem;
    mnu_fileOpen: TMenuItem;
    mnu_course: TMenuItem;
    mnu_helpHCPClassHelp: TMenuItem;
    mnu_file: TMenuItem;
    mnu_fileexit: TMenuItem;
    mnu_help: TMenuItem;
    mnu_helpabout: TMenuItem;
    fileopen: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    mypopup: TPopupNotifier;
    ud_beststableford: TUpDown;
    procedure cmd_calculateadjusthandicapClick(Sender: TObject);
    procedure cmd_calculateplayinghandicapClick(Sender: TObject);
    procedure cmd_closeClick(Sender: TObject);
    procedure cmd_scoreformClick(Sender: TObject);
    procedure edt_beststablefordChange(Sender: TObject);
    procedure edt_exactegahandicapEditingDone(Sender: TObject);
    procedure edt_sloperatingChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Label1MouseEnter(Sender: TObject);
    procedure Label1MouseLeave(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure mnu_fileOpenClick(Sender: TObject);
    procedure mnu_helpaboutClick(Sender: TObject);
    procedure mnu_helpaboutgolfmlClick(Sender: TObject);
    procedure mnu_helpHCPClassHelpClick(Sender: TObject);
    procedure CourseClick(Sender: TObject);
    procedure TeePositionClick(Sender: TObject);
  private
    { private declarations }
    exacthandicap: single;
    playinghandicap: single;
    procedure ResetForm;
    procedure SetCourse(iCourse: integer);
    procedure SetTeePosition(iTee: integer);
    function IsNumeric(s: string): boolean;
    procedure CreateMenus(bCreateCourse: boolean);
    procedure FreeMenus(bDeleteCourse: boolean);
    procedure ShowPopup(aTitle: string; aString: string);
  public
    TeePosition: integer;
    bestscore: integer;
    HCPClass: THCPGolfUMLClass; //THCPClass;
    EventLog: TEventLog;
    { public declarations }
    procedure CalculateAndDisplayExactHandicap;
    procedure CalculateAndDisplayPlayingHandicap;
  end;

var
  mainform: Tmainform;

implementation

{$R *.lfm}

{ Tmainform }

procedure Tmainform.ShowPopup(aTitle: string; aString: string);
begin
  mypopup.Title := aTitle;
  mypopup.Text := aString;
  mypopup.showatpos(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure Tmainform.FreeMenus(bDeleteCourse: boolean);
var
  cCount: cardinal;
begin
  // You can only delete the last menu item!
  if bDeleteCourse then
    for cCount := 1 to mnu_course.Count do
      mnu_course.Delete(mnu_course.Count - 1);

  for cCount := 1 to mnu_teecolour.Count do
    mnu_teecolour.Delete(mnu_teecolour.Count - 1);
end;

procedure Tmainform.CreateMenus(bCreateCourse: boolean);
// parent=mnu_course
// parent=mnu_teecolour
var
  cCount: cardinal;
  tempMenu: TMenuItem;
begin
  try
    if bCreateCourse then
    begin
      for cCount := 0 to HCPClass.CourseCount - 1 do
      begin
        tempMenu := TMenuItem.Create(mnu_course);
        with tempMenu do
        begin
          Caption := HCPClass.CourseStringList[cCount];
          Tag := cCount;
          RadioItem := True;
          GroupIndex := 1;
          OnClick := @CourseClick;
        end;
        mnu_course.Add(tempMenu);// Add the menu item  ;
      end;
    end;

    for cCount := 0 to HCPClass.CourseTeeColourCount - 1 do
    begin
      tempMenu := TMenuItem.Create(mnu_teecolour);
      with tempMenu do
      begin
        Caption := HCPClass.TeeTitleStringList[cCount] +
          ' (' + HCPClass.TeeColourStringList[cCount] + ')';
        Tag := cCount;
        RadioItem := True;
        GroupIndex := 2;
        OnClick := @TeePositionClick;
      end;
      mnu_teecolour.Add(tempMenu);// Add the menu item  ;
    end;
  except
    ShowMessage('Sorry - a problem with creating menus');
  end;
end;

function Tmainform.IsNumeric(s: string): boolean;
var
  i: integer;
begin
  Result := (length(s) > 0);
  for i := 1 to length(s) do
    if not ((char(s[i]) in ['0'..'9']) or (char(s[i]) = DecimalSeparator) or
      (char(s[i]) = '-') or (char(s[i]) = '+')) then
    begin
      Result := False;
      exit;
    end;
end;

procedure Tmainform.CalculateAndDisplayPlayingHandicap;
begin
  EventLog.Info('CalculateAndDisplayPlayingHandicap called');
  // Formula: playinghandicap:=(exacthandicap * (sloperating/113)) + (courserating - coursepar);
  // Use HCPClass Method
  HCPClass.EGAHandicap := exacthandicap;
  playinghandicap := HCPClass.GetPlayingHandicap;
  lbl_preciseplayinghandicap.Caption := Format('(%f)', [playinghandicap]);
  playinghandicap := Int(playinghandicap + 0.5); // Round to whole number
  lbl_displayplayinghandicap.Caption := Format('%0.0f', [playinghandicap]);
end;

procedure Tmainform.TeePositionClick(Sender: TObject);
// Use common handler for all tee menu entries
var
  tempMenuItem: TMenuItem;
begin
  tempMenuItem := Sender as TMenuItem;
  tempMenuItem.Checked := True;
  SetTeePosition(tempMenuItem.Tag);
end;

procedure Tmainform.CourseClick(Sender: TObject);
// Use common handler for all course menu entries
var
  tempMenuItem: TMenuItem;
begin
  tempMenuItem := Sender as TMenuItem;
  tempMenuItem.Checked := True;
  SetCourse(tempMenuItem.Tag);
  FreeMenus(False); // Clear only the Tee Position menu items
  Application.ProcessMessages;
  CreateMenus(False); // Create the new Tee Position menu
end;

procedure Tmainform.CalculateAndDisplayExactHandicap;
begin
  EventLog.Info('CalculateAndDisplayExactHandicap called');
  bestscore := ud_beststableford.Position;
  // Use HCPClass method
  HCPClass.BestScore := bestscore;
  HCPClass.GetExactEGAHandicap;
  exacthandicap := HCPClass.EGAHandicap;

  // Formula: exacthandicap:=36 - ((bestscore-36) * (113/sloperating));
  lbl_exacthandicapresult.Caption := Format('%0.1f', [exacthandicap]);
  edt_exactegahandicap.Text := Format('%0.2f', [exacthandicap]);
  edt_exactegahandicap1.Text := Format('%0.2f', [exacthandicap]);
end;

procedure Tmainform.edt_beststablefordChange(Sender: TObject);
begin
  CalculateAndDisplayExactHandicap;
end;

procedure Tmainform.cmd_calculateplayinghandicapClick(Sender: TObject);
begin
  CalculateAndDisplayPlayingHandicap;
end;

procedure Tmainform.cmd_calculateadjusthandicapClick(Sender: TObject);
var
  aSingle: single;
  aInteger: integer;
  bInputOK: boolean;
begin
  EventLog.Info('Adjust Handicap button clicked');
  bInputOK := False;
  if TryStrToFloat(edt_exactegahandicap1.Text, aSingle) and
    TryStrToInt(edt_stablefordpoints.Text, aInteger) then
    bInputOK := True;
  if bInputOK then
  begin
    HCPClass.OldHandicap := aSingle;
    HCPClass.StablefordPoints := aInteger;
    HCPClass.AdjustHandicap;
    lbl_exacthandicapadjusted.Caption :=
      Format('%.1f (Cat.%d)', [HCPClass.NewHandicap, HCPClass.Category]);
    if chk_AdjustmentReport.Checked then
      HCPClass.ShowReport;
  end
  else
    MessageDlg('EGA Handicap or Stableford Points is not a valid number',
      mtError, [mbOK], 0);
end;

procedure Tmainform.cmd_closeClick(Sender: TObject);
begin
  Close;
end;

procedure Tmainform.cmd_scoreformClick(Sender: TObject);
begin
  EventLog.Info('Input Score Form (cmd_scoreform.Click) called');
  hide;
  scoreform.showmodal;
end;

procedure Tmainform.edt_exactegahandicapEditingDone(Sender: TObject);
var
  TrySingle: single;
begin
  if TryStrToFloat(edt_exactegahandicap.Text, TrySingle) then
    exacthandicap := StrToFloat(edt_exactegahandicap.Text)
  else
  begin
    EventLog.Info('Incorrect value for EGA Exact Handicap entered');
    ShowMessage('Incorrect value for EGA Exact Handicap!');
    edt_exactegahandicap.Text := Format('%.2f', [exacthandicap]);
    Exit;
  end;
  edt_exactegahandicap1.Text := edt_exactegahandicap.Text;
  CalculateAndDisplayPlayingHandicap;
end;

procedure Tmainform.edt_sloperatingChange(Sender: TObject);
begin
  CalculateAndDisplayExactHandicap;
end;

procedure Tmainform.FormCreate(Sender: TObject);
var
  LongOpt: boolean;
begin
  Caption := Application.Title;
  MyPopup.Title := Application.Title;
    {$IFDEF LINUX}
  Application.Title := Application.Title + ' (Linux';
    {$ENDIF}
    {$IFDEF WINDOWS}
  Application.Title := Application.Title + ' (Windows';
    {$ENDIF}
    {$ifdef CPU32}
  Application.Title := Application.Title + ' 32-bit)';
    {$ENDIF}
    {$ifdef CPU64}
  Application.Title := Application.Title + ' 64-bit)';
    {$ENDIF}

  if Application.Icon <> nil then
  begin
    Icon := Application.Icon;
    img_icon.Picture.Icon := Application.Icon;
  end;
  // Application.StopOnException:=True;
  HCPClass := THCPGolfUMLClass.Create;
  if HCPClass.InitOK = False then
    HALT;
  EventLog := TEventLog.Create(nil);
  {$IFDEF LINUX}
  EventLog.Filename := '/var/log/' + C_EVENTLOGFILENAME;
  {$ELSE}
  EventLog.Filename := Application.Location + C_EVENTLOGFILENAME;
  {$ENDIF}

  EventLog.LogType := ltFile;
  LongOpt := True;
  // Command line for debugging:  --debug
  if Application.FindOptionIndex('debug', LongOpt) <> -1 then
  begin
    EventLog.Active := True; // Application event logging via file
    EventLog.Info('Application started');
    // Turn on Handicap Class logging.
    HCPClass.LogFileName := Application.Location + 'HCPClass.log';
    HCPClass.DebugMode := True; // Also sets class logging on via file
  end;

  // Check to see if the default xml file is available
  // If so, then load it.  If not then prompt for an input file via a dialog
  // If no input file, then halt.
  if FileExists(Application.Location + 'coursedata.xml') then
  begin
    HCPClass.CourseXMLPath := Application.Location + 'coursedata.xml';
    HCPClass.GetCourseInfoFromFile;
    ResetForm;
  end
  else
  if fileopen.Execute then // User opened an xml file
  begin
    HCPClass.CourseXMLPath := fileopen.Filename;
    HCPClass.GetCourseInfoFromFile;
    ResetForm;
  end
  else // User cancelled the dialog
  begin
    ShowMessage('No input file available.  Quitting');
    Halt;
  end;

end;

procedure Tmainform.FormDestroy(Sender: TObject);
begin
  EventLog.Free;
end;

procedure Tmainform.Label1MouseEnter(Sender: TObject);
var
  s: string;
begin
  s := 'Enter your exact EGA handicap and stableford score below.' + CR;
  s += 'Be sure to select the correct course and tee position from the menus first';
  ShowPopup(Label1.Caption, s);
end;

procedure Tmainform.Label1MouseLeave(Sender: TObject);
begin
  mypopup.hide;
end;

procedure Tmainform.Label2MouseEnter(Sender: TObject);
var
  s: string;
begin
  s := 'Enter your exact EGA handicap below.' + CR;
  s += 'Be sure to select the correct course and tee position from the menus first';
  ShowPopup(Label2.Caption, s);
end;

procedure Tmainform.Label2MouseLeave(Sender: TObject);
begin
  myPopup.Hide;
end;

procedure Tmainform.Label3MouseEnter(Sender: TObject);
var
  s: string;
begin
  s := 'Click the button below to enter a best-of-3 scorecard' + CR;
  s += 'Be sure to select the correct course and tee position from the menus first';
  ShowPopup(Label3.Caption, s);
end;

procedure Tmainform.Label3MouseLeave(Sender: TObject);
begin
  mypopup.hide;
end;

procedure Tmainform.mnu_fileOpenClick(Sender: TObject);
begin
  fileopen.InitialDir := Application.Location;
  if fileopen.Execute then
  begin
    HCPClass.Reset;
    HCPClass.CourseXMLPath := fileopen.Filename;
    HCPClass.GetCourseInfoFromFile;
    FreeMenus(True);  // Clear Course and Tee Position menu items
    ResetForm;
  end;
end;

procedure Tmainform.mnu_helpaboutClick(Sender: TObject);
begin
  EventLog.Info('Helpform Show');
  Application.ProcessMessages;
  splashform.showmodal;
end;

procedure Tmainform.mnu_helpaboutgolfmlClick(Sender: TObject);
var
  s: string;
begin
  s := 'GolfML is a text-based human-readable file format used to exchange golf data ';
  s += 'between applications and web sites.' + LineEnding + LineEnding;
  s += 'Golf course information such as scorecard ';
  s += 'and yardage books, or players scores and statistics are the most common information carried by GolfML.';
  messagedlg(s, mtInformation, [mbOK], 0);
end;

procedure Tmainform.mnu_helpHCPClassHelpClick(Sender: TObject);
begin
  HCPClass.ShowHelp;
end;

procedure Tmainform.SetCourse(iCourse: integer);
begin
  HCPClass.CourseIndex := iCourse;
  lbl_CourseNumHoles.Caption := Format('%d', [HCPClass.CourseHoleCount]);
  lbl_CourseNumTees.Caption := Format('%d', [HCPClass.CourseTeeColourCount]);
  lbl_CoursePar.Caption := Format('%d', [HCPClass.CoursePar]);
  lbl_coursename.Caption := HCPClass.CourseStringList[iCourse];
  SetTeePosition(0);
end;

procedure Tmainform.SetTeePosition(iTee: integer);
var
  sColour: string;
begin
  EventLog.Info('SetTeePosition called');
  HCPClass.TeeColourIndex := iTee;
  lbl_CourseRating.Caption := Format('%.1f', [HCPClass.CourseRating]);
  lbl_SlopeRating.Caption := Format('%d', [HCPClass.SlopeRating]);
  lbl_BogeyRating.Caption := Format('%.1f', [HCPClass.BogeyRating]);
  lbl_TotalDistance.Caption := Format('%dm', [HCPClass.TotalTeeDistance]);
  sColour := HCPClass.TeeColourStringList[iTee];
  lbl_TeeColour.Caption := sColour + ' tees';
  lbl_TeeColour.Caption := lbl_TeeColour.Caption + ' (' +
    HCPClass.TeeGenderStringList[iTee] + ')';
  lbl_TeeColour.Font.Color := clBlack;
  lbl_TeeColour.Color := clDefault;
  if ComPareText(sColour, 'white') = 0 then
    lbl_TeeColour.Color := clWhite;
  if ComPareText(sColour, 'yellow') = 0 then
    lbl_TeeColour.Color := clYellow;
  if ComPareText(sColour, 'gold') = 0 then
    lbl_TeeColour.Color := clOlive;
  if ComPareText(sColour, 'red') = 0 then
  begin
    lbl_TeeColour.Color := clRed;
    lbl_TeeColour.Font.Color := clWhite;
  end;
  if ComPareText(sColour, 'blue') = 0 then
  begin
    lbl_TeeColour.Color := clNavy;
    lbl_TeeColour.Font.Color := clWhite;
  end;
  if ComPareText(sColour, 'black') = 0 then
  begin
    lbl_TeeColour.Color := clBlack;
    lbl_TeeColour.Font.Color := clWhite;
  end;
  CalculateAndDisplayExactHandicap;
  CalculateAndDisplayPlayingHandicap;
end;

procedure Tmainform.ResetForm;
begin
  EventLog.Info('ResetForm called');
  CreateMenus(True);
  bestscore := 36;
  lbl_clubname.Caption := HCPClass.ClubName;
  lbl_coursename.Caption := HCPClass.CourseStringList[0];
  SetCourse(0);
  SetTeePosition(0);
  ud_beststableford.Position := bestscore;
  CalculateAndDisplayExactHandicap;
  CalculateAndDisplayPlayingHandicap;

end;

end.
