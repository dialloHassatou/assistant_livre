require 'spec_helper'

describe "personnes/show", :type => :view do
  before(:each) do
    @personne = assign(:personne, Personne.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
