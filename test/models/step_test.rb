require 'test_helper'

class StepTest < ActiveSupport::TestCase

  test "asignar persona por email" do
    step = Step.create email: 'qwe@qwe.com'

    assert step.person.email == 'qwe@qwe.com'
  end

 # test "si no es el ultimo" do
    
 #   step=steps(:paso3)
 #   delete :destroy, id: steps(:paso3).id
 #   assert step.file_record.steps.count==3

#  end

 # test "si no es el ultimo" do-

  #  step=steps(:entrada)

  #  assert step.destroy
        
 #   assert step.file_records.steps.count==3

  #  delete, :destroy, id:steps(:).id

    #end 
  
end
