var favoriteId = <%=@favorite.id%>;
var favoriteContainer = $('[data-id="' + favoriteId + '"]');

// Remove the favorite's container from the DOM
favoriteContainer.remove();
