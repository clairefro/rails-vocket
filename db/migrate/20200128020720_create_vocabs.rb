class CreateVocabs < ActiveRecord::Migration[6.0]
  def change
    create_table :vocabs do |t|
      t.string :french
      t.string :native_translation
      t.boolean :starred, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
