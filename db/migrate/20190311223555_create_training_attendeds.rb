class CreateTrainingAttendeds < ActiveRecord::Migration[5.2]
  def change
    create_table :training_attendeds do |t|
      t.string :training
      t.string :status
      t.integer :duration_training
      t.string :training_institute
      t.string :training_place
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
