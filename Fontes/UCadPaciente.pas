unit UCadPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, System.StrUtils;

type
  TfrmCadPaciente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edtPesquisa: TEdit;
    btnPesquisa: TSpeedButton;
    Panel3: TPanel;
    pqPaciente: TPageControl;
    tabDados: TTabSheet;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtNome: TEdit;
    edtRegistro: TEdit;
    edtDataNasc: TDateTimePicker;
    mmTpDoenca: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtEnd: TEdit;
    edtComplemento: TEdit;
    edtCidade: TEdit;
    edtBairro: TEdit;
    edtTelefone: TEdit;
    edtCelular: TEdit;
    edtRecado: TEdit;
    edtContato: TEdit;
    cbEstado: TComboBox;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnApagar: TSpeedButton;
    btnConfirma: TSpeedButton;
    lblPesqPaciente: TLabel;
    procedure btnInserirClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblPesqPacienteDblClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
  private
    procedure PesquisaPaciente;
    procedure PesquisaPacienteEnd;
    procedure InserePaciente;
    procedure InsereEndereco;
    procedure AlteraPaciente;
    procedure AlteraEndereco;
    procedure DeletaRegistro(sTabela: String);
    procedure LimpaCampos;
    procedure HabiliraDesabilitaCampos;
    procedure MostraDadosPaciente;
    procedure MostraDadosPacienteEnd;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPaciente: TfrmCadPaciente;
  bAlterar: Boolean;

implementation

uses uDM, UGlobal;

{$R *.dfm}

procedure TfrmCadPaciente.AlteraEndereco;
begin
  with dm.qryAux do
    begin
      SQL.Clear;
      SQL.Add(AlteraRegistro('PAC_END'));
      SQL.Add(' WHERE ID_PACIENTE = :Id_Paciente');
      Parameters.ParamByName('Id_Paciente').Value := StrToInt(edtPesquisa.Text);
      Parameters.ParamByName('Telefone').Value := edtTelefone.Text;
  	  Parameters.ParamByName('Celular').Value := edtCelular.Text;
      Parameters.ParamByName('Recado').Value := edtRecado.Text;
	    Parameters.ParamByName('Nome_Rec').Value := edtContato.Text;
	    Parameters.ParamByName('Endereco').Value := edtEnd.Text;
	    Parameters.ParamByName('Complemento').Value := edtComplemento.Text;
	    Parameters.ParamByName('Cidade').Value := edtCidade.Text;
	    Parameters.ParamByName('Bairro').Value := edtBairro.Text;
      if cbEstado.ItemIndex <> 0 then
	      Parameters.ParamByName('Estado').Value := cbEstado.Text
      else
        Parameters.ParamByName('Estado').Value := 'NF';
    end;
end;

procedure TfrmCadPaciente.AlteraPaciente;
begin
  
end;

procedure TfrmCadPaciente.btnApagarClick(Sender: TObject);
begin
  if (Trim(edtNome.Text) = '') then
    begin
      ShowMessage('Faça uma pesquisa antes de Clicar no botão Apagar.');
      edtPesquisa.SetFocus;
      Exit;
    end
  else
    begin
      if (MessageDlg('Deseja mesmo EXCLUIR o registro?',mtInformation,[mbYes,mbNo],0) = mrYes) then
        begin
          DeletaRegistro('PACIENTE');
          if Not(GravaRegistro) then
            begin
              ShowMessage('Não foi possível EXCLUIR os dados. Contate o administrador do Sistema!');
              Exit;
            end;
          DeletaRegistro('PAC_END');
          if Not(GravaRegistro) then
            begin
              ShowMessage('Não foi possível EXCLUIR os dados. Contate o administrador do Sistema!');
              Exit;
            end
          else
            begin
              ShowMessage('Registros apagados com Sucesso!');
            end;
        end;
        LimpaCampos;
    end;
end;

procedure TfrmCadPaciente.btnConfirmaClick(Sender: TObject);
begin
  if (bAlterar) then
    begin
      AlteraPaciente;
      if Not(GravaRegistro) then
        begin
          ShowMessage('Não foi possível alterar os dados. Contate o administrador do Sistema!');
          Exit;
        end;
      AlteraEndereco;
      if Not(GravaRegistro) then
        begin
          ShowMessage('Não foi possível alterar os dados. Contate o administrador do Sistema!');
          Exit;
        end
      else
      begin
        ShowMessage('Registros alterados com Sucesso!');
      end;
    end
  else
    begin
      InserePaciente;
      if Not(GravaRegistro) then
        begin
          ShowMessage('Não foi possível gravar os dados. Contate o administrador do Sistema!');
          Exit;
        end;
      InsereEndereco;
      if Not(GravaRegistro) then
        begin
          ShowMessage('Não foi possível gravar os dados. Contate o administrador do Sistema!');
          Exit;
        end
      else
        begin
          ShowMessage('Registros gravados com Sucesso!');
        end;
    end;
    LimpaCampos;
    HabiliraDesabilitaCampos;
