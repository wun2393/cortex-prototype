class CreateStaticResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :static_responses do |t|
      t.string :txt_scheme
      t.string :txt_relevant_doc
      t.string :txt_relevant_doc_section_details
      t.string :txt_bp_1
      t.string :txt_bp_2
      t.string :txt_bp_3
      t.string :txt_bp_4
      t.references :static_query, null: false, foreign_key: true

      t.timestamps
    end
  end
end
