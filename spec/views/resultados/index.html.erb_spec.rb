require 'rails_helper'

RSpec.describe "resultados/index", type: :view do
  before(:each) do
    assign(:resultados, [
      Resultado.create!(
        nome: "Nome",
        ingredientes: "Ingredientes",
        ingredientes_tag: "Ingredientes Tag",
        como_fazer: "Como Fazer",
        imagem: "Imagem",
        origem: "Origem",
        relevancia: 2
      ),
      Resultado.create!(
        nome: "Nome",
        ingredientes: "Ingredientes",
        ingredientes_tag: "Ingredientes Tag",
        como_fazer: "Como Fazer",
        imagem: "Imagem",
        origem: "Origem",
        relevancia: 2
      )
    ])
  end

  it "renders a list of resultados" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Ingredientes".to_s, count: 2
    assert_select "tr>td", text: "Ingredientes Tag".to_s, count: 2
    assert_select "tr>td", text: "Como Fazer".to_s, count: 2
    assert_select "tr>td", text: "Imagem".to_s, count: 2
    assert_select "tr>td", text: "Origem".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
