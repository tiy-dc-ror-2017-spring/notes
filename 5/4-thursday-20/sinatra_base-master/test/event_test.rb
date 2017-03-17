require "./test/test_helper"

class EventTest < Minitest::Test
  def test_exists
    assert Event
  end

  def test_can_create_a_event
    event = Event.create(
      name: "Russell's Pool Party"
    )

    assert event.persisted?
  end

  def test_can_have_multiple_carafes
    event = Event.create(
      name: "Russell's Pool Party"
    )

    event.carafes << Carafe.create(name: "Russell's Pool")
    event.carafes << Carafe.create(name: "Russell's Hot Tub")

    assert_equal 2, event.carafes.count
  end
end
