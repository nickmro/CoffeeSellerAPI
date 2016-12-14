require 'test_helper'

class PackSizeTest < ActiveSupport::TestCase

  test "A Pack Size must have a name" do
    pack_size = PackSize.new
    pack_size.save
    assert pack_size.errors.keys.include?(:name)
  end

  test "A Pack Size must have a quantity" do
    pack_size = PackSize.new
    pack_size.save
    assert pack_size.errors.keys.include?(:quantity)
  end

end
