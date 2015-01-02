class Post < ActiveRecord::Base

    def string_id
        id.to_s(36)
    end
end
