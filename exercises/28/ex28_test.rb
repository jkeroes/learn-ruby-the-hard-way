require 'minitest/autorun'

class BooleanTests < MiniTest::Unit::TestCase
  def test_minitest
    assert_equal 1, 1 
    assert_equal 'a', 'a' 
    assert_equal true, true 
    refute_equal true, false 
  end

  def test_boolean_practice
    assert_equal true,  (true and true) 
    assert_equal false, (false and true) 
    assert_equal false, (1 == 1 and 2 == 1) 
    assert_equal true,  ("test" == "test") 
    assert_equal true,  (1 == 1 or 2 != 1) 
    assert_equal true,  (true and 1 == 1) 
    assert_equal false, (false and 0 != 0) 
    assert_equal true,  (true or 1 == 1) 
    assert_equal false, ("test" == "testing") 
    assert_equal false, (1 != 0 and 2 == 1) 
    assert_equal true,  ("test" != "testing") 
    assert_equal false, ("test" == 1) 
    assert_equal true,  (not (true and false)) 
    assert_equal false, (not (1 == 1 and 0 != 1)) 
    assert_equal false, (not (10 == 1 or 1000 == 1000) )
    assert_equal false, (not (1 != 10 or 3 == 4)) 
    assert_equal true,  (not ("testing" == "testing" and "Zed" == "Cool Guy")) 
    assert_equal true,  (1 == 1 and not ("testing" == 1 or 1 == 0)) 
    assert_equal false, ("chunky" == "bacon" and not (3 == 4 or 3 == 3) )
    assert_equal false, (3 == 3 and not ("testing" == "testing" or "Ruby" == "Fun")) 
  end
end

# Extra Credit 1: There are a lot of operators in Ruby similar to != and
# ==. Try to find out as many "equality operators" as you can. They should
# be like: < or <=.
#
# ==> done. 

# Extra Credit 2: Write out the names of each of these equality operators.
# For example, I call != "not equal".
#
# ==>
# == equals (value is same after casts)
# != not equals
# >  greater than
# <  less than
# >= greater than or equal
# <= less than or equal
# <=> spaceship
# === set contains
# .eql? dot equal (type and value are the same)
# .equal? dot equal for object id.

# Extra Credit 3: Play with IRB by typing out new boolean operators, and
# before you hit enter try to shout out what it is. Do not think about it,
# just the first thing that comes to mind. Write it down then hit enter,
# and keep track of how many you get right and wrong. Throw away that piece
# of paper from #3 away so you do not accidentally try to use it later.
#
# ==> done. But I'm not throwing away any notes.
