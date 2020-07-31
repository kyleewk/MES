$(function () {

    var url = $("#path").val();
    var url1 = url + "/order/getnext";

    $.ajax({
        url:url1,
        type:'post',
        data:{status:2,deptId:$('#deptId').val()},
        dataType:'json',
        success:function(emp){//接收到的json对象数组
            $('#nextDealSn').html(emp.name);
            $('[name="nextSn"]').val(emp.sn);

        }


    });

});