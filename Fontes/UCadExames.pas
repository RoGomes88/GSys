unit UCadExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons;

type
  TfrmCadExame = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblPesqPaciente: TLabel;
    edtPesPaciente: TEdit;
    Panel3: TPanel;
    gpAmostra: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edtLPS: TEdit;
    edtPCR: TEdit;
    edtBNP: TEdit;
    edtTNF: TEdit;
    edtIL1: TEdit;
    edtIL6: TEdit;
    edtIL10: TEdit;
    edtData: TDateTimePicker;
    SpeedButton1: TSpeedButton;
    btnConfirma: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure lblPesqPacienteDblClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure LimpaCampo;
    procedure HabilitaDesabilitaCampos;
    procedure CarregaCapos;
    procedure AlteraExame;
    procedure InsereExame;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadExame: TfrmCadExame;
  sOpcao: String;

implementation

{$R *.dfm}

uses UMsg, UDM, UGlobal;

procedure TfrmCadExame.AlteraExame;
begin
  with dm.qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add(AlteraRegistro('PAC_EXAMES'));
      SQL.Add(' WHERE ID_PACIENTE = :Id_Paciente');
      Parameters.ParamByName('Id_Paciente').Value := StrToInt(edtPesPaciente.Text);
      Parameters.ParamByName('DATA').Value := edtData.DateTime;
      Parameters.ParamByName('TNF_ALFA').Value := StrToFloat(edtTNF.Text);
      Parameters.ParamByName('IL1').Value := StrToFloat(edtIL1.Text);
      Parameters.ParamByName('IL6').Value := StrToFloat(edtIL6.Text);
      Parameters.ParamByName('IL10').Value := StrToFloat(edtIL10.Text);
      Parameters.ParamByName('BNP').Value := StrToFloat(edtBNP.Text);
      Parameters.ParamByName('PCR').Value := StrToFloat(edtPCR.Text);
      Parameters.ParamByName('LPS').Value := StrToFloat(edtLPS.Text);
    end;
end;

procedure TfrmCadExame.btnConfirmaClick(Sender: TObject);
begin
  if (sOpcao = 'Primeira') then
    AlteraExame
  else
    InsereExame;
  if Not(GravaRegistro) then
    begin
      ShowMessage('Não foi possível alterar os dados. Contate o administrador do Sistema!');
      Exit;
    end;
  HabilitaDesabilitaCampos;
  LimpaCampo;
end;

procedure TfrmCadExame.CarregaCapos;
begin
  edtData.Date := dm.qryAux.FieldByName('Data').AsDateTime;
  edtTNF.Text := FloatToStr(dm.qryAux.FieldByName('TNF_Alfa').AsFloat);
  edtBNP.Text := FloatToStr(dm.qryAux.FieldByName('BNP').AsFloat);
  edtIL1.Text := FloatToStr(dm.qryAux.FieldByName('IL1').AsFloat);
  edtPCR.Text := FloatToStr(dm.qryAux.FieldByName('PCR').AsFloat);
  edtIL6.Text := FloatToStr(dm.qryAux.FieldByName('IL6').AsFloat);
  edtLPS.Text := FloatToStr(dm.qryAux.FieldByName('LPS').AsFloat);
  edtIL10.Text := FloatToStr(dm.qryAux.FieldByName('IL10').AsFloat);
end;

procedure TfrmCadExame.FormShow(Sender: TObject);
begin
  HabilitaDesabilitaCampos;
  lblPesqPaciente.Caption := 'Código do Cliente: ';
end;

procedure TfrmCadExame.HabilitaDesabilitaCampos;
begin
  edtData.Enabled := not(edtData.Enabled);
  edtTNF.Enabled := not(edtTNF.Enabled);
  edtBNP.Enabled := not(edtBNP.Enabled);
  edtIL1.Enabled := not(edtIL1.Enabled);
  edtPCR.Enabled := not(edtPCR.Enabled);
  edtIL6.Enabled := not(edtIL6.Enabled);
  edtLPS.Enabled := not(edtLPS.Enabled);
  edtIL10.Enabled := not(edtIL10.Enabled);
end;

