document.addEventListener('DOMContentLoaded',function(){
   // console.log("hi");

    var form = document.querySelector('#new_todo');
   // console.log(form);

    form.addEventListener('submit',function(e) {
        e.preventDefault();

        //console.log($(this).serialize());

        $.ajax({
            url: form.getAttribute('action'),
            method: form.getAttribute('method'),
            dataType:'json',
            data: $(this).serialize()
        }).done(function(data){
            console.log(data)

            var text = document.querySelector('#todo_content')
            text.value = "";
             
             var ul = document.querySelector('#my_list');
            //
            var li = document.createElement('li');
            li.innerText= data.content;


            $(ul).append(li);





        });
    })
})