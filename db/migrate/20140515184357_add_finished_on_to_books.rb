class AddFinishedOnToBooks < ActiveRecord::Migration
  def change
    add_column :books, :finished_on, :date
  end
end
