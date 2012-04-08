class Todo < ActiveRecord::Base
  belongs_to :user
  
  STATUS = [ "Open", "Done"]
end