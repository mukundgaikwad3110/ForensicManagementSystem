function getAge(){
var newDateObject = new Date();

var newObjectCurrentYear = newDateObject.getFullYear();

var userDateObject = document.getElementById("birthdate").value;

var userDateObjectPieces = userDateObject.split("-");

var userObjectYear = userDateObjectPieces[0];

if ( newObjectCurrentYear > userObjectYear){
var currentAge = parseInt(newObjectCurrentYear) - parseInt(userObjectYear);
document.getElementById("age").value = +currentAge;
//alert("Your Current Age is: " + currentAge + " " +(currentAge>1?"years":"year"));
}

else{
alert("Birth-Year must be lower than Current-Year.\nPlease Enter Again.");
}

}
