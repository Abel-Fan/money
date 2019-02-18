window.onload=function(){
	let box1s = document.querySelectorAll(".box1")
	let box2s = document.querySelectorAll(".box2")
	let p1s = document.querySelectorAll(".p1")
	let s1s = document.querySelectorAll(".s1")
	for(let i=0;i<box1s.length;i++){
		box1s[i].onclick=function(){
			for(let j = 0;j<box1s.length;j++){
				box1s[j].style.backgroundColor="#478FF1";
				p1s[2*j+1].style.display="none";
				p1s[2*j].style.display="none";
				s1s[j].style.color="#B1CCF9";
				box2s[j].style.display="none";
			}
			box1s[i].style.backgroundColor="#fff";
			p1s[2*i].style.display="block";
			p1s[2*i+1].style.display="block";
			s1s[i].style.color="#4B98FF";
			box2s[i].style.display="block";

		}
		
	}
}