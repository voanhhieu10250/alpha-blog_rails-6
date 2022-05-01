class AddTimestampsToArticles < ActiveRecord::Migration[6.1]
  def change
    # func - table - attribute - datatype
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
