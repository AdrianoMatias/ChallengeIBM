function valida_form()
{
var x=document.form["email"]["email"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
{
  form.email.id = "error"
  form.email.focus();
  return false;
}
form.email.id = "success"
}