end;

procedure TfrmCadPaciente.btnEditarClick(Sender: TObject);
begin
  if (Trim(edtNome.Text) = '') then
    begin
      ShowMessage('Faça uma pesquisa antes de Clicar no botão alterar.');
      edtPesquisa.SetFocus;
      Exit;
    end
  else
    begin
      bAlterar := True;
      HabiliraDesabilitaCampos;
    end;
end;

procedure TfrmCadPaciente.btnInserirClick(Sender: TObject);
begin
  bAlterar := False;
  pqPaciente.ActivePageIndex := 0;
  HabiliraDesabilitaCampos;
  edtNome.SetFocus;
end;

procedure TfrmCadPaciente.btnPesquisaClick(Sender: TObject);
begin
  PesquisaPaciente;
  PesquisaPacienteEnd;
end;


procedure TfrmCadPaciente.DeletaRegistro(sTabela: String);
begin
  with dm.qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' DELETE FROM ' + sTabela );
      SQL.Add(' WHERE ID_PACIENTE = :Id_Paciente');
      Parameters.ParamByName('Id_Paciente').Value := StrToInt(edtPesquisa.Text);
    end;
end;

procedure TfrmCadPaciente.FormShow(Sender: TObject);
begin
  pqPaciente.ActivePageIndex := 0;
  HabiliraDesabilitaCampos;
  lblPesqPaciente.Caption := 'Código do Cliente: ';
end;

procedure TfrmCadPaciente.HabiliraDesabilitaCampos;
begin
  edtNome.Enabled := Not(edtNome.Enabled);
  edtRegistro.Enabled := Not(edtRegistro.Enabled);
  edtDataNasc.Enabled := Not(edtDataNasc.Enabled);
  mmTpDoenca.Enabled := Not(mmTpDoenca.Enabled);
  edtEnd.Enabled := Not(edtEnd.Enabled);
  edtComplemento.Enabled := Not(edtComplemento.Enabled);
  edtCidade.Enabled := Not(edtCidade.Enabled);
  edtBairro.Enabled := Not(edtBairro.Enabled);
  cbEstado.Enabled := Not(cbEstado.Enabled);
  edtTelefone.Enabled := Not(edtTelefone.Enabled);
  edtCelular.Enabled := Not(edtCelular.Enabled);
  edtRecado.Enabled := Not(edtRecado.Enabled);
  edtContato.Enabled := Not(edtContato.Enabled);
end;

procedure TfrmCadPaciente.InsereEndereco;
var
  nIDPac: Integer;
begin
  with dm.qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' Select MAX(ID_Paciente) as ID from Paciente');
      Open;
      nIDPac := FieldByName('ID').AsInteger;
      Close;
      SQL.Clear;
      SQL.Add(InsereRegistro('PAC_END'));
      Parameters.ParamByName('Id_Paciente').Value := nIDPac;
      Parameters.ParamByName('Telefone').Value := edtTelefone.Text;
  	  Parameters.ParamByName('Celular').Value := edtCelular.Text;
      Parameters.ParamByName('Recado').Value := edtRecado.Text;
	    Parameters.ParamByName('Nome_Rec').Value := edtContato.Text;
	    Parameters.ParamByName('Endereco').Value := edtEnd.Text;
	    Parameters.ParamByName('Complemento').Value := edtComplemento.Text;
	    Parameters.ParamByName('Cidade').Value := edtCidade.Text;
	    Parameters.ParamByName('Bairro').Value := edtBairro.Text;
      if cbEstado.ItemIndex <> 0 then
	      Parameters.ParamByName('Estado').Value := cbEstado.Text
      else
        Parameters.ParamByName('Estado').Value := 'NF';
    end;
end;

procedure TfrmCadPaciente.InserePaciente;
begin
  with dm.qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add(InsereRegistro('PACIENTE'));
      Parameters.ParamByName('NOME').Value := edtNome.Text;
      Parameters.ParamByName('RG_HC').Value := edtRegistro.Text;
      Parameters.ParamByName('DT_NASC').Value := edtDataNasc.DateTime;
      Parameters.ParamByName('TP_DOENCA').Value := mmTpDoenca.Text;
    end;
end;

procedure TfrmCadPaciente.lblPesqPacienteDblClick(Sender: TObject);
begin
  if (lblPesqPaciente.Caption = 'Registro do Paciente:') then
    lblPesqPaciente.Caption := 'Código do Paciente: '
  else
    lblPesqPaciente.Caption := 'Registro do Paciente:';

end;

procedure TfrmCadPaciente.LimpaCampos;
begin
  edtNome.Clear;
  edtRegistro.Clear;
  edtDataNasc.DateTime := Now;
  mmTpDoenca.Clear;
  edtTelefone.Clear;
  edtCelular.Clear;
  edtRecado.Clear;
	edtContato.Clear;
	edtEnd.Clear;
	edtComplemento.Clear;
	edtCidade.Clear;
	edtBairro.Clear;
  cbEstado.ItemIndex := 0;
