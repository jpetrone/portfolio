class CreateResume < ActiveRecord::Migration
  def change
    create_table :resume do |t|

      t.timestamps
    end
  end
end
