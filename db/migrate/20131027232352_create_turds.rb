class CreateTurds < ActiveRecord::Migration
  def change
    create_table :turds do |t|

      t.timestamps
    end
  end
end
