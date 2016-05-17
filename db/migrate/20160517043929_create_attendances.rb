class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :course_session
      t.references :student
      t.timestamps null: false
    end
  end
end
