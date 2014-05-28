require 'spec_helper'

describe Chapitre do
	
	before do   
		@chapitre = Chapitre.new(numero: 1, titre:"Autrefois")
        end

	subject { @chapitre }

        it { should respond_to(:numero) }
        it { should respond_to(:titre) }

	it { should be_valid }

        describe "si le titre n'est pas present" do
	  before { @chapitre.titre = "" }
          it { should_not be_valid }
	end

        describe "si le titre est  trop long" do
     	   before { @chapitre.titre = "a" * 61 }
      	   it { should_not be_valid }
 	end

   describe "si le numero existe deja " do
    before do
	numero_existant = Chapitre.new(numero: 1, titre: "Autrefois")
	numero_existant.save
    end
	
    it { should_not be_valid }
  end

end

