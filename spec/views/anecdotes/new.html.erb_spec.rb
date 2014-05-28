require 'spec_helper'

describe "anecdotes/new", :type => :view do
  before(:each) do
    assign(:anecdote, Anecdote.new(
      :texte => "",
      :sujet => "",
      :theme => "",
      :chapitre_id => 1
    ))
  end

  it "renders new anecdote form" do
    render

    assert_select "form[action=?][method=?]", anecdotes_path, "post" do

      assert_select "input#anecdote_texte[name=?]", "anecdote[texte]"

      assert_select "input#anecdote_sujet[name=?]", "anecdote[sujet]"

      assert_select "input#anecdote_theme[name=?]", "anecdote[theme]"

      assert_select "input#anecdote_chapitre_id[name=?]", "anecdote[chapitre_id]"
    end
  end
end
