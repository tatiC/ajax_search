class SearchesController < InheritedResources::Base
  def index
    @todo_filter = Todo.search(params[:q])
    @todos = @todo_filter.result.all
  end
end
