class RemoveCategoriaIdFromArticulos < ActiveRecord::Migration
  def change
    remove_column :articulos, :categoria_id, :text
  end
end
