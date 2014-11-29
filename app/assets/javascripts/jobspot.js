function init() {
    window.addEventListener('scroll', function(e){
        var distanceY = window.pageYOffset || document.documentElement.scrollTop,
            shrinkOn = 700,
            header = document.querySelector("header");
        if (distanceY > shrinkOn) {
            classie.add(header,"smaller");
        } else {
            if (classie.has(header,"smaller")) {
                classie.remove(header,"smaller");
            }
        }
    });
}
window.onload = init();

$(document).on('page:change', function() {
  jQuery('.search').click(function(event) {
      event.preventDefault();
      jQuery('#search').show("slow");
      jQuery('.search').addClass("purple-search");
  });
});