$(document).ready(function(){
    
    $.ajax({
        url: "admin",
        method:"GET",
        contentType: 'application/json',
        dataType: 'JSON',
        success:function(data){

            if(data !== null && typeof data ==="object"){
               var allData = $.parseJSON(data);
               console.log(allData);


            }
            else{
                console.log("else");
            }
            
        } ,
        error:function(data){
            console.log(data);
            
        },
    });

});