class CreateLegalSpouses < ActiveRecord::Migration[5.2]
  def change
    create_table :legal_spouses do |t|
      t.string :spouse_name
      t.integer :spouse_nric
      t.date :spouse_dob
      t.integer :spouse_age
      t.string :spouse_pob
      t.string :spouse_race
      t.string :spouse_religion
      t.string :spouse_tel_no
      t.string :spouse_hp_no
      t.string :spouse_occupation
      t.text :spouse_perm_address
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
