require 'spec_helper'

describe "chapitres/edit", :type => :view do
  before(:each) do
    @chapitre = assign(:chapitre, Chapitre.create!(
      :numero => "",
      :titre => "MyString"
    ))
  end

  it "renders the edit chapitre form" do
    render

    assert_select "form[action=?][method=?]", chapitre_path(@chapitre), "post" do

      assert_select "input#chapitre_numero[name=?]", "chapitre[numero]"

      assert_select "input#chapitre_titre[name=?]", "chapitre[titre]"
    end
  end
end
