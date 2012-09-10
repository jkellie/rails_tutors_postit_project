class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :up
      t.integer :down
      t.integer :post_id

      t.timestamps
    end
    
    add_index(:votes, :post_id)
  end
end
