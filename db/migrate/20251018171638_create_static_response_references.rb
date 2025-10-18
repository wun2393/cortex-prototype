class CreateStaticResponseReferences < ActiveRecord::Migration[7.1]
  def change
    create_table :static_response_references do |t|
      t.string :txt_title_details
      t.string :txt_section_details
      t.string :txt_section_content
      t.references :static_response, null: false, foreign_key: true

      t.timestamps
    end
  end
end
