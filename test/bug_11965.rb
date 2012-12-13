#
# Testing Rools
#
# Pat Cappelaere
#
# Wed Apr 25 20:50:00 EDT 2007
#

require_relative 'helper'
require 'test/unit'
require 'rools'
require 'rools/base'
require 'logger'

class Bug11965_Test < Test::Unit::TestCase
  def setup
    Rools::Base.logger = Logger.new(STDOUT)
  end

  def test_bug
    rules = Rools::RuleSet.new do
    rule "yello" do
      parameter String
      consequence {
        puts string
      }
    end
  end

  rules.assert "I'm not nil!"
  end
end


