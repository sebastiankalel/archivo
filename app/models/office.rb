class Office < ActiveRecord::Base
	has_many :steps



def self.get(officeName)

# Office.find_or_create_by(name:'Mesa de Entrada')	

  if !startOffice=Office.where(name:officeName).first
     startOffice=Office.create({name:officeName})
     startOffice.save
  end
  	
  startOffice

end


end
