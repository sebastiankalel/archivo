class FileRecord < ActiveRecord::Base
	has_many :steps

#	after_save :save_step
	after_create :save_step

   def save_step
  # 	  @step = Step.create({file_record_id:id,person_id:0,office_id:1})
  #    @step.save
      step=Step.start
      step. file_record_id=id
      step.save

   end

end
