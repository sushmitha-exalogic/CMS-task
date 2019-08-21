class CreateCampus < ActiveRecord::Migration[5.2]
  def change
    create_table :campus do |t|
      t.string :campus

      t.timestamps
    end
  end
end
