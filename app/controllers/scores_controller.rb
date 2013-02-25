class ScoresController < ApplicationController
    def index
        @scores = Score.order("score DESC").limit(10)
        respond_to do |format|
            format.html # index.html.erb
        end
    end
    def create
        @number = ( !params[:score] ) ? 0 : params[:score]
        @name  = ( !params[:name] )  ? "guest" : params[:name]
        @score = Score.new(
            :score => @number,
            :name  => @name
        )
        @score.save()
    end
end
