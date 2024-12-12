unit UConsultaPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.StdCtrls;

type
  TfrmConsultaPaciente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtPesquisa: TEdit;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    pgPaciente: TPageControl;
    tabDados: TTabSheet;
    tabEnd: TTabSheet;
    tabExame: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Memo1: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Edit18: TEdit;
    Label21: TLabel;
    Edit17: TEdit;
    Label20: TLabel;
    Edit16: TEdit;
    Label19: TLabel;
    Label15: TLabel;
    Edit12: TEdit;
    Label16: TLabel;
    Edit13: TEdit;
    Label17: TLabel;
    Edit14: TEdit;
    Label18: TLabel;
    Edit15: TEdit;
    DateTimePicker2: TDateTimePicker;
    Label14: TLabel;
    GroupBox2: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Edit11: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    DateTimePicker3: TDateTimePicker;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaPaciente: TfrmConsultaPaciente;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmConsultaPaciente.FormShow(Sender: TObject);
begin
  pgPaciente.ActivePageIndex := 0;
end;

end.
