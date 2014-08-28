require 'test_helper'

class FileRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

test 'encontrar file record con marihuana' do
  file=FileRecord.where('title like "%marihuana%"')
  assert !file.empty?

end

end
