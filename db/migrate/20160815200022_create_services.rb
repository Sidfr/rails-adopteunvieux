class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :description
      t.string :city
      t.references :availability, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
