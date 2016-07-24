class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|

      t.string :name
      t.string :team # management team




      t.timestamps null: false
    end
  end
end
