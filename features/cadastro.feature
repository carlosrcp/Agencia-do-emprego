Scenario: Adicionar candidatos a plataforma
Given eu acesso o sistema como "Desconhecido"
	And tento abrir a listagem de vagas
	When o sistema me redireciona para a tela de cadastro
	Then o formulário de cadastro em etapas aparece para mim
	And preencho os campos "Email" com "orc@cin.ufpe.br", "Nome" com "Olavo", "Pretensão Salarial" com "5000", "Nível de ensino" com "Superior Incompleto"
	Then clico no botão "confirmar"
And uma mensagem "cadastro concluído com sucesso aparece para mim"
And sou redirecionado para a tela de listagem de vagas 
