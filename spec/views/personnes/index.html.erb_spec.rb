require 'spec_helper'

describe "personnes/index", :type => :view do
  before(:each) do
    assign(:personnes, [
      Personne.create!(
        :name => "Name"
      ),
      Personne.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of personnes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
