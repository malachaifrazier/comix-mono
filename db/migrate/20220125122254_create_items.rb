# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.references :bundle, null: false, foreign_key: true
      t.string :slug, null: false

      t.timestamps
    end
  end
end
