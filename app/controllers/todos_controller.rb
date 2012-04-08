class TodosController < InheritedResources::Base
  def create
    @todo = Todo.new(params[:todo])
    @todo.user_id = current_user.id

    respond_to do |format|
      if @todo.save
        format.html { redirect_to @todo, notice: 'Todo was successfully created.' }
        format.json { render json: @todo, status: :created, location: @todo }
      else
        format.html { render action: "new" }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
