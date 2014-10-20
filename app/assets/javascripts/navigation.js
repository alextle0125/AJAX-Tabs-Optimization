$(document).ready(function() {

  $(document).click(function(event){
    event.preventDefault();
    tab = event.target.innerText.toString();
    if(tab.search('phase') === 0){
      $('ul.nav.nav-tabs.nav-stacked.content').empty();
      $.ajax("/tab/" + event.target.text + "", {
        type: 'GET',
      }).done(function(responseText){
        var strippedChallenges = responseText.match(/(challenge name: \w*)&/g);
        challenges = [];
        for(i = 0; i < strippedChallenges.length; i++){
          challenges.push(strippedChallenges[i].replace('&',''));
        }
        for(i = 0; i < challenges.length; i++){
          $('ul.nav.nav-tabs.nav-stacked.content').append("<li><a href=\'/challenges/" + challenges[i] + "\'>" + challenges[i] + "</a><div class=\'challenge-content hidden\'></div></a></li></div></div>");
        }
      })
    } else if(tab.search('challenge') === 0){
      if ($(event.target.nextElementSibling).text() === "") {

        if ($(event.target.nextElementSibling).hasClass("hidden")){
          $(event.target.nextElementSibling).removeClass("hidden");
          $(event.target.nextElementSibling).addClass("active");
        } else {
          $(event.target.nextElementSibling).removeClass("active");
          $(event.target.nextElementSibling).addClass("hidden");
        }

        $.ajax("/challenges/" + event.target.text + "", {
          type: 'GET',
        }).done(function(responseText){
          imageUrl = responseText.match(/<image>(.*)<\/image>/);
          description = responseText.match(/<description>(.*)<\/description>/);
          $(event.target.nextElementSibling).append("<img src=\'" + imageUrl[1] + "\'>" + description[1]);
        });
      } else {
        if ($(event.target.nextElementSibling).hasClass("hidden")){
          $(event.target.nextElementSibling).removeClass("hidden");
          $(event.target.nextElementSibling).addClass("active");
        } else {
          $(event.target.nextElementSibling).removeClass("active");
          $(event.target.nextElementSibling).addClass("hidden");
        }
      }
    }
  })
});
