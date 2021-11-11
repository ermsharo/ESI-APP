require 'rails_helper'

RSpec.describe "ingredientes/index", type: :view do
  before(:each) do
    assign(:ingredientes, [
      Ingrediente.create!(
        nome: "Nome",
        relevancia: "Relevancia",
        integer: "Integer"
      ),
      Ingrediente.create!(
        nome: "Nome",
        relevancia: "Relevancia",
        integer: "Integer"
      )
    ])
  end

  it "renders a list of ingredientes" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Relevancia".to_s, count: 2
    assert_select "tr>td", text: "Integer".to_s, count: 2
  end
end
