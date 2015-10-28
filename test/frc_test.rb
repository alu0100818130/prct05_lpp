require "lib/fraction"

class TestPoint < Test::Unit::TestCase
  def setup
    @fraccion1 = Fracciones.new(4,5)
    @fraccion2 = Fracciones.new(2,3)
  end
  
  def tear_down
    # Nada
  end
  def test_simple
    assert_equal("22,15", (@fraccion1 + @fraccion2).to_s)
    assert_equal("2,15", (@fraccion1 - @fraccion2).to_s)
    assert_equal("8,15", (@fraccion1 * @fraccion2).to_s)
    assert_equal("6,5", (@fraccion1 / @fraccion2).to_s)
  end
  #def test_type_check
  #  assert_raise(RuntimeError) {Fracciones.new('2','3')}
  #end
  #def test_failure
  #  assert_equal("10,15", (@fraccion1 * 5).to_s, "Producto escalar")
  #end
end
