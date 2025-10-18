class CreateStaticQueries < ActiveRecord::Migration[7.1]
  def change
    create_table :static_queries do |t|
      t.string :txt_query

      t.timestamps
    end
  end
end
