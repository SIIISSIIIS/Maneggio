class CreateUtentis < ActiveRecord::Migration[6.1]
  def change
    create_table :utentis do |t|
      t.string :cognome
      t.string :nome
      t.string :email
      t.integer :numero
      t.text :annotazioni

      t.timestamps
    end
  end
end
