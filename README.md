Ajax Search
===========

The "problem":
	A rails app at my work has a search page.
	User wants:
		after doing a search, he clicks on the link to show one of the search results, do other stuff and wants to return
		to search page with the last results.(hitting the back button)
		
	At the moment:
		when doing this in IE the last results "disappear", as "expected".
		Ajax doesn't change the url.
		
	After thinking about some possible solutions for this and searching around i went to check these links:
	http://railscasts.com/episodes/240-search-sort-paginate-with-ajax
	http://railscasts.com/episodes/246-ajax-history-state
	https://github.com/blog/760-the-tree-slider
	https://github.com/balupton/history.js
	https://developer.mozilla.org/en/DOM/Manipulating_the_browser_history
	http://caniuse.com/

After reading i thought:
	why not save the user search and show the last five?
	
I know this is not the best solution but, doing this way i will have to "do it myself" but...this is good, so i can make some mistakes and learn with them.

When the time comes i'll try a mix of the solutions above.

Gems used in this project:
	
	ransack: https://github.com/ernie/ransack
	
	inherited_resources: https://github.com/josevalim/inherited_resources

Cheers!

project link on heroku: http://empty-winter-7288.herokuapp.com/

Login: user
Password: password