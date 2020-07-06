function myFunction() {
  var txt = "";
  if (document.getElementById("id1").validity.rangeUnderflow) {
    txt = "Value too small";
  } else {
    txt = "Input OK";
  } 
  alert(txt);
  //document.getElementById("demo").innerHTML = txt;
}