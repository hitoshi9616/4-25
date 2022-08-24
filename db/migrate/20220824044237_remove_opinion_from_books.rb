class RemoveOpinionFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :Opinion, :text
  end
end
