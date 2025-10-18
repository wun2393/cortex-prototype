class CreateStaticqueries < ActiveRecord::Migration[7.1]
  def change
    create_table :staticqueries do |t|
      t.string :txt_query

      t.timestamps
    end
  end
end
