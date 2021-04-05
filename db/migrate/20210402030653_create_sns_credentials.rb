class CreateSnsCredentials < ActiveRecord::Migration[5.2]
  def change
    create_table :sns_credentials do |t|
      t.references :user_id, null: false
      t.string :provider, null: false
      t.string :uid, null: false

      t.timestamps
    end
  end
end
