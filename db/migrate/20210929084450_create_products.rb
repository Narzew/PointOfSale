# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :code, null: false, unique: true
      t.decimal :price, scale: 2, precision: 30, null: false

      t.timestamps
    end
  end
end
