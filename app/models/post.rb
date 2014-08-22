class Post < ActiveRecord::Base
  searchable do
    text :fname, :lname
    text :email :summary
    integer :id
    time :updated_at
  end
end 

      

