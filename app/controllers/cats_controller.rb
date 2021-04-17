class CatsController < ApplicationController

    def index
        cats = Cat.all
        render json: cats, except: [:created_at, :updated_at]
    end

end
