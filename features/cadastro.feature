Scenario: Adicionar candidatos a plataforma
        Given eu acesso o sistema como "Desconhecido"
            And tento abrir a listagem de vagas
            When o sistema me redireciona para a tela de cadastro
            Then o formulário de cadastro em etapas aparece para mim
            And preencho os campos "Email" com "orc@cin.ufpe.br", "Nome" com "Olavo", "Pretensão Salarial" com "5000", "Nível de ensino" com "Superior Incompleto"
            Then clico no botão "confirmar"
        And uma mensagem "cadastro concluído com sucesso aparece para mim"
        And sou redirecionado para a tela de listagem de vagas 


Scenario: Adicionar vagas
		Given eu acesso o sistema como "Empregador"
	    And meu perfil é de um Headhunter que deseja contratar programadores
		And o sistema não possui nenhuma vaga cadastrada
        When acesso a tela de cadastro de vagas
        Then o formulário de cadastro em etapas aparece para mim
        And preencho os campos "Título" com "Desenvolvedor Front-End", "Modalidade" com "Híbrido", "Salário" com "4000", "Nível de senioridade" com "Junior", "Modalidade de contratação" como "CLT"
        Then clico no botão "salvar vaga"
        And uma mensagem "vaga salva" aparece
        When acesso a tela de listagem de vagas
        Then a vaga "Desenvolvedor Front-End" aparece para mim

Scenario: Adicionar candidatos a vaga
		Given eu acesso o sistema como "candidato"
	    And meu perfil é de um técnico de enfermagem    procurando emprego 
		And o sistema possui uma vaga "Auxiliar de Enfermagem"
        And As especificações mostradas pelo sistema são vaga "Remota", "CLT", "Junior" e faixa salarial de 2000 reais
        When acesso a tela de vagas
        Then na aba de listagem de vagas aparece a vaga "Auxiliar de enfermagem"
        And suas especificações estão mostradas na tela "Remota", "CLT", "Junior" e faixa salarial de 2000 reais
        Then clico no botão "Candidatar Vaga"
        And Aparece um aviso "Cadastro concluído com sucesso"
        And no banco de dados, na tabela associada a essa vaga, no atributo candidatos, conseguimos ver o meu cadastro, enquanto todos os outros elementos do banco não foram alterados.

Scenario: Filtrar vagas
		Given eu acesso o sistema como "candidato"
	    And meu perfil é de um desenvolvedor procurando vagas para trabalhar remotamente 
		And o sistema possui vaga "Desenvolvedor React - Presencial"
        And o sistema possui vaga "Desenvolvedor React - Remoto"
        When acesso a tela de vagas
        Then na aba de listagem de vagas aparece a vaga "Desenvolvedor React - Presencial"
        And também é listado a vaga de "Desenvolvedor React - Remoto"
        When clico no botão referente ao "filtro"
        And preencho o campo "modalidade de trabalho" com a resposta "Remoto"
        Then na aba de listagem de vagas aparece apenas "Desenvolvedor React - Remoto"
