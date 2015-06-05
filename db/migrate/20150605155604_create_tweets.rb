class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.references :user, index: true
      t.text :content
      t.integer :favourite

      t.timestamps
    end
  end
end
