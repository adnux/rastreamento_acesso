class CreateAcessos < ActiveRecord::Migration[5.1]
  def change
    create_table :acessos do |t|
      t.string :key
      t.string :url
      t.string :date

      t.timestamps
    end
  end
end
