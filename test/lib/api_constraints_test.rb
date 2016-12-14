require 'test_helper'

class ApiConstraintsTest < ActiveSupport::TestCase

  def setup
    super
    @api_constraints_v1 = ApiConstraints.new(version: 1)
    @api_constraints_v2 = ApiConstraints.new(version: 2, default: true)
  end

  test "API constraints should route to version WHEN version specified" do
    request = Object.new

    def request.headers
      { "Accept" => "application/vnd.coffeeseller.v1" }
    end

    assert @api_constraints_v1.matches?(request)
  end

  test "API constraints should route to default version WHEN version unspecified" do
    request = Object.new

    def request.headers
      {}
    end

    assert @api_constraints_v2.matches?(request)
  end

  test "API constraints should route to default version WHEN version unrecognized" do
    request = Object.new

    def request.headers
      { "Accept" => "application/vnd.coffeeseller.v3" }
    end

    assert @api_constraints_v2.matches?(request)
  end

end
