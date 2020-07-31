
    function submitCheck(opr) {
        var form = $('#checkForm');
        var actionUrl = form.attr('action')+'?result='+opr;
        form.attr('action',actionUrl);
        form.submit();
    }
