class CreateProfessionalMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :professional_memberships do |t|
      t.string :association
      t.string :institution
      t.string :duration_date
      t.string :annual_subs
      t.references :personal_detail, foreign_key: true

      t.timestamps
    end
  end
end
