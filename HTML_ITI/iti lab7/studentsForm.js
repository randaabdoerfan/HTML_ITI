addEventListener("load", function(){
	btn=document.getElementById("btn")
	stdTable=document.getElementById("stdTable")
	lbl1=document.getElementById("lbl1")
	stdTable.innerHTML="<tr>Employee Data</tr> "

	btn.addEventListener("click",function(){
		nameTxt=document.getElementById("nameTxt").value;
	    ageTxt=document.getElementById("ageTxt").value;
	    gradeTxt=document.getElementById("gradeTxt").value;
	    sel=document.getElementById("deptVal").value
	    
        stdTable.innerHTML +=(`<tr>name is ${nameTxt},age is ${ageTxt}, Salary is ${gradeTxt} and my department is ${sel}</tr>`);		
    })
})