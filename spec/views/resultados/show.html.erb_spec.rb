require 'rails_helper'

RSpec.describe "resultados/show", type: :view do
  before(:each) do
    @resultado = assign(:resultado, Resultado.create!(
      nome: "Nome",
      ingredientes: "Ingredientes",
      ingredientes_tag: "Ingredientes Tag",
      como_fazer: "Como Fazer",
      imagem: "Imagem",
      origem: "Origem",
      relevancia: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Ingredientes/)
    expect(rendered).to match(/Ingredientes Tag/)
    expect(rendered).to match(/Como Fazer/)
    expect(rendered).to match(/Imagem/)
    expect(rendered).to match(/Origem/)
    expect(rendered).to match(/2/)
  end
end