end;

procedure TfrmCadPaciente.MostraDadosPaciente;
begin
  lblPesqPaciente.Caption := 'Código do Paciente: ';
  edtPesquisa.Text := IntToStr(dm.qryAux.FieldByName('Id_Paciente').AsInteger);
  edtNome.Text := dm.qryAux.FieldByName('Nome').AsString;
  edtRegistro.Text := dm.qryAux.FieldByName('RG_HC').AsString;
  edtDataNasc.DateTime := dm.qryAux.FieldByName('DT_Nasc').AsDateTime;
  mmTpDoenca.Text := dm.qryAux.FieldByName('Tp_Doenca').AsString;
end;

procedure TfrmCadPaciente.MostraDadosPacienteEnd;
begin
  edtTelefone.Text := dm.qryAux.FieldByName('Telefone').AsString;
  edtCelular.Text := dm.qryAux.FieldByName('Celular').AsString;
  edtRecado.Text := dm.qryAux.FieldByName('Recado').AsString;
	edtContato.Text := dm.qryAux.FieldByName('Nome_Rec').AsString;
	edtEnd.Text := dm.qryAux.FieldByName('Endereco').AsString;
	edtComplemento.Text := dm.qryAux.FieldByName('Complemento').AsString;
	edtCidade.Text := dm.qryAux.FieldByName('Cidade').AsString;
	edtBairro.Text := dm.qryAux.FieldByName('Bairro').AsString;
  if (dm.qryAux.FieldByName('Estado').AsString = 'NF') then
    cbEstado.Text := 'Não Informado'
  else
    cbEstado.Text := dm.qryAux.FieldByName('Estado').AsString;
                  {
  case AnsiIndexStr(UpperCase(dm.qryAux.FieldByName('Estado').AsString), ['AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO']) of
    0: cbEstado.ItemIndex := 1;
    1: cbEstado.ItemIndex := 2;
    2: cbEstado.ItemIndex := 3;
    3: cbEstado.ItemIndex := 4;
    4: cbEstado.ItemIndex := 5;
    5: cbEstado.ItemIndex := 6;
    6: cbEstado.ItemIndex := 7;
    7: cbEstado.ItemIndex := 8;
    8: cbEstado.ItemIndex := 9;
    9: cbEstado.ItemIndex := 10;
    10: cbEstado.ItemIndex := 11;
    11: cbEstado.ItemIndex := 12;
    12: cbEstado.ItemIndex := 13;
    13: cbEstado.ItemIndex := 14;
    14: cbEstado.ItemIndex := 15;
    15: cbEstado.ItemIndex := 16;
    16: cbEstado.ItemIndex := 17;
    17: cbEstado.ItemIndex := 18;
    18: cbEstado.ItemIndex := 19;
    19: cbEstado.ItemIndex := 20;
    20: cbEstado.ItemIndex := 21;
    21: cbEstado.ItemIndex := 22;
    22: cbEstado.ItemIndex := 23;
    23: cbEstado.ItemIndex := 24;
    24: cbEstado.ItemIndex := 25;
    25: cbEstado.ItemIndex := 26;
    26: cbEstado.ItemIndex := 27;
  end;                }

end;

procedure TfrmCadPaciente.PesquisaPaciente;
begin
  with dm.qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' SELECT * FROM PACIENTE ');
      if (lblPesqPaciente.Caption = 'Registro do Paciente:') then
        begin
          SQL.Add('WHERE RG_HC = :RG_HC');
          Parameters.ParamByName('RG_HC').Value := edtPesquisa.Text;
        end
      else
        begin
          SQL.Add('WHERE Id_Paciente = :ID');
          Parameters.ParamByName('ID').Value := StrToInt(edtPesquisa.Text);
        end;
    end;
  try
    dm.Conexao.Connected := True;
    dm.qryAux.Open;
    MostraDadosPaciente;
    dm.Conexao.Connected := False;
  except
    ShowMessage('Não foi possível concluir a pesquisa. Tente novamente mais tarde!');
    Exit;
  end;
end;

procedure TfrmCadPaciente.PesquisaPacienteEnd;
begin
  with dm.qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add(' SELECT * FROM PAC_END ');
      SQL.Add(' WHERE Id_Paciente = :ID ');
      Parameters.ParamByName('ID').Value := StrToInt(edtPesquisa.Text);
    end;
  try
    dm.Conexao.Connected := True;
    dm.qryAux.Open;
    MostraDadosPacienteEnd;
    dm.Conexao.Connected := False;
  except
    ShowMessage('Não foi possível concluir a pesquisa. Tente novamente mais tarde!');
    Exit;
  end;
end;

end.
