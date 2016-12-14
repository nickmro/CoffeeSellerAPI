require 'test_helper'

class PodSizeTest < ActiveSupport::TestCase
  
  test "A Pod Size must have a name" do
    pod_size = PodSize.new
    pod_size.save
    assert pod_size.errors.keys.include?(:name)
  end

end
