Feature: status da vaga
AS A candidato
I WANT TO ver o status da minha vaga, se fui aprovado ou rejeitado
AND ter a possibilidade de desistir do processo seletivo

Scenario: Candidato desiste de uma vaga
    Given: eu estou na página de “Acompanhamento do processo seletivo da vaga de “Gerente do Carrefour”
    When: eu seleciono a opção desistir
    And: eu confirmo que desejo desistir da vaga
    Then: eu volto para a página de “Meus processos seletivos”
    And: eu não vejo o “Gerente do Carrefour”

Scenario: Candidato é informado que foi o processo continua pendente
    Given: eu estou na página de “Acompanhamento do processo seletivo da vaga de “Gerente do Carrefour”
    When: O processo seletivoainda está aberto pela empresa para esta vaga
    Then: Eu vejo no status do processo seletivo “Processo seletivo em aberto”

Scenario: Candidato é informado que foi selecionado
    Given: eu estou na página de “Acompanhamento do processo seletivo da vaga de “Gerente do Carrefour”
    When: Eu fui selecionado pela empresa para esta vaga
    Then: Eu vejo no status do processo seletivo “Parabéns! Você foi selecionado para esta vaga”

Scenario: Candidato é informado que foi rejeitado
    Given: eu estou na página de “Acompanhamento do processo seletivo da vaga de “Gerente do Carrefour”
    When: Eu fui fui rejeitado pela empresa para esta vaga
    Then: Eu vejo no status do processo seletivo “Infelizmente você não foi selecionado para esta vaga”

Scenario: Candidato deseja alterar informações dadas ao se candidatar
    Given: eu estou na página de “Acompanhamento do processo seletivo da vaga de “Gerente do Carrefour”
    When: Eu seleciono a opção “Editar informações”
    Then: Eu vou para a página de “Editar informações”
    And: Eu vejo as informações que dei para me inscrever no processo
    When: Eu altero as informações preenchidas
    And: Eu confirmo as modificações
    Then: Eu vejo minhas informações alteradas
    Then: exemplo

main teste 1