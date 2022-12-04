require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Buckid", with: @student.buckid
    fill_in "Fname", with: @student.fname
    fill_in "Group", with: @student.group_id
    fill_in "Lname", with: @student.lname
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Buckid", with: @student.buckid
    fill_in "Fname", with: @student.fname
    fill_in "Group", with: @student.group_id
    fill_in "Lname", with: @student.lname
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
