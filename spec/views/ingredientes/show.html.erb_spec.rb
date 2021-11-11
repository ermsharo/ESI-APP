require 'rails_helper'

RSpec.describe "ingredientes/show", type: :view do
  before(:each) do
    @ingrediente = assign(:ingrediente, Ingrediente.create!(
      nome: "Nome",
      relevancia: "Relevancia",
      integer: "Integer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Relevancia/)
    expect(rendered).to match(/Integer/)
  end
end
