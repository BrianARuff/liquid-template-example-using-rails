class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :user
      t.text :template

      t.timestamps
    end
  end
end
