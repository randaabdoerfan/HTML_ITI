addEventListener("load",function(){
	tbl2=document.getElementsByTagName("table")[1]
	first=tbl2.getElementsByTagName("td")[0]
	first.innerText="Tranning"

	imgs=document.getElementsByTagName("img")
	lastImg=imgs[1]
   
    lastImg.style.border="4px solid #FF00FF"

    checkbox1=document.getElementsByName("hoppy")[0]
    checkbox1.addEventListener("click" ,function(){
       value=this.value
       alert(value)
    })
    checkbox2=document.getElementsByName("hoppy")[1]
    checkbox2.addEventListener("click" ,function(){
            value=this.value
            alert(value)

    })
    checkbox3=document.getElementsByName("hoppy")[2]
    checkbox3.addEventListener("click" ,function(){
                value=this.value
                alert(value)
 })




	example=document.getElementById("example")
	example.style.backgroundColor="pink"

})