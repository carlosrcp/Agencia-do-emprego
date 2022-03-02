Scenario: Processo seletivo encerrado
Given eu estou na página de inscrição em determinada vaga
When eu me inscrevo na vaga
And a vaga não está mais disponível
Then o sistema me informa de que a vaga não está mais disponível
And eu não sou inscrito na vaga


Scenario: Listagem vazia de vagas concorridas
Given eu estou na página de listagem de vagas concorridas
And eu ainda não me inscrevi em nenhum página
Then o sistema me informa de não houve nenhum resultado, pois não estou inscrito em nenhuma vaga ainda.

Scenario: 0 resultados encontrados
Given eu estou na página de procurar vagas em aberto
When eu uso a opção de filtros 
And os filtros escolhidos não me dão nenhuma resposta
Then o sistema me informa de que não foram encontrados resultados

Scenario: Falta de critérios mínimos
Given eu estou na página de inscrição em determinada vaga
When eu me inscrevo na vaga
And não atendo critérios mínimos definidos para aquela vaga
Then o sistema me informa de que eu não posso me inscrever pois não possuo os critérios mínimos.
And eu não sou inscrito na vaga

Scenario: Aplicação bem sucedida
Given eu estou na página de inscrição em determinada vaga
When eu me inscrevo na vaga
And eu atendo critérios mínimos definidos para aquela vaga
Then o sistema me informa que estou inscrito na vaga
And consigo ver essa vaga na listagem de vagas disponíveis.

Scenario: Processo seletivo aberto
Given eu estou na página de inscrição em determinada vaga
When eu vou para a opção de me inscrever
Then a opção de inscrição está disponível.