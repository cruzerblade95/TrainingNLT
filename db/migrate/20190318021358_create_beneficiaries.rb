class CreateBeneficiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :beneficiaries do |t|
      t.string :ben_name
      t.integer :ben_nric
      t.string :ben_relationship
      t.string :ben_percentage
      t.string :ben_tel_no
      t.string :ben_hp_no
      t.text :ben_perm_address
      t.integer :ben_postcode

      t.timestamps
    end
  end
end
