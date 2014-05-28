require 'spec_helper'

describe Personne do
        before do
  		@personne = Personne.new(name:"Ping")
	end

        subject { @personne }

        it { should respond_to(:name) }
        it { should be_valid }

       describe "si le nom est  trop long" do
     	   before { @personne.name = "a" * 61 }
      	   it { should_not be_valid }
 	end
     
     describe "si le nom  existe deja " do
    before do
	personne_avec_le_meme_nom = Personne.new(name:"Ping")
	personne_avec_le_meme_nom.save
    end
	
    it { should_not be_valid }
  end
    
end
