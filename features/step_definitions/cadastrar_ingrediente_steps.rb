Dado('que estou na página de cadastro de ingrediente') do
    visit 'ingrediente/new'
  end
  
  Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2  
  end
  
  Quando('clico em salvar') do
    click_on 'Salvar ingrediente'
  end
  
  Então('ele deve ter sido salvo no banco de dados') do
    ingrediente = Ingrediente.order("id").last
    expect(ingrediente.nome).to eq('arroz')
    expect(ingrediente.relevancia).to eq('1') 
  end
  
  Então('deverei ver o ingrediente na página de listagem de ingredientes') do
    expect(page).to have_content('arroz')
    expect(page).to have_content('1')
  end
  
  Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
  end
  
  Então('deverei ver a mensagem de erro {string}') do |string|
    expect(page).to have_content(string)
  end