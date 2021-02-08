require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Branch", with: @student.Branch
    fill_in "Contact number", with: @student.Contact_number
    fill_in "Identification", with: @student.Identification
    fill_in "Name", with: @student.Name
    fill_in "Projects or works", with: @student.Projects_or_works
    fill_in "Recruitment year", with: @student.Recruitment_year
    fill_in "Remarks", with: @student.Remarks
    fill_in "Role timeline", with: @student.Role_timeline
    fill_in "Skill set", with: @student.Skill_set
    check "Status" if @student.Status
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Branch", with: @student.Branch
    fill_in "Contact number", with: @student.Contact_number
    fill_in "Identification", with: @student.Identification
    fill_in "Name", with: @student.Name
    fill_in "Projects or works", with: @student.Projects_or_works
    fill_in "Recruitment year", with: @student.Recruitment_year
    fill_in "Remarks", with: @student.Remarks
    fill_in "Role timeline", with: @student.Role_timeline
    fill_in "Skill set", with: @student.Skill_set
    check "Status" if @student.Status
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
