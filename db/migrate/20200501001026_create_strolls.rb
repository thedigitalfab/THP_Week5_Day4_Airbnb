class CreateStrolls < ActiveRecord::Migration[6.0]
  def change
    create_table :strolls do |t|

      t.timestamps
    end
  end
end
