class SearchesController < InheritedResources::Base
  after_filter :save_user_search, :only => :index
  
  def index
    @todo_filter = Todo.search(params[:q])
    @todos = @todo_filter.result.all
  end
  
  protected
  
  def save_user_search
    if request.xhr?
      puts "*" * 99
      puts 'Ajax calling'
      puts "*" * 99    
      
      puts "request.filtered_parameters"
      puts request.filtered_parameters
      puts request.methods      
      
      @todo_name = request.filtered_parameters["q"]["name_eq"]
      @todo_status = request.filtered_parameters["q"]["status_eq"]
      @url = request.fullpath      
      @search = Search.create(:user_id => current_user.id, :name => @todo_name, 
        :status => @todo_status, :url => @url)
    end
  end
end