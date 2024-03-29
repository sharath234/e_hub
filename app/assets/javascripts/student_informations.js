$( document ).on("turbolinks:load", function() {
 $('#branches_id').hide();
 $('#standards_id').hide();
 $('#teachers_id').hide();
 $('#students_id').hide();
 $('#student_info').hide();

    $('#schools').change(function(){
        var id = $(this).val();
        $('#standards_id').hide();
        $('#teachers_id').hide();
        $('#students_id').hide();
        $('#student_info').hide();

        get_branches(id);
    });
    $('#branches').change(function(){
       var branch_id = $('#branches').val();
       get_standards(branch_id);
        $('#teachers_id').hide();
        $('#students_id').hide();
        $('#student_info').hide();
    });

    $('#standards').change(function(){
        var standard_id = $('#standards').val();
        get_teachers(standard_id);
        $('#students_id').hide();
        $('#student_info').hide();
     });

     $('#teachers').change(function(){
        var teacher_id = $('#teachers').val();
        get_students(teacher_id);
         $('#student_info').hide();
     });
      
     $('#students').change(function(){
        $('#student_info').show();
        get_student_details($(this).val());
     });
});

function get_branches(id) {
    Rails.ajax({
        url: "/student_informations/"+id+"/get_branches",
        type: 'get',
        success: function(data) {
            var select = $('#branches');
            select.find('option').remove();
            $('<option>').val("").text("").appendTo(select);
             $.each(data, function(key,value){
                $('<option>').val(value.id).text(value.location).appendTo(select);

            });

            $('#branches_id').fadeIn(1000);

        }
    })
}

function get_standards(id){
    var formdata = new FormData();
    formdata.append('school_id', $('#schools').val());
    formdata.append('branch_id', id)
    Rails.ajax({
     url: "/student_informations/get_standards",
     type: 'post',
     data: formdata,
     dataType: "json",
     contentType: "application/json",
     success: function(data){
        var select = $('#standards');
        select.find('option').remove();
        $('<option>').val("").text("").appendTo(select);
         $.each(data, function(key,value){
            $('<option>').val(value.id).text(value.name).appendTo(select);

        });

        $('#standards_id').fadeIn(1000);

     }
 })
     
}

function get_teachers(id) {
    var formdata = new FormData();
    formdata.append('school_id', $('#schools').val());
    formdata.append('branch_id', $('#branches').val());
    formdata.append('standard_id', id);
    Rails.ajax({ 
     url: "/student_informations/get_teachers",   
     type: 'post',
     data: formdata,
     dataType: "json",
     contentType: "application/json",
     success: function(data){
        var select = $('#teachers');
        select.find('option').remove();
        $('<option>').val("").text("").appendTo(select);
         $.each(data, function(key,value){
            $('<option>').val(value.id).text(value.name).appendTo(select);

        });

        $('#teachers_id').fadeIn(1000);
    }
 })
    
}


function get_students(id) {
    var formdata = new FormData();
    formdata.append('school_id', $('#schools').val());
    formdata.append('branch_id', $('#branches').val());
    formdata.append('standard_id', $('#standards').val()); 
    formdata.append('teacher_id', id);

    Rails.ajax({
     url: "/student_informations/get_students",
     type: 'post',
     data: formdata,
     dataType: "json",
     contentType: "application/json",
     success: function(data){
        var select = $('#students');
        select.find('option').remove();
        $('<option>').val("").text("").appendTo(select);
         $.each(data, function(key,value){
            $('<option>').val(value.id).text(value.name).appendTo(select);

        });

        $('#students_id').fadeIn(1000);

     }
 })
     
}

function get_student_details(id){
    Rails.ajax({
        url: "/students/"+id,
        type: 'get',
        success: function(data) {
            $('.stu_name').text(data.name);
            $('.stu_age').text(data.age);
            $('.stu_gender').text(data.gender);
        }
    });

}
 