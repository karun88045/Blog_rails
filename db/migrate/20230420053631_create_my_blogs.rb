class CreateMyBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :my_blogs do |t|

      t.timestamps
    end
  end
end
