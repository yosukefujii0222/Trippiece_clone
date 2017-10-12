// $(function () {
//   function buildHTML(image) {
//     var html = `<%= image_tag image.image.to_s %>`;
//     return html;
//   }
//   function append_html_to_list(html) {
//     $('.main-block__image').append(html);
//   }

//   $("#recommend_image").on("change", function() {
//     $("#new_recommend").submit();
//     $('#new_recommend').ajaxForm({dataType: 'json'})
//     .done(function(data) {
//       var html = buildHTML(data);
//       append_html_to_list(html);
//     })
//   })
// });
