class CreateHorses < ActiveRecord::Migration[6.1]
  def change
    create_table :horses do |t|
      t.string :nome
      t.string :sesso
      t.text :descrizione
      t.integer :età

      t.timestamps
    end
  end
end
