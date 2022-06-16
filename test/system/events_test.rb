require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "should create event" do
    visit events_url
    click_on "New event"

    fill_in "Body", with: @event.body
    fill_in "Gps", with: @event.gps
    fill_in "Rescuer", with: @event.rescuer_id
    fill_in "State", with: @event.state
    fill_in "Strayed", with: @event.strayed_id
    fill_in "Subject", with: @event.subject
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "should update Event" do
    visit event_url(@event)
    click_on "Edit this event", match: :first

    fill_in "Body", with: @event.body
    fill_in "Gps", with: @event.gps
    fill_in "Rescuer", with: @event.rescuer_id
    fill_in "State", with: @event.state
    fill_in "Strayed", with: @event.strayed_id
    fill_in "Subject", with: @event.subject
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "should destroy Event" do
    visit event_url(@event)
    click_on "Destroy this event", match: :first

    assert_text "Event was successfully destroyed"
  end
end
