ActiveRecord::Schema.define(:version => 20101111160738) do

  create_table "questions", :force => true do |t|
    t.string   "title",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
