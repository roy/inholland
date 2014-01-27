# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090730201336) do

  create_table "crust_types", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pizza_toppings", :force => true do |t|
    t.integer  "pizza_id"
    t.integer  "topping_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pizza_toppings", ["pizza_id", "topping_id"], :name => "index_pizza_toppings_on_pizza_id_and_topping_id"

  create_table "pizzas", :force => true do |t|
    t.string   "title"
    t.boolean  "crusty"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "crust_type_id"
  end

  create_table "toppings", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
