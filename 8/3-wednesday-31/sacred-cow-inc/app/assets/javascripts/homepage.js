// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// let featuredProductsEl = document.getElementsByClassName('featured-products')[0];
// let cartLinks = featuredProductsEl.getElementsByClassName('add-to-cart');
// console.log(cartLinks);
//

$(document).on("ready", function() {

  let addToCartLinks = $('.featured-products .add-to-cart');
  addToCartLinks.on('click', function addToCartHandler(event) {
    let productId = $(event.target).data("product-id");

    $.ajax({
      url: "/cart/add_product",
      method: "POST",
      data: {
        product_id: productId
      }
    }).then(function (data) {
      $(event.target).css("background-color", "green");
      $("#alerts").html(`<div class='alert alert-success'>${data.message}</div>`);
    });

  });
});
