class AddOverviewToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :overview, :text
  end
end
