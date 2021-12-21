class CreateSearchResults < ActiveRecord::Migration[6.0]
  def change
    create_view :search_results

    add_index :search_results, :id
    add_index :search_results, :name
  end
end
