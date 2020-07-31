/**
 * Created by Administrator on 2020\5\20 0020.
 */
$(function () {
    var url1 = $("#path").val()+'/chart/upStore';
    var url2 = $("#path").val()+'/chart/upSum';
    var url3 = $("#path").val()+'/chart/upPending';
    var url4 = $("#path").val()+'/chart/upTeamSum';

    $.ajax({
        url: url1,
        type: 'post',
        dataType: 'json',
        success: function (r) {
            var up = r+"%";
            $("#upStore").append(up);
            $("#store1").width(up);
        }
    });

    $.ajax({
        url: url2,
        type: 'post',
        dataType: 'json',
        success: function (r) {
            var up = r;
            var pro = r / 200.0 +"%";
            $("#upSum").append(up);
            $("#upSum1").width(pro);
        }
    });

    $.ajax({
        url: url3,
        type: 'post',
        dataType: 'json',
        success: function (r) {
            var up = r;
            var pro = r / 0.05 +"%";
            $("#pending").append(up);
            $("#pending1").width(pro);
        }
    });

    $.ajax({
        url: url4,
        type: 'post',
        dataType: 'json',
        success: function (r) {
            var up = r / 2.0 +"%";
            $("#upTeamSum").append(r);
            $("#upTeamSum1").width(up);

        }
    });

});