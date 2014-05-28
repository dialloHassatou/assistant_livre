require 'spec_helper'

describe "anecdotes/index", :type => :view do
  before(:each) do
    assign(:anecdotes, [
      Anecdote.create!(
        :texte => "",
        :sujet => "",
        :theme => "",
        :chapitre_id => 1
      ),
      Anecdote.create!(
        :texte => "",
        :sujet => "",
        :theme => "",
        :chapitre_id => 1
      )
    ])
  end

  it "renders a list of anecdotes" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
