function startTime() {
	var tm=new Date();
	var h=tm.getHours();
	var m=tm.getMinutes();
	var s=tm.getSeconds();
	m=checkTime(m);
	s=checkTime(s);
	document.getElementById('clock2').innerHTML=h+":"+m;
	t=setTimeout('startTime()',500);
}

function checkTime(i) {
	if (i<10)
	{
	i="0" + i;
	}
	return i;
}	