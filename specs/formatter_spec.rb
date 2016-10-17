require('minitest/autorun') 
require('minitest/rg')
require_relative('../models/formatter')

class TestFormatter< Minitest::Test

def setup
  @formatter = Formatter.new()
end


def test_upcase
  assert_equal("E13 ZQF", @formatter.upcase("e13 zqf"))
end


def test_camelcase
  assert_equal("CodeClan", @formatter.camelcase("code_clan"))
end

end