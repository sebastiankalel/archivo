class Person < ActiveRecord::Base
	has_many :steps

	def completed?
	   name && email && dni
	end

end
