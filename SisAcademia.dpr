program SisAcademia;

uses
  Forms,
  U_AjudaDiametro in 'U_AjudaDiametro.pas' {FRM_AjudaDiametro},
  U_Alunos in 'U_Alunos.pas' {FRM_CadAlunos},
  U_Aniversariantes in 'U_Aniversariantes.pas' {FRM_Aniversariantes},
  U_AvaliacaoFisica in 'U_AvaliacaoFisica.pas' {FRM_AvaliacaoFisica},
  U_AvaliacaoFisicaCadastradas in 'U_AvaliacaoFisicaCadastradas.pas' {FRM_AvaFisicaCadastradas},
  U_Backup in 'U_Backup.pas' {FRM_Backup},
  U_BloqueiaMatricula in 'U_BloqueiaMatricula.pas' {FRM_BloqueiaMatricula},
  U_Busca in 'U_Busca.pas' {FRM_Busca},
  U_BuscaFichaTreino in 'U_BuscaFichaTreino.pas' {FRM_BuscaFichaTreino},
  U_BuscaModalidades in 'U_BuscaModalidades.pas' {FRM_BuscaModalidades},
  U_CadContasReceber in 'U_CadContasReceber.pas' {FRM_CadContasReceber},
  U_CadExercicio in 'U_CadExercicio.pas' {FRM_CadExercicio},
  U_CadExercicios in 'U_CadExercicios.pas' {FRM_Exercicios},
  U_CadFornecedor in 'U_CadFornecedor.pas' {FRM_CadFornecedor},
  U_CadPlanoContas in 'U_CadPlanoContas.pas' {FRM_CadPlanoContas},
  U_CadTreino in 'U_CadTreino.pas' {FRM_CadTreino},
  U_CadUsuarios in 'U_CadUsuarios.pas' {FRM_CadUsuarios},
  U_ContasPagar in 'U_ContasPagar.pas' {FRM_ContasPagar},
  U_ContasReceber in 'U_ContasReceber.pas' {FRM_ContasReceber},
  U_ControleMatricula in 'U_ControleMatricula.pas' {FRM_ControleMatricula},
  U_DetalhamentoRecebimentos in 'U_DetalhamentoRecebimentos.pas' {FRM_DetalhamentoRecebimentos},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_Empresa in 'U_Empresa.pas' {FRM_CadEmpresa},
  U_FichaTreino in 'U_FichaTreino.pas' {FRM_FichaTreino},
  U_FluxoCaixa in 'U_FluxoCaixa.pas' {FRM_FluxoCaixa},
  U_FornecedoresGeral in 'U_FornecedoresGeral.pas' {FRM_FornecedoresGeral},
  U_GerarContasPagar in 'U_GerarContasPagar.pas' {FRM_GerarContasPagar},
  U_GraficoFluxo in 'U_GraficoFluxo.pas' {FRM_GraficoFluxo},
  U_ImpPaciente in 'U_ImpPaciente.pas' {FRM_ImpPaciente},
  U_LancarContasPagar in 'U_LancarContasPagar.pas' {FRM_CadContasPagar},
  U_Login in 'U_Login.pas' {FRM_Login},
  U_Matricula in 'U_Matricula.pas' {FRM_Matricula},
  U_Modalidade in 'U_Modalidade.pas' {FRM_Modalidades},
  U_Objetivos in 'U_Objetivos.pas' {FRM_Objetivos},
  U_Pacientes in 'U_Pacientes.pas' {FRM_CadPacientes},
  U_AlunosGeral in 'U_AlunosGeral.pas' {FRM_AlunosGeral},
  U_PlanoContas in 'U_PlanoContas.pas' {FRM_PlanoContas},
  U_Principal in 'U_Principal.pas' {FRM_Principal},
  U_RealizarPagamento in 'U_RealizarPagamento.pas' {FRM_RealizarPagamento},
  U_ReciboMensalidade in 'U_ReciboMensalidade.pas' {FRM_ReciboMensalidade},
  U_Relatorios in 'U_Relatorios.pas' {FRM_Relatorio},
  U_RelRecebimento in 'U_RelRecebimento.pas' {FRM_Receber},
  U_RelRecebimentoAluno in 'U_RelRecebimentoAluno.pas' {FRM_RecebimentoAluno},
  U_Sobre in 'U_Sobre.pas' {FRM_Sobre},
  U_Splash in 'U_Splash.pas' {FRM_Splash},
  U_VisaoGeral in 'U_VisaoGeral.pas' {FRM_VisaoGeral},
  U_CapturaWebCam in 'U_CapturaWebCam.pas' {FRM_CapturaWebCam},
  U_Postural1 in 'U_Postural1.pas' {FRM_CapturaPostural1},
  U_Postural2 in 'U_Postural2.pas' {FRM_CapturaPostural2},
  U_Postural3 in 'U_Postural3.pas' {FRM_CapturaPostural3},
  U_RelAlunosModalidades in 'U_RelAlunosModalidades.pas' {FRM_RelAlunosModalidades};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SisAcademia - ';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFRM_Splash, FRM_Splash);
  Application.CreateForm(TFRM_CapturaPostural1, FRM_CapturaPostural1);
  Application.CreateForm(TFRM_CapturaPostural2, FRM_CapturaPostural2);
  Application.CreateForm(TFRM_CapturaPostural3, FRM_CapturaPostural3);
  Application.CreateForm(TFRM_RelAlunosModalidades, FRM_RelAlunosModalidades);
  Application.Run;
end.
