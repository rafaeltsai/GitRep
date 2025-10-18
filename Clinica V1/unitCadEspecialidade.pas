unit unitCadEspecialidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadEspecialidade = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    txtEspecialidade: TDBEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    txtBuscaEspec: TEdit;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadEspecialidade: TformCadEspecialidade;

implementation

{$R *.dfm}

uses unitDM;

end.
