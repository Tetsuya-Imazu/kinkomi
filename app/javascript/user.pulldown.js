window.addEventListener('load', function(){

  const pullDownButton = document.getElementById("user-lists");
  const pullDownParents = document.getElementById("user-pull-down")

  pullDownButton.addEventListener('mouseover', function(){
    // pullDownButton.setAttribute("style", "background-color:#D3D3D3;");
  });

  pullDownButton.addEventListener('mouseout', function(){
    // pullDownButton.removeAttribute("style", "background-color:#D3D3D3;");
  });

  pullDownButton.addEventListener('click', function(){
    if (pullDownParents.getAttribute("style") == "display:block;"){
      pullDownParents.removeAttribute("style", "display:block;");
    }else{
      pullDownParents.setAttribute("style", "display:block;");
    };
  });
});
