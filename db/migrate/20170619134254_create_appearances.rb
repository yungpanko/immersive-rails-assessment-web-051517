class CreateAppearances < ActiveRecord::Migration[5.0]
  def change
    create_table :appearances do |t|
      t.references :episode
      t.references :guest
      t.integer :rating

      t.timestamps
    end
  end
end
