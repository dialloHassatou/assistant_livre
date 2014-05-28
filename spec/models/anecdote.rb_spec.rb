require 'spec_helper'


describe Anecdote do
     let(:chapitre) { FactoryGirl.create(:chapitre) }
  before { @anecdote = chapitre.anecdotes.build(texte: " texte",sujet:"sujet",theme:" theme",chapitre_id: 1) }

    
        subject { @anecdote }

        it { should respond_to(:sujet) }
        it { should respond_to(:theme) }
        it { should respond_to(:chapitre_id) }
        it { should respond_to(:chapitre) }         
        #its(:chapitre) { should eq chapitre }

	it { should be_valid }

        describe "si le sujet n'est pas present" do
	  before { @anecdote.sujet = "" }
          it { should_not be_valid }
	end
      
        describe "si le theme n'est pas present" do
	  before { @anecdote.theme = "" }
          it { should_not be_valid }
	end
   
       

 
end
