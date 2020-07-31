/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    let url1 = $("#path").val()+'/process/forIndexProcess';


    $.ajax({
        url: url1,
        type: 'post',
        dataType: 'json',
        success: function (pro) {
            let opts1 = '';

            $.each(pro,function(i,p){
                let status = p.status + 1 - 1;
                let starttime = new Date(parseInt(p.order.starttime, 10));
                let endtime = new Date(parseInt(p.order.endtime, 10));

                let s = getDate(starttime);
                let e = getDate(endtime);


                opts1 +='<tr>'+
                    '<td>'+(i+1)+'</td>'+
                    '<td>'+p.order.machinetype+'</td>'+
                    '<td>'+s+'</td>'+
                    '<td>'+e+'</td>'+
                    '<td>';

                if (status == -1){
                    opts1 +=  '<span class="label label-warning">暂停</span>';
                }
                if (status == 0){
                    opts1 +=  '<span class="label label-primary">准备中</span>';
                }
                if (status == 1){
                    opts1 +=  '<span class="label label-info">进行中</span>';
                }if (status == 2){
                    opts1 +=  '<span class="label label-success">已完成</span>';
                }

                opts1 +=  '</td>'+
                    '<td><div class="progress progress-striped progress-sm">'+
                    '<div class="progress-bar progress-bar-info" style="width: '+(p.realnum / p.order.targetnum * 100)+'%;"></div>'+
                    '+</div></td>'+
                '</tr>'
            });
            $('#forIndexProcess').append(opts1);
        }
    });



});


function getDate(date) {

    let year = date.getFullYear();

    let month = date.getMonth() + 1;

    let day = date.getDate();

    return year + "-" + month + "-" + day ;
}