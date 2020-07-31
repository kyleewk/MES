
    function subForm(opr) {
        var form = $('#checkForm');
        var actionUrl = form.attr('action')+'?opr='+opr;
        form.attr('action',actionUrl);
        form.submit();
    }

    function subForm2(opr) {
        var form = $('#checkForm');
        var actionUrl = form.attr('action')+'&opr='+opr;
        form.attr('action',actionUrl);
        form.submit();
    }
