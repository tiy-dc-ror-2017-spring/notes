require "./test/test_helper"

class CarafeTest < Minitest::Test
  def test_exists
    assert Carafe
  end

  def test_can_create_a_carafe
    carafe = Carafe.create(
      name: "Pool",
      max_volume: 13_638.3,
      current_volume: 0,
      event_id: 123
    )

    assert carafe.persisted?
  end
end
