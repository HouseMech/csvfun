/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

console.log('Hello World from Webpacker')

import Chart from 'chart.js';

var ctx = document.getElementById('consumption-graph');

var myBarChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['2019-03-15 00:00', '2019-03-15 00:01', '2019-03-15 00:02', '2019-03-15 00:03', '2019-03-15 00:04', '2019-03-15 00:05'],
      datasets: [{
        label: 'Consumption',
        data: [2.41, 1.48, 2.53, 2.00, 2.20, 1.82]
      }]
    },

});
