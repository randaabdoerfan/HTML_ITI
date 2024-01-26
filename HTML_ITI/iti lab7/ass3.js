addEventListener('load',function(){

		next=document.getElementById("next")
		prev=document.getElementById("prev")
		show=document.getElementById("show")
		stop=document.getElementById("stop")
		img=document.getElementsByTagName("img")[0]
        count=1;

		next.addEventListener('click',function(){
			count++;
			if(count==11){
				count=1;
			}
			img.src="pics/"+ count +".jpg";
		})
		prev.addEventListener('click',function(){
			count--;
			if(count==0){
				count=10;
			}
			img.src="pics/"+ count +".jpg";	
		})

		show.addEventListener('click',function(){
			clear=setInterval(function(){
				count++;
			    if (count==11) {
				   count=1
				}
				   img.src="pics/"+ count +".jpg";
			},500)
			})
		stop.addEventListener('click',function(){
			clearTimeout(clear);


		})

	})
	