require 'spec_helper'

describe "personnes/new", :type => :view do
  before(:each) do
    assign(:personne, Personne.new(
      :name => "MyString"
    ))
  end

  it "renders new personne form" do
    render

    assert_select "form[action=?][method=?]", personnes_path, "post" do

      assert_select "input#personne_name[name=?]", "personne[name]"
    end
  end
end
