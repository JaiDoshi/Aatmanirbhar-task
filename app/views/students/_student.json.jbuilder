json.extract! student, :id, :Name, :Identification, :Branch, :Contact_number, :Recruitment_year, :Status, :Projects_or_works, :Role_timeline, :Skill_set, :Remarks, :created_at, :updated_at
json.url student_url(student, format: :json)
