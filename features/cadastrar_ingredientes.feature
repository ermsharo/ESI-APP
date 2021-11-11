#language: pt

Funcionalidade: Cadastrar ingredientes
Como usuario
Para que eu possa pesquisar uma receita usando os seus ingredientes
Eu quero cadastrar um novo ingrediente no banco de dados

Cenário: Cadastro um ingrediente novo ingrediente com sucesso
Dado que estou na página de novo ingrediente
Quando preencho o campo "nome" com "arroz"
Quando preencho o campo "relevancia" com "2"
E clico em salvar
Então ele deve ter sido salvo no banco de dados
E deverei ver o aluno na página de listagem de ingredientes

Cenário: Cadastro de um novo ingrediente com erro - sem nome
Dado que estou na página de cadastro de ingrediente
Quando preencho o campo "relevancia" com "1"
E deixo o campo "nome" vazio
E clico em salvar
Então deverei ver a mensagem de erro "Nome É obrigatório informar o nome do ingredientes!"

Cenário: Cadastro de novo ingrediente com erro - sem relevancia
Dado que estou na página de cadastro de ingrediente
Quando preencho o campo "nome" com "arroz"
E deixo o campo "relevancia" vazio
E clico em salvar
Então deverei ver a mensagem de erro "Relevancia É obrigatório informar a relevancia do ingrediente!"

Cenário: Cadastro de aluno com erro - relevancia inválido
Dado que estou na página de cadastro de ingrediente
Quando preencho o campo "nome" com "arroz"
E preencho o campo "relevancia" com "qwdqwd"
E clico em salvar
Então deverei ver a mensagem de erro "Relevancia is not a number"


