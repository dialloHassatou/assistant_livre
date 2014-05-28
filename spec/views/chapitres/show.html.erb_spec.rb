require 'spec_helper'

describe "chapitres/show", :type => :view do
  before(:each) do
    @chapitre = assign(:chapitre, Chapitre.create!(
      :numero => "",
      :titre => "Titre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Titre/)
  end
end
