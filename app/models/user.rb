class User < ActiveRecord::Base

#attr_accessible :fname
  #attr_accessible :fname :lname :email :summary


  searchable do
    text :fname, :lname
    text :email, :summary
    integer :id
    time :updated_at
  end



def fname
	#read_attribute(:fname)
 end 

#(:id integer, created_at: datetime, updated_at: datetime)


end
