function invalid(mail)
{
   var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
  if(regex.test(mail) === false)
    return true;
  else
    return false;
  }