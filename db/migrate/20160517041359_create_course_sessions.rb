class CreateCourseSessions < ActiveRecord::Migration
  def change
    create_table :course_sessions do |t|
      t.date   :date
      t.string :subject
      t.timestamps null: false
    end
  end
end
