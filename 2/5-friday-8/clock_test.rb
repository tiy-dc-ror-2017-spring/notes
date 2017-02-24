require "minitest/autorun"
require "minitest/pride"
require "minitest/focus"
require_relative "clock"

class ClockTest < Minitest::Test
  def test_clock_exists
    assert Clock
  end

  def test_clock_can_be_made
    russells_watch = Clock.new

    assert_equal Clock, russells_watch.class
  end

  def test_can_get_current_time
    russells_watch = Clock.new

    assert_in_delta \
      Time.now.to_i,
      russells_watch.what_time_is_it.to_i,
      2
  end
end
