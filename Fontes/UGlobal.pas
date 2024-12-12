unit UGlobal;

interface

uses StrUtils, SysUtils, UDM;

function GravaRegistro: Boolean;
function InsereRegistro(sTabela: String): String;
function AlteraRegistro(sTabela: String): String;

implementation

function GravaRegistro: Boolean;
begin
    try
      dm.Conexao.Connected := True;
      dm.qryAux.ExecSQL;
      dm.Conexao.Connected := False;
      Result := True;
    except
      Result := False;
      Exit;
    end;
end;
function InsereRegistro(sTabela: String): String;
begin
  Result := 'INSERT INTO ' + sTabela;
  case AnsiIndexStr(UpperCase(sTabela), ['PACIENTE','PAC_END','PAC_EXAMES','PAC_EXAMES_EXTRA','PAC_CONSULTA']) of
    0: begin
      Result := Result + ' (NOME, RG_HC, DT_NASC, TP_DOENCA) ' +
                ' Values (:NOME,:RG_HC,:DT_NASC,:TP_DOENCA) ';
    end;
    1: begin
      Result := Result + ' (Id_Paciente, Telefone, Celular, Recado, Nome_Rec, Endereco, Complemento, Cidade, Bairro, Estado) ' +
                ' VALUES (:Id_Paciente, :Telefone, :Celular, :Recado, :Nome_Rec, :Endereco, :Complemento, :Cidade, :Bairro, :Estado) ';
    end;
    2: begin
      Result := Result + ' (ID_PACIENTE, DATA, TNF_ALFA, IL1, IL6, IL10, BNP, PCR, LPS) ' +
                ' Values (:ID_PACIENTE, :DATA, :TNF_ALFA, :IL1, :IL6, :IL10, :BNP, :PCR, :LPS) ';
    end;
    3: begin

    end;
    4: begin

    end;
  end;
end;

function AlteraRegistro(sTabela: String): String;
begin
  Result := 'UPDATE ' + sTabela + ' SET';
  case AnsiIndexStr(UpperCase(sTabela), ['PACIENTE','PAC_END','PAC_EXAMES','PAC_EXAMES_EXTRA','PAC_CONSULTA']) of
    0: begin
      Result := Result + ' NOME = :NOME, RG_HC = :RG_HC, DT_NASC = :DT_NASC, TP_DOENCA = :TP_DOENCA ' ;
    end;
    1: begin
      Result := Result + ' Telefone = :Telefone, Celular = :Celular, Recado = :Recado, Nome_Rec = :Nome_Rec, Endereco = :Endereco, Complemento = :Complemento, Cidade = :Cidade, Bairro = :Bairro, Estado = :Estado ';
    end;
    2: begin
      Result := Result + ' DATA = :DATA, TNF_ALFA = :TNF_ALFA, IL1 = :IL1, IL6 = :IL6, IL10 = :IL10, BNP = :BNP, PCR = :PCR, LPS = :LPS ' ;
    end;
    3: begin

    end;
    4: begin

    end;
  end;
end;

end.


