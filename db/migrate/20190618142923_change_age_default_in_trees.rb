class ChangeAgeDefaultInTrees < ActiveRecord::Migration[5.2]
  def change
    change_column_default :trees, :age, from: nil, to: 0
  end
end