procedure TfrmCadExame.InsereExame;
begin
  with dm.qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add(InsereRegistro('PAC_EXAMES'));
      Parameters.ParamByName('Id_Paciente').Value := StrToInt(edtPesPaciente.Text);
      Parameters.ParamByName('DATA').Value := edtData.DateTime;
      Parameters.ParamByName('TNF_ALFA').Value := StrToFloat(edtTNF.Text);
      Parameters.ParamByName('IL1').Value := StrToFloat(edtIL1.Text);
      Parameters.ParamByName('IL6').Value := StrToFloat(edtIL6.Text);
      Parameters.ParamByName('IL10').Value := StrToFloat(edtIL10.Text);
      Parameters.ParamByName('BNP').Value := StrToFloat(edtBNP.Text);
      Parameters.ParamByName('PCR').Value := StrToFloat(edtPCR.Text);
      Parameters.ParamByName('LPS').Value := StrToFloat(edtLPS.Text);
    end;
end;


procedure TfrmCadExame.lblPesqPacienteDblClick(Sender: TObject);
begin
  if (lblPesqPaciente.Caption = 'Registro do Paciente:') then
    lblPesqPaciente.Caption := 'Código do Paciente: '
  else
    lblPesqPaciente.Caption := 'Registro do Paciente:';
end;

procedure TfrmCadExame.LimpaCampo;
begin
  edtData.Date := Now;
  edtTNF.Clear;
  edtBNP.Clear;
  edtIL1.Clear;
  edtPCR.Clear;
  edtIL6.Clear;
  edtLPS.Clear;
  edtIL10.Clear;
end;

procedure TfrmCadExame.SpeedButton1Click(Sender: TObject);
var
  nID_PAC: Integer;
begin
  nID_PAC := 0;
  if (Trim(edtPesPaciente.Text) = '') then
    begin
      ShowMessage('Informe um Paciente para o Lançamento dos Exames.');
      edtPesPaciente.SetFocus;
      Exit;
    end;
  if (lblPesqPaciente.Caption = 'Registro do Paciente:') then
    begin
      with dm.qryAux do
        begin
          Close;
          SQL.Clear;
          SQL.Add(' SELECT ID_PACIENTE FROM PACIENTE ');
          SQL.Add(' WHERE RG_HC = :RG ');
          Parameters.ParamByName('RG').Value := edtPesPaciente.Text;
        end;
        try
          dm.Conexao.Connected := True;
          dm.qryAux.Open;
          nID_PAC := dm.qryAux.FieldByName('ID_PACIENTE').AsInteger;
          dm.Conexao.Connected := False;
        except
          ShowMessage('Não Possivel localizar o Paciente. Tente novamente mais tarde!');
          Exit;
        end;
    end;
  with dm.qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' SELECT * FROM PAC_EXAMES ');
      SQL.Add(' WHERE ID_PACIENTE = :ID ');
      if nID_PAC > 0 then
        begin
          Parameters.ParamByName('ID').Value := nID_PAC;
          edtPesPaciente.Text := IntToStr(nID_PAC);
          lblPesqPaciente.Caption := 'Código do Paciente: ';
        end
      else
        Parameters.ParamByName('ID').Value := StrToInt(edtPesPaciente.Text);
    end;

  try
    dm.Conexao.Connected := True;
    dm.qryAux.Open;
    if (dm.qryAux.RecordCount > 0) then
      begin
        frmMensagem := TfrmMensagem.Create(Application);
        frmMensagem.ShowModal;
        sOpcao := frmMensagem.sOpcao;
        FreeAndNil(frmMensagem);
        gpAmostra.Visible := True;
        if (sOpcao = 'Segunda') then
          begin
            gpAmostra.Caption := 'Segunda Amostra';
            HabilitaDesabilitaCampos;
            Exit;
          end
        else
          begin
            gpAmostra.Caption := 'Primeira Amostra';
            CarregaCapos;
            HabilitaDesabilitaCampos;
          end;
      end
    else
      begin
        gpAmostra.Caption := 'Primeira Amostra';
        gpAmostra.Visible := True;
        HabilitaDesabilitaCampos;
      end;
  except

  end;
end;

end.
