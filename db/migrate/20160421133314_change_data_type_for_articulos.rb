class ChangeDataTypeForArticulos < ActiveRecord::Migration
  def change
  	 change_column :articulos, :categoria_id, :text
  end
end
