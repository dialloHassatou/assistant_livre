require 'spec_helper'

describe Scene do
 describe Scene do
  let(:chapitre) { FactoryGirl.create(:chapitre) }
  before { @scene = chapitre.scenes.build(recit:"Example recit",lieu: "Example lieu",debut: 10-10-2013, fin: 11-11-2013,chapitre_id: 0) }

  subject { @scene }

  it { should respond_to(:lieu) }
  it { should respond_to(:debut) }
   it { should respond_to(:fin) }
  it { should respond_to(:recit) }
  it { should respond_to(:chapitre_id) }
  it { should respond_to(:chapitre) }
  #its(:chapitre) { should eq chapitre }

  it { should be_valid }

    describe "si la periode n'est pas present" do
	  before { @scene.debut = "" }
          before { @scene.fin = ""}
          it { should_not be_valid }
	end
end
end
