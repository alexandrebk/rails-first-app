class PagesController < ApplicationController
  def about
    puts "--------"
    p params
    puts "--------"
    @teachers = ['Maelie', 'Alexandre', 'Omar']

    if params[:teacher]
      @teachers = @teachers.select { |member| member.start_with?(params[:teacher]) }
    end
  end

  def contact
  end

  def home
  end
end