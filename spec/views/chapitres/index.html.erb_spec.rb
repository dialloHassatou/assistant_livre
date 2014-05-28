require 'spec_helper'

describe "chapitres/index", :type => :view do
  before(:each) do
    assign(:chapitres, [
      Chapitre.create!(
        :numero => "",
        :titre => "Titre"
      ),
      Chapitre.create!(
        :numero => "",
        :titre => "Titre"
      )
    ])
  end

  it "renders a list of chapitres" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Titre".to_s, :count => 2
  end
end
