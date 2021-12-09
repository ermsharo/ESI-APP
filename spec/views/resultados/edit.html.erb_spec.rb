require 'rails_helper'

RSpec.describe "resultados/edit", type: :view do
  before(:each) do
    @resultado = assign(:resultado, Resultado.create!(
      nome: "MyString",
      ingredientes: "MyString",
      ingredientes_tag: "MyString",
      como_fazer: "MyString",
      imagem: "MyString",
      origem: "MyString",
      relevancia: 1
    ))
  end

  it "renders the edit resultado form" do
    render

    assert_select "form[action=?][method=?]", resultado_path(@resultado), "post" do

      assert_select "input[name=?]", "resultado[nome]"

      assert_select "input[name=?]", "resultado[ingredientes]"

      assert_select "input[name=?]", "resultado[ingredientes_tag]"

      assert_select "input[name=?]", "resultado[como_fazer]"

      assert_select "input[name=?]", "resultado[imagem]"

      assert_select "input[name=?]", "resultado[origem]"

      assert_select "input[name=?]", "resultado[relevancia]"
    end
  end
end
