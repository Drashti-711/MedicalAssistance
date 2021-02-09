function validation()  
            {  
                var id=document.log.user.value;  
                var ps=document.log.pass.value;  
                var ddl = document.getElementById('ddlview');
            
                    if(id.length=="") {  
                        alert("User Name is empty");  
                        return false;  
                    }   
                    if (ps.length=="") {  
                    alert("Password field is empty");  
                    return false;  
                    }  
                    if (ddl.selectedIndex == 0 ) {
                        alert('Please select an item');
                        return false;
                    }   
                    
                
                
            }  