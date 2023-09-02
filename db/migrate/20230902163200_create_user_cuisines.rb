class CreateUserCuisines < ActiveRecord::Migration[7.0]
  def change
    create_table :user_cuisines do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cuisine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
