var current = 0
var unfriend = function(){
   if(current >= 16){
      $('.pager-next').children().click()
      children = 0
      setTimeout(unfriend, 4000)
   }else{
      var friendId = $('.avatar-card-caption').eq(current).children().attr('id')
      current++
      $.ajax({
         url: '/api/friends/removefriend',
         type: 'post',
         data: '{"targetUserID":"' + friendId + '"}',
         headers: { 'X-CSRF-TOKEN': Roblox.XsrfToken.getToken() },
         success: unfriend,
         contentType: "application/json;charset=UTF-8",
      })
   }
};

unfriend();