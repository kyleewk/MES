
    function subForm(page) {
        var form = $('#searchForm');
        var actionUrl = form.attr('action')+'?page='+page;
        form.attr('action',actionUrl);
        form.submit();
    }
