require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  
  test "persona completa" do
    assert Person.new(email: 'qwe@qwe', name: 'qwe', dni: 30123456).completed?
  end
  
  test "persona incompleta" do
    assert !Person.new(email: 'qwe@qwe', dni: 888).completed?
  end
  
end
