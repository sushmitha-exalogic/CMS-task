class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :course_type
      t.integer :year
      t.integer :session
      t.integer :campu_id

      t.timestamps
    end
  end
end
