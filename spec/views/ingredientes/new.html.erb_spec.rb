require 'rails_helper'

RSpec.describe "ingredientes/new", type: :view do
  before(:each) do
    assign(:ingrediente, Ingrediente.new(
      nome: "MyString",
      relevancia: "MyString",
      integer: "MyString"
    ))
  end

  it "renders new ingrediente form" do
    render

    assert_select "form[action=?][method=?]", ingredientes_path, "post" do

      assert_select "input[name=?]", "ingrediente[nome]"

      assert_select "input[name=?]", "ingrediente[relevancia]"

      assert_select "input[name=?]", "ingrediente[integer]"
    end
  end
end
