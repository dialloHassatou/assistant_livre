require 'spec_helper'

describe "chapitres/new", :type => :view do
  before(:each) do
    assign(:chapitre, Chapitre.new(
      :numero => "",
      :titre => "MyString"
    ))
  end

  it "renders new chapitre form" do
    render

    assert_select "form[action=?][method=?]", chapitres_path, "post" do

      assert_select "input#chapitre_numero[name=?]", "chapitre[numero]"

      assert_select "input#chapitre_titre[name=?]", "chapitre[titre]"
    end
  end
end
