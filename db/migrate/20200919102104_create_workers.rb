class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.string :name,            null: false
      t.references :store,       null: false,foreign_key: true
      t.timestamps
    end
  end
end
