require 'spec_helper'

describe "personnes/edit", :type => :view do
  before(:each) do
    @personne = assign(:personne, Personne.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit personne form" do
    render

    assert_select "form[action=?][method=?]", personne_path(@personne), "post" do

      assert_select "input#personne_name[name=?]", "personne[name]"
    end
  end
end
