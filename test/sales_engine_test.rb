require "minitest/autorun"
require './lib/sales_engine'
require 'pry'
class SalesEngineTest < Minitest::Test
  def test_it_exists
    sales_engine = SalesEngine.from_csv({
      :items     => "./data/items.csv",
      :merchants => "./data/merchants.csv",
    })
    assert_instance_of SalesEngine, sales_engine
  end
end
