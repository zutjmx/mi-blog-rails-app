class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :nombre
      t.string :texto
      t.references :articulo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
