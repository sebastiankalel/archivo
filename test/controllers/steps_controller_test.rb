require 'test_helper'

class StepsControllerTest < ActionController::TestCase

  test "step persona incompleta" do

    step={step: {email:'qwe@qwe.com', file_record: file_records(:one)}}
    post :create, step
    assert_redirected_to edit_person_path(people(:incompleto))

  end
  
  test "step persona completa" do

    step={step: {email:'qwe@qwe.com', file_record: file_records(:one)}}
    post :create, step
    assert_redirected_to file_record_path(file_records(:one).id)

  end

  test "step con persona inexistente" do
    post :create, {step: {email: 'qwe@qwe.com', file_records:(:one)}}
    person=Person.last
    assert_redirected_to edit_person_path(person.id)
  end

  test "step con email sin persona creada" do
    step_hash = {person: people(:conmail)}
    step = Step.new(step_hash)
    post :create, step: step_hash
    assert_redirected_to edit_person_path(step.person)
  end

   
end