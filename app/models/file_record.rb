class FileRecord < ActiveRecord::Base
	has_many :steps

	after_create :save_step

   def save_step

      step=Step.start
      step. file_record_id=id
      step.save

   end

   def archivate
      step=Step.archivate
      step.file_record_id=id
      step.save
   end

   def first_file_record
   	steps<<Step.create.first_step
   	#build o create
   end



end
