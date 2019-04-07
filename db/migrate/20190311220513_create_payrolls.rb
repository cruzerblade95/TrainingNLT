class CreatePayrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :payrolls do |t|
      t.integer :epf_no
      t.integer :socso_no
      t.integer :income_tax_no
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
