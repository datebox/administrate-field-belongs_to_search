// belongs_to form
$(function() {
  $(".field-unit--belongs-to-search select").each(function initializeSelectize(index, element) {
    var $element = $(element);
    $element.selectize({
      valueField: 'id',
      labelField: 'dashboard_display_name',
      searchField: 'dashboard_display_name',
      create: false,
    });
  });
});
