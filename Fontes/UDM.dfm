object DM: TDM
  OldCreateOrder = False
  Height = 231
  Width = 425
  object Conexao: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=C@sa2809;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=GSys;Data Source=DESKTOP-P025KFP'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 16
  end
  object qryAux: TADOQuery
    Connection = Conexao
    Parameters = <>
    Left = 112
    Top = 16
  end
  object qryRelPaciente: TADOQuery
    Connection = Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT P.*, PE.Telefone, PE.Celular,  PE.Recado, PE.Nome_Rec,'
      'PE.Endereco, PE.Complemento, PE.Cidade, PE.Bairro, PE.Estado '
      'FROM PACIENTE P'
      'inner join Pac_End PE on pe.Id_Paciente = P.Id_Paciente')
    Left = 48
    Top = 80
    object qryRelPacienteId_Paciente: TAutoIncField
      DisplayLabel = 'ID PACIENTE'
      FieldName = 'Id_Paciente'
      ReadOnly = True
    end
    object qryRelPacienteNome: TStringField
      DisplayLabel = 'NOME'
      DisplayWidth = 40
      FieldName = 'Nome'
      Size = 100
    end
    object qryRelPacienteRG_HC: TStringField
      DisplayLabel = 'REGISTRO'
      FieldName = 'RG_HC'
      Size = 15
    end
    object qryRelPacienteDt_Nasc: TDateTimeField
      DisplayLabel = 'DATA NASC.'
      FieldName = 'Dt_Nasc'
    end
    object qryRelPacienteTp_Doenca: TStringField
      DisplayLabel = 'TIPO DOEN'#199'A'
      FieldName = 'Tp_Doenca'
      Size = 100
    end
    object qryRelPacienteTelefone: TStringField
      DisplayLabel = 'TELEFONE'
      FieldName = 'Telefone'
      Size = 15
    end
    object qryRelPacienteCelular: TStringField
      DisplayLabel = 'CELULAR'
      FieldName = 'Celular'
      Size = 15
    end
    object qryRelPacienteRecado: TStringField
      DisplayLabel = 'RECADO'
      FieldName = 'Recado'
      Size = 15
    end
    object qryRelPacienteNome_Rec: TStringField
      DisplayLabel = 'CONTATO'
      DisplayWidth = 30
      FieldName = 'Nome_Rec'
      Size = 100
    end
    object qryRelPacienteEndereco: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      DisplayWidth = 100
      FieldName = 'Endereco'
      Size = 250
    end
    object qryRelPacienteComplemento: TStringField
      DisplayLabel = 'COMPLEMENTO'
      DisplayWidth = 50
      FieldName = 'Complemento'
      Size = 100
    end
    object qryRelPacienteCidade: TStringField
      DisplayLabel = 'CIDADE'
      DisplayWidth = 30
      FieldName = 'Cidade'
      Size = 100
    end
    object qryRelPacienteBairro: TStringField
      DisplayLabel = 'BAIRRO'
      DisplayWidth = 30
      FieldName = 'Bairro'
      Size = 100
    end
    object qryRelPacienteEstado: TStringField
      DisplayLabel = 'UF'
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
  end
  object dsRelPaciente: TDataSource
    DataSet = qryRelPaciente
    Left = 152
    Top = 80
  end
end
