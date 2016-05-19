class CreatePersonajes < ActiveRecord::Migration
  def change
    create_table :personajes do |t|
      t.string :nombre
      t.string :sexo
      t.string :seiyu

      t.timestamps null: false
    end
  end
end
