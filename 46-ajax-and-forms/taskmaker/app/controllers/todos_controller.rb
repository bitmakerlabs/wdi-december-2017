class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.content = params[:todo][:content]

    if @todo.save
      if request.xhr?
        respond_to do |format|
          format.html do
            render partial: 'todo' , locals:{t: @todo}
          end
          format.json { render json: @todo}
        end
      else
      redirect_to root_url
      end
    end
  end
end
