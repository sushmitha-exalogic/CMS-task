class CreateAssignings < ActiveRecord::Migration[5.2]
  def change
    create_table :assignings do |t|
    	t.integer :course_id
    	t.integer :department_id
      t.timestamps
    end
  end
end
