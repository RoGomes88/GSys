unit UCadConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TfrmCadConsulta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnPesquisa: TSpeedButton;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnApagar: TSpeedButton;
    btnConfirma: TSpeedButton;
    lblPesqPaciente: TLabel;
    edtPesquisa: TEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    Edit9: TEdit;
    Edit10: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConsulta: TfrmCadConsulta;

implementation

{$R *.dfm}

end.
