class UsersController < ApplicationController
  before_filter :check_search, :only => :new
  after_filter :save_search, :only => :search
  
  def search
    @search_filter = User.search(params[:q])

    @users = @search_filter.result.all
  end

  protected
  
  def check_search
    @search = (Search.count > 0)
    @last_search = Search.last.url
  end
  
  def save_search
    if request.xhr? 
      puts "*" * 99
      puts "Ajax calling"
      puts "*" * 99
      puts "request.filtered_parameters"
      puts request.filtered_parameters
      @name_search = request.filtered_parameters["q"]["id_eq"]
      @age_search = request.filtered_parameters["q"]["age_eq"]
      Search.create(:url => request.fullpath, :name => User.where(:id => @name_search).first.name, :age => @age_search)
      puts Search.last.url
    end
  end
  
end

$("#click").click(function()	
{ 
   jQuery.ajax({data: $("#click").serialize(), dataType: 'script',
       type:'get', url:'/users/search?utf8=%E2%9C%93&q%5Bid_eq%5D=&q%5Bage_eq%5D=99&_=1333856241837'});
 });