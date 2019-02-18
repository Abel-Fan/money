window.onload = function(){
	let box1=document.querySelector(".box1")
	let b11 = document.querySelector(".b11")
	let flag = 1
	box1.onclick=function(){
		if(flag==1){
			b11.style.left="0.02rem";
			box1.style.backgroundColor="#F8F8F8";
			flag=0
		}else if(flag==0){
			b11.style.left="0.46rem";
			box1.style.backgroundColor="#4B98FF";
			flag=1
		}

	}


	let box2=document.querySelector(".box2")
	let b21 = document.querySelector(".b21")
	let flag1 = 1
	box2.onclick=function(){
		if(flag1==1){
			b21.style.left="0.46rem";
			box2.style.backgroundColor="#4B98FF";
			flag1=0
		}else if(flag1==0){
			b21.style.left="0.02rem";
			box2.style.backgroundColor="#F8F8F8";
			flag1=1
		}

	}


}