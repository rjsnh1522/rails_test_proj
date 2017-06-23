$(document).ready(function(){
    
    // making own sorting and searching for table
    // $.ajax({
    //     url: "admin",
    //     method:"GET",
    //     contentType: 'application/json',
    //     dataType: 'JSON',
    //     success:function(data){

    //         if(data !== null && typeof data ==="object"){
    //            var allData = $.parseJSON(data);
    //            console.log(allData);


    //         }
    //         else{
    //             console.log("else");
    //         }
            
    //     } ,
    //     error:function(data){
    //         console.log(data);
            
    //     },
    // });


    // used a pluging for sorting and searching ..
    $('#resultsTable').DataTable({
         "pageLength": 2
    });


});