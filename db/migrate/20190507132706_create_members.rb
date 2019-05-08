class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :flat
      t.string :name_in_english
      t.string :name_in_gujrati
      t.string :contact_no1
      t.string :contact_no2

      t.timestamps
    end
  end
end
