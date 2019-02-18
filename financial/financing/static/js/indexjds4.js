window.onload=function(){
	let b11 = document.querySelector(".b11");
	let b12 = document.querySelector(".b12");
	let p1 = document.querySelector(".p1");
	function run(){
		let now = new Date()
		let hdate = now.getHours();
		let mdate = now.getMinutes();
		if(hdate>12){
			p1.innerText="PM";
		}else{
			p1.innerText="AM";
		}
		if(mdate<=9){
			b12.innerText="0"+mdate;
		}else{
			b12.innerText=mdate;
		}
		b11.innerText=hdate;
		

	}
	setInterval(run,1000);
	



	let box3s=document.querySelectorAll(".box3");
	let section3 = document.querySelector(".section3");
	let box4 = document.querySelector(".box4");
	box3s[0].ontouchstart=function(){
		section3.style.height="6.17rem";
		box4.style.display="block";
		box4.style.display="flex";

		// section3.style.display="flex";
	}
	box3s[0].ontouchend=function(){
		section3.style.height="0rem";
		box4.style.display="none";
	}
    let box5 = document.querySelector(".box5")
	let i2 = document.querySelector(".i2")
	let i3 = document.querySelector(".i3")
	let flag = 1
	box3s[1].onclick=function(){
		if(flag==1){
			box5.style.height="100%";
			i2.style.display="block";
			i3.style.display="block";
			flag = 0;
		}else if(flag==0){
			box5.style.height="0rem";
			i2.style.display="none";
			i3.style.display="none";
			flag=1;
		}

	}



}