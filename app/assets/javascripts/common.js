jQuery(document).ready(function(){
  $('#portfolio-flters').ready(function() {
   var target_id;
   $('#portfolio-flters li').each(function() {
     return $(this).removeClass('filter-active');
   });
   if (location.pathname.match(/works/)) {
     return $('#portfolio-flters').find('[data-id="0"]').addClass('filter-active');
   } else {
     target_id = location.pathname.replace('/genres/', '');
     return $('#portfolio-flters').find(`[data-id=${target_id}]`).addClass('filter-active');
   }
 });
});
