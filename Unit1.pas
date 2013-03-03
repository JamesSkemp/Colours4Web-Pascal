unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ShellAPI;

type
  TFormMain = class(TForm)
    ScrollBarRed: TScrollBar;
    EditRed: TEdit;
    ScrollBarGreen: TScrollBar;
    EditGreen: TEdit;
    ScrollBarBlue: TScrollBar;
    EditBlue: TEdit;
    LabelRed: TLabel;
    LabelGreen: TLabel;
    LabelBlue: TLabel;
    EditRGB: TEdit;
    PanelRed: TPanel;
    PanelGreen: TPanel;
    PanelBlue: TPanel;
    PanelRGB: TPanel;
    ButtonRandomize: TButton;
    GroupBoxAbout: TGroupBox;
    ButtonSite: TButton;
    ButtonEmail: TButton;
    MemoAbout: TMemo;
    ButtonRandomColour: TButton;
    GroupBoxSaved: TGroupBox;
    MemoSaved: TMemo;
    ButtonRestart: TButton;
    ButtonSave: TButton;
    procedure ScrollBarRedChange(Sender: TObject);
    procedure ScrollBarGreenChange(Sender: TObject);
    procedure ScrollBarBlueChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonRandomizeClick(Sender: TObject);
    procedure ButtonSiteClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonRandomColourClick(Sender: TObject);
    procedure ButtonRestartClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  s : string;
  t : string;
  i : integer;
  j : integer;
  r : integer;

implementation

{$R *.dfm}

procedure Dec2Hex(s: string);
begin
 t := '';
 if s = '0' then t := '00';
 if s = '51' then t := '33';
 if s = '102' then t := '66';
 if s = '153' then t := '99';
 if s = '204' then t := 'CC';
 if s = '255' then t := 'FF';
end;

procedure TFormMain.ScrollBarRedChange(Sender: TObject);
begin
 s := '';
 i := ScrollBarRed.Position * 51;
 Str(i,s);
 Dec2Hex(s);
 EditRed.Text := t;
 EditRGB.Text := '#' + EditRed.Text + EditGreen.Text + EditBlue.Text;
 PanelRed.Color := StringToColor('$000000' + EditRed.Text);
 PanelRGB.Color := StringToColor('$00' + EditBlue.Text + EditGreen.Text + EditRed.Text);
end;

procedure TFormMain.ScrollBarGreenChange(Sender: TObject);
begin
 s := '';
 i := ScrollBarGreen.Position * 51;
 Str(i,s);
 Dec2Hex(s);
 EditGreen.Text := t;
 EditRGB.Text := '#' + EditRed.Text + EditGreen.Text + EditBlue.Text;
 PanelGreen.Color := StringToColor('$0000' + EditGreen.Text + '00');
 PanelRGB.Color := StringToColor('$00' + EditBlue.Text + EditGreen.Text + EditRed.Text);
end;

procedure TFormMain.ScrollBarBlueChange(Sender: TObject);
begin
 s := '';
 i := ScrollBarBlue.Position * 51;
 Str(i,s);
 Dec2Hex(s);
 EditBlue.Text := t;
 EditRGB.Text := '#' + EditRed.Text + EditGreen.Text + EditBlue.Text;
 PanelBlue.Color := StringToColor('$00' + EditBlue.Text + '0000');
 PanelRGB.Color := StringToColor('$00' + EditBlue.Text + EditGreen.Text + EditRed.Text);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
 FormMain.ClientHeight := 316;
 FormMain.ClientWidth := 337;
 MemoSaved.Text := '';
 MemoAbout.Text := 'Colours4Web - James Skemp' + #13#10 + 'a - Random Red | s - Random Green | d - Random Blue' + #13#10 + 'f - Random all | r - Restart/Clear | e - Save';
end;

procedure TFormMain.ButtonRandomizeClick(Sender: TObject);
begin
 Randomize;
 j := (Random(6));
 ScrollBarRed.Position := j;
 i := (j * 51);
 Str(i,s);
 Dec2Hex(s);
 EditRed.Text := t;
 j := (Random(6));
 ScrollBarGreen.Position := j;
 i := (j * 51);
 Str(i,s);
 Dec2Hex(s);
 EditGreen.Text := t;
 j := (Random(6));
 ScrollBarBlue.Position := j;
 i := (j * 51);
 Str(i,s);
 Dec2Hex(s);
 EditBlue.Text := t;
 EditRGB.Text := '#' + EditRed.Text + EditGreen.Text + EditBlue.Text;
 PanelRed.Color := StringToColor('$000000' + EditRed.Text);
 PanelGreen.Color := StringToColor('$0000' + EditGreen.Text + '00');
 PanelBlue.Color := StringToColor('$00' + EditBlue.Text + '0000');
 PanelRGB.Color := StringToColor('$00' + EditBlue.Text + EditGreen.Text + EditRed.Text);
end;

procedure TFormMain.ButtonSiteClick(Sender: TObject);
begin
 ShellExecute(0,'open','mailto:homeofjrs@eml.cc','','',SW_SHOWNORMAL);
end;

procedure TFormMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If key = 'a' Then
  begin
   r := 1;
   ButtonRandomColourClick(FormMain);
  end;
 If key = 's' Then
  begin
   r := 2;
   ButtonRandomColourClick(FormMain);
  end;
 If key = 'd' Then
  begin
   r := 3;
   ButtonRandomColourClick(FormMain);
  end;
 If Key = 'f' Then ButtonRandomizeClick(FormMain);
 If Key = 'r' Then ButtonRestartClick(FormMain);
 If Key = 'e' Then ButtonSaveClick(FormMain);
end;

procedure TFormMain.ButtonRandomColourClick(Sender: TObject);
begin
 Randomize;
 If r = 1 then
  begin
   j := (Random(6));
   ScrollBarRed.Position := j;
   i := (j * 51);
   Str(i,s);
   Dec2Hex(s);
   EditRed.Text := t;
   PanelRed.Color := StringToColor('$000000' + EditRed.Text);
   PanelRGB.Color := StringToColor('$00' + EditBlue.Text + EditGreen.Text + EditRed.Text);
  end;
 If r = 2 then
  begin
   j := (Random(6));
   ScrollBarGreen.Position := j;
   i := (j * 51);
   Str(i,s);
   Dec2Hex(s);
   EditGreen.Text := t;
   PanelGreen.Color := StringToColor('$0000' + EditGreen.Text + '00');
   PanelRGB.Color := StringToColor('$00' + EditBlue.Text + EditGreen.Text + EditRed.Text);
  end;
 If r = 3 then
  begin
   j := (Random(6));
   ScrollBarBlue.Position := j;
   i := (j * 51);
   Str(i,s);
   Dec2Hex(s);
   EditBlue.Text := t;
   PanelBlue.Color := StringToColor('$00' + EditBlue.Text + '0000');
   PanelRGB.Color := StringToColor('$00' + EditBlue.Text + EditGreen.Text + EditRed.Text);
  end;
end;

procedure TFormMain.ButtonRestartClick(Sender: TObject);
begin
 ScrollBarRed.Position := 0;
 EditRed.Text := '00';
 ScrollBarGreen.Position := 0;
 EditGreen.Text := '00';
 ScrollBarBlue.Position := 0;
 EditBlue.Text := '00';
 EditRGB.Text := '#' + EditRed.Text + EditGreen.Text + EditBlue.Text;
 PanelRed.Color := StringToColor('$000000' + EditRed.Text);
 PanelGreen.Color := StringToColor('$0000' + EditGreen.Text + '00');
 PanelBlue.Color := StringToColor('$00' + EditBlue.Text + '0000');
 PanelRGB.Color := StringToColor('$00' + EditBlue.Text + EditGreen.Text + EditRed.Text);

end;

procedure TFormMain.ButtonSaveClick(Sender: TObject);
begin
 MemoSaved.Text := MemoSaved.Text + EditRGB.Text + ', '
end;

end.
