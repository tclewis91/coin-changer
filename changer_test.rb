require 'minitest/autorun'
require 'minitest/pride'

require './changer'

class ChangerTest < Minitest::Test

  def test_changer_exists
    assert(changer(99))
  end

  def test_changer_returns_penny_for_one_cent
    assert_equal([1], changer(1))
  end

  def test_changer_returns_multiple_pennies
    expect = [1, 1, 1]
    actual = changer(3)
    assert_equal(expect, actual)
  end

  def test_four_pennies_for_four_cent
    expect = [1, 1, 1, 1]
    actual = changer(4)
    assert_equal(expect, actual)
  end

  def test_give_nickel_return_five_cents
    expect = [5]
    actual = changer(5)
    assert_equal(expect,actual)
  end


  def test_give_dime_return_10_cents
    expect = [10]
    actual = changer(10)
    assert_equal(expect,actual)
  end

  def test_two_dimes_for_20_cents
    expect = [10, 10]
    actual = changer(20)
    assert_equal(expect, actual)
  end

  def test_give_quarter_return_25_cents
    expect = [25]
    actual = changer(25)
    assert_equal(expect,actual)
  end

  def test_two_quarters_for_50_cents
    expect = [25, 25]
    actual = changer(50)
    assert_equal(expect, actual)
  end

  def test_mixed_coin_return
    expect = [5, 1, 1]
    actual = changer(7)
    assert_equal(expect, actual)
  end

  def test_99_cents_gives_proper_change
    expect = [25, 25, 25, 10, 10, 1, 1, 1, 1]
    actual = changer(99)
    assert_equal(expect, actual)
  end

end
