object formCadPacientes: TformCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 511
  ClientWidth = 784
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Label2: TLabel
    Left = 48
    Top = 99
    Width = 13
    Height = 15
    Caption = 'ID'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 211
    Width = 20
    Height = 15
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 155
    Width = 88
    Height = 15
    Caption = 'Nome Completo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 48
    Top = 267
    Width = 36
    Height = 15
    Caption = 'Celular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 48
    Top = 387
    Width = 74
    Height = 15
    Caption = 'Data Cadastro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 440
    Top = 99
    Width = 110
    Height = 15
    Caption = 'Pesquisa de Paciente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 440
    Top = 155
    Width = 50
    Height = 15
    Caption = 'Pacientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 224
    Top = 211
    Width = 56
    Height = 15
    Caption = 'Status CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 48
    Top = 331
    Width = 108
    Height = 15
    Caption = 'Data de Nascimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 224
    Top = 331
    Width = 30
    Height = 15
    Caption = 'Idade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 233
      Height = 25
      Caption = 'Cadastro de Pacientes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 440
      Top = 18
      Width = 280
      Height = 45
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
  object txtID: TDBEdit
    Left = 48
    Top = 120
    Width = 73
    Height = 23
    DataField = 'id_paciente'
    DataSource = DM.dsPaciente
    ReadOnly = True
    TabOrder = 7
  end
  object txtNome: TDBEdit
    Left = 48
    Top = 176
    Width = 309
    Height = 23
    DataField = 'nome_paciente'
    DataSource = DM.dsPaciente
    TabOrder = 1
  end
  object txtCPF: TDBEdit
    Left = 48
    Top = 232
    Width = 129
    Height = 23
    DataField = 'cpf_paciente'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 2
    OnChange = txtCPFChange
    OnExit = txtCPFExit
  end
  object txtCelular: TDBEdit
    Left = 48
    Top = 288
    Width = 129
    Height = 23
    DataField = 'celular_paciente'
    DataSource = DM.dsPaciente
    MaxLength = 15
    TabOrder = 3
  end
  object txtDataCadastro: TDBEdit
    Left = 48
    Top = 408
    Width = 129
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    MaxLength = 10
    ReadOnly = True
    TabOrder = 4
  end
  object gridPacientes: TDBGrid
    Left = 440
    Top = 176
    Width = 314
    Height = 292
    DataSource = DM.dsPaciente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_paciente'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_paciente'
        Title.Caption = 'Nome'
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 440
    Top = 120
    Width = 320
    Height = 23
    TabOrder = 5
    OnChange = txtBuscaChange
  end
  object txtStatusCPF: TEdit
    Left = 224
    Top = 232
    Width = 133
    Height = 23
    Enabled = False
    ReadOnly = True
    TabOrder = 8
  end
  object txtDataNascimento: TDBEdit
    Left = 50
    Top = 352
    Width = 127
    Height = 23
    DataField = 'dtnasc_paciente'
    DataSource = DM.dsPaciente
    MaxLength = 10
    TabOrder = 9
  end
  object Button1: TButton
    Left = 224
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Idade'
    TabOrder = 10
    OnClick = Button1Click
  end
end
