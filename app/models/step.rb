class Step < ActiveRecord::Base
  belongs_to :file_record
  belongs_to :person
  belongs_to :office

  attr_accessor :email
  before_save :assing_person

def self.start
   step = Step.create({file_record_id:0,person_id:0,office_id:Office.get("Mesa de Entrada").id})
   step.save
   step
end

def self.archivate
   step = Step.create({file_record_id:0,person_id:0,office_id:Office.get("Archivo").id})
   step.save
   step
end

def first_step
   office_id=Office.get("Archivo").id
#   self.office=Office.start_office
   save 
end

def assing_person
   self.person = Person.find_or_create_by(email: email)
end 


end
