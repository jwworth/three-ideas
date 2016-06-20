require './lib/three_ideas.rb'
require 'minitest/autorun'

class TestThreeIdeas < Minitest::Test
  def setup
    @ideas = ThreeIdeas.generate
  end

  def test_output_exists
    assert_equal(@ideas.class, Array)
    assert_equal(@ideas.length, 3)
  end

  def test_output_is_valid
    @ideas.each do |idea|
      assert(/\w+ written in \w+/.match idea)
    end
  end
end
