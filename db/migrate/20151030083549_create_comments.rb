class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body,           null: false

      t.belongs_to :writer
      t.belongs_to :article

      t.timestamps null: false
    end
  end
end
