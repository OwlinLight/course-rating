require "application_system_test_case"

class SurveysTest < ApplicationSystemTestCase
  setup do
    @survey = surveys(:one)
  end

  test "visiting the index" do
    visit surveys_url
    assert_selector "h1", text: "Surveys"
  end

  test "should create survey" do
    visit surveys_url
    click_on "New survey"

    fill_in "Audience", with: @survey.audience_id
    fill_in "Comment", with: @survey.comment
    fill_in "Event", with: @survey.event_id
    fill_in "Presenter", with: @survey.presenter_id
    fill_in "Score", with: @survey.score
    check "Submitted" if @survey.submitted
    click_on "Create Survey"

    assert_text "Survey was successfully created"
    click_on "Back"
  end

  test "should update Survey" do
    visit survey_url(@survey)
    click_on "Edit this survey", match: :first

    fill_in "Audience", with: @survey.audience_id
    fill_in "Comment", with: @survey.comment
    fill_in "Event", with: @survey.event_id
    fill_in "Presenter", with: @survey.presenter_id
    fill_in "Score", with: @survey.score
    check "Submitted" if @survey.submitted
    click_on "Update Survey"

    assert_text "Survey was successfully updated"
    click_on "Back"
  end

  test "should destroy Survey" do
    visit survey_url(@survey)
    click_on "Destroy this survey", match: :first

    assert_text "Survey was successfully destroyed"
  end
end
