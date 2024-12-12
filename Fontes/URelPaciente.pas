unit URelPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, ComObj;

type
  TfrmRelPaciente = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    procedure GerarExcel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPaciente: TfrmRelPaciente;

implementation

uses UDM;

{$R *.dfm}

procedure TfrmRelPaciente.GerarExcel;
var
  coluna, linha: integer;
  excel: variant;
  valor: string;
begin
  try
    excel:=CreateOleObject('Excel.Application');
    excel.Workbooks.add(1);
  except
    Application.MessageBox ('Versão do Ms-Excel'+
          'Incompatível','Erro',MB_OK+MB_ICONEXCLAMATION);
  end;

  dm.qryRelPaciente.First;
  try
    for linha:=0 to dm.qryRelPaciente.RecordCount-1 do
      begin
        for coluna:=1 to dm.qryRelPaciente.FieldCount do
          begin
            valor:= dm.qryRelPaciente.Fields[coluna-1].AsString;
            excel.cells [linha+2,coluna]:=valor;
          end;
        dm.qryRelPaciente.Next;
      end;

      for coluna:=1 to dm.qryRelPaciente.FieldCount do
        begin
          valor:= dm.qryRelPaciente.Fields[coluna-1].DisplayLabel;
          excel.cells[1,coluna]:=valor;
        end;
      excel.columns.AutoFit;
      excel.visible:=true;
    except
      Application.MessageBox ('Aconteceu um erro desconhecido durante a conversão'+
                      'da tabela para o Ms-Excel','Erro',MB_OK+MB_ICONEXCLAMATION);
  end;

end;

procedure TfrmRelPaciente.SpeedButton1Click(Sender: TObject);
begin
  try
    dm.Conexao.Connected := True;
    dm.qryRelPaciente.Open;
  except
    ShowMessage('Erro ao conectar com o Banco de Dados. Tente novamente mais tarde!');
    Exit;
  end;
end;

procedure TfrmRelPaciente.SpeedButton2Click(Sender: TObject);
begin
  GerarExcel;
end;

end.
