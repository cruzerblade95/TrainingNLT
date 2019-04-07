class CreatePersonalDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_details do |t|
      t.string :staff_name
      t.integer :staff_nric
      t.date :staff_dob
      t.string :staff_sex
      t.string :staff_pob
      t.string :staff_race
      t.string :staff_religion
      t.string :staff_marital_status
      t.text :staff_perm_address
      t.integer :staff_postcode
      t.string :staff_state
      t.string :staff_tel_no
      t.string :staff_hp_no
      t.text :staff_corr_address
      t.string :staff_employ_type

      t.timestamps
    end
  end
end
