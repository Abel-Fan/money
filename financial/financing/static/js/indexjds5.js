window.onload=function(){
	let box1s = document.querySelectorAll(".box1");
	let i1s = document.querySelectorAll(".i1");
	let p3s = document.querySelectorAll(".p3");
	
	for(let i=0;i<box1s.length;i++){
		box1s[i].onclick=function(){
			for(let j = 0;j<box1s.length;j++){
				i1s[j].style.color="#C7E0FF";
				p3s[j].style.color="#C7E0FF";
			}
			i1s[i].style.color="#6C9DE0";
			p3s[i].style.color="#6C9DE0";
		}
	}


	let li1s = document.querySelectorAll(".li1");
	let b111s = document.querySelectorAll(".b111");
	let li2s = document.querySelectorAll(".li2");
	let b112s = document.querySelectorAll(".b112");
	let li3s = document.querySelectorAll(".li3");
	let b113s = document.querySelectorAll(".b113");
	function lunbo(li1s,b111s){
		let now=0;
	
		let flag=true;
		
		for(let j=0;j<li1s.length;j++){
			li1s[j].onclick=function(){
				
				if(now==j){
					return;
				}else if(now>j){
					if(flag==false){
						return;
					}
					b111s[j].style.left="-735px";
					animate(b111s[now],{left:735});
					
					animate(b111s[j],{left:0},function(){
						flag=true;
					});
					
					li1s[now].className="li1";
					li1s[j].className="li1 hoto";
					now=j;
					console.log(now)
					flag=false;
					


					
				}else if(now<j){
					if(flag==false){
						return;
					}
						
					b111s[j].style.left="735px";
					animate(b111s[now],{left:-735});
					
					animate(b111s[j],{left:0},function(){
						flag=true;
					});
					
					li1s[now].className="li1";
					li1s[j].className="li1 hoto";
					now=j;
					console.log(now)
					flag=false;
					
				}
				
			}
		}
	}
	lunbo(li1s,b111s)
	lunbo(li2s,b112s)
	lunbo(li3s,b113s)
}