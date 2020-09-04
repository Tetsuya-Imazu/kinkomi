window.addEventListener('load', function(){
  const pullDownButton = document.getElementById("user-lists");
  const pullDownParents = document.getElementById("user-pull-down");
  const postButton = document.getElementById("post-btn");
 

  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#F7C599;")
  });

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#F7C599;")
  });

  pullDownButton.addEventListener('click', function(){
    if (pullDownParents.getAttribute("style") == "display:block;"){
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    };
  });

  postButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color:#F7C599;")
  });

  postButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#F7C599;")
  });

});
