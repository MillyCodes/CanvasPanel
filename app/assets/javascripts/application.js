// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
// 
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require jquery3
//= require popper
//= require bootstrap-sprockets
/*
*= require_tree .
*= require_self
*/


$(document).ready(function() {

            //weather widget
        let city = "New York";
        $.ajax({
            url: `https://api.openweathermap.org/data/2.5/weather?q=${city}&units=imperial&appid=763fe1f66db2769efdeb8759a269a071`,
            type: 'GET',
            data: {
                format: 'json'
            },
            success: function(response) {
                let weather = response.weather[0];
                let iconSrc = "http://openweathermap.org/img/w/" +response.weather[0].icon +".png";
                let temp = Math.round(response.main.temp);
                $('#icon').attr('src', iconSrc);
                $('.showDesc').text(weather.description);
                $('.showTemp').text( `${temp}°F`);
            },
            error: function() {
                $('#errors').text("There was an error processing your request. Please try again.");
            
            }
        });

        let interval = setInterval(function() {
            let momentNow = moment();
            $('#date-part').html(momentNow.format('MMMM DD'));
            $('#time-part').html(momentNow.format('hh:mm:ss'));
            }, 100);

        //education news widget

        $.ajax({
            url: 'https://api.nytimes.com/svc/mostpopular/v2/mostviewed/education/1.json?api-key=a8c31f783a0a4298a84bd892ec859010',
            type: 'GET',
            data: {
                format: 'json',
            },
            success: function(response){
                let data = response.results;
                $.each(data, function () {
                    $('.newsTitle').append(`<li><a href="${this.url}" target="_blank">${this.title}</a></li>`);
                });
            }
        });
});
