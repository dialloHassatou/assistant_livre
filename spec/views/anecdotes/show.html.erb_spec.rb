require 'spec_helper'

describe "anecdotes/show", :type => :view do
  before(:each) do
    @anecdote = assign(:anecdote, Anecdote.create!(
      :texte => "",
      :sujet => "",
      :theme => "",
      :chapitre_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
