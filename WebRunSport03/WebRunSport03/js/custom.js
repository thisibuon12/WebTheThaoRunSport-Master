

var string=0;
var mess= new Array("꧁༺🅽🅷🅾🅼 03💙","꧁༺ 🅶🅸🅾🅸 🆃🅷🅸🅴🆄 ❤","꧁༺🆆🅴🅱 🆃🅷🅴 🆃🅷🅰🅾💚","꧁༺🅲🅷🅰🆃 100%✍","꧁༺🅽🅷🅾🅼 03✌","꧁༺ 🅶🅸🅾🅸 🆃🅷🅸🅴🆄✌","꧁༺🆆🅴🅱 🆃🅷🅴 🆃🅷🅰🅾﹏✍","꧁༺🅲🅷🅰🆃 100%✍","꧁༺🅽🅷🅾🅼 03✌","꧁༺ 🅶🅸🅾🅸 🆃🅷🅸🅴🆄✌","꧁༺🆆🅴🅱 🆃🅷🅴 🆃🅷🅰🅾﹏✍","꧁༺🅲🅷🅰🆃 100%✍");
function messtitle()
{
  document.title =mess[string];
  string=(string<(mess.length-1))?string +1:0;
  setTimeout('messtitle()',400);
}
messtitle();