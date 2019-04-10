class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.decimal :Rating
      t.text :Desc
      t.string :genres

      t.timestamps
    end
  end
end
