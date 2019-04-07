class CreateQualificationDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :qualification_details do |t|
      t.string :qualification
      t.string :sub_disc
      t.string :sch_col_uni
      t.date :year
      t.string :duration
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
