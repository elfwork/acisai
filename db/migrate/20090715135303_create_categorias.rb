class CreateCategorias < ActiveRecord::Migration
  def self.up
    create_table :categorias do |t|
      t.string :nome
      t.string :capa_file_name
      t.string :content_type
      t.integer :capa_file_size
      t.datetime :capa_updated_at 
      t.timestamps
    end
  end

  def self.down
    drop_table :categorias
  end
end
