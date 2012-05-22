class CreatePullItems < ActiveRecord::Migration
  def self.up
    create_table :pull_items, :force => true do |t|
        t.integer "pull_id", :null => false
        t.string  "type", :null => false # commit / comment / merged / reviewed / closed / canceled
        t.integer "user_id", :null => true
        t.integer "revision", :null => true
        t.integer "line", :null => true
        t.text "content", :null => true, :limit => 4294967295
        t.datetime "created_on", :null => false
        t.datetime "updated_on", :null => false
    end
  end

  def self.down
    drop_table :pull_items
  end
end