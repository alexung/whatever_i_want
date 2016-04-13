class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :title
      t.references :user, index: true

      t.timestamps
    end
  end
end
