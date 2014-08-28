require 'test_helper'

class FileRecordsControllerTest < ActionController::TestCase
  
  test 'debe existir el index' do
    get :index
    assert_response :success
    assert_not_nil assigns :file_records
  end

  test 'debe existir el new'  do
    get :new
    assert_response :success
  end

  test 'busco' do
    get :search , {title:'marihuana'}
    file_record=file_records(:marihuana)

    assert_not_nil assigns :file_records

#    assert_response :success
  end 

end