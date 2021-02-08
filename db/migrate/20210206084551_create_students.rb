class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :Name
      t.string :Identification
      t.string :Branch
      t.string :Contact_number
      t.integer :Recruitment_year
      t.boolean :Status
      t.text :Projects_or_works
      t.string :Role_timeline
      t.string :Skill_set
      t.string :Remarks

      t.timestamps
    end
  end
end
