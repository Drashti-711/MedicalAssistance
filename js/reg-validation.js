function validation()  
            {  
                var fn=document.reg.firstname.value;
                var ln=document.reg.lastname.value;
                var e=document.reg.email.value;
                var ad=document.reg.address.value;
                var id=document.reg.user.value;  
                var ps=document.reg.pass.value;  
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
                    if(fn.length=="") {  
                        alert("First Name is empty");  
                        return false;  
                    }
                    if(ln.length=="") {  
                        alert("Last Name is empty");  
                        return false;  
                    }
                    if(e.length=="") {  
                        alert("Email is empty");  
                        return false;  
                    }
                    if(ad.length=="") {  
                        alert("Address is empty");  
                        return false;  
                    }
                
            }  