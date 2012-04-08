$(function() 
{                  
  $("#search_todos_filter_form").change(function()
      { 
        jQuery.ajax({data: $("#search_todos_filter_form").serialize(), dataType: 'script',
            type:'get', url:'/searches'});
      });

});