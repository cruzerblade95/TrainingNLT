class CreateWorkingExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :working_experiences do |t|
      t.string :company_name
      t.string :designation
      t.text :reason_leaving
      t.date :year
      t.string :duration
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
