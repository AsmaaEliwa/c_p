class User < ApplicationRecord
    validates :name ,presence:true ,uniqueness:true,allow_nil:false
    validates :age ,presence:true ,allow_nil:false

end
