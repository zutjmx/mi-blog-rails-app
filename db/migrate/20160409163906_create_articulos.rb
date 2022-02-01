class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :contenido
      t.references :autor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
