#language: pt

Funcionalidade: Cadastrar alunos
Como administrador
Para que eu possa pesquisar uma receita usando os seus ingredientes
Eu quero cadastrar um novo ingrediente no banco de dados

Cenário: Cadastro um novo ingrediente com sucesso
Dado que estou na página de cadastro de ingrediente
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
Então deverei ver a mensagem de erro "É obrigatório informar o nome!"

Cenário: Cadastro de novo ingrediente com erro - sem relevancia
Dado que estou na página de cadastro de ingrediente
Quando preencho o campo "nome" com "arroz"
E deixo o campo "relevancia" vazio
E clico em salvar
Então deverei ver a mensagem de erro "É obrigatório informar a relevancia!"

Cenário: Cadastro de aluno com erro - relevancia inválido
Dado que estou na página de cadastro de ingrediente
Quando preencho o campo "nome" com "arroz"
E preencho o campo "relevancia" com "qwdqwd"
E clico em salvar
Então deverei ver a mensagem de erro "Valor não valido para relevancia"