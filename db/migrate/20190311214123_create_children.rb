class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string :children_name
      t.integer :children_nric
      t.integer :children_age
      t.string :children_sex
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
