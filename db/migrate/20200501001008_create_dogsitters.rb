class CreateDogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dogsitters do |t|

      t.timestamps
    end
  end
end
