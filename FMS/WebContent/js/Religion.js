
var citiesByState = {
Hindu: ["Select Cast","Maratha","Jain","Dhanagar","Vani","Mali","Koli","Other"],
Muslim: ["Select Cast","Tablig","Shiya","Sunni","Other"],
Shikh: ["Select Cast","Shikh","","Other"],
Isai: ["Select Cast","Isai","","Other"],
Other:["Select Cast","","","","Other"]
}
function makeSubmenu(value) {
if(value.length==0) document.getElementById("CastSelect").innerHTML = "<option></option>";
else {
var citiesOptions = "";
for(cityId in citiesByState[value]) {
citiesOptions+="<option>"+citiesByState[value][cityId]+"</option>";
}
document.getElementById("CastSelect").innerHTML = citiesOptions;
}
}
function displaySelected() { var country = document.getElementById("ReligionSelect").value;
var city = document.getElementById("CastSelect").value;
alert(country+"\n"+city);
}
function resetSelection() {
document.getElementById("ReligionSelect").selectedIndex = 0;
document.getElementById("CastSelect").selectedIndex = 0;
}
