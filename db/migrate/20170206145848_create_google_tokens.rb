class CreateGoogleTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :google_tokens do |t|
      t.integer :user_id
      t.text :token

      t.timestamps
    end
  end
end
