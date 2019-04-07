class CreateRelatives < ActiveRecord::Migration[5.2]
  def change
    create_table :relatives do |t|
      t.string :relative_name
      t.integer :relative_nric
      t.string :relative_relationship
      t.string :relative_tel_no
      t.string :relative_hp_no
      t.text :relative_perm_address
      t.integer :relative_postcode
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
