
$(document).ready(function () {
    //$('.loader-wrapper').css('display', 'none');

    $("#btn-load-pokemon-data").on("click", function () {
        $('.loader-wrapper').css('display', 'flex');
    });

    $("#type-filter").change(function () {
        $("#pokemon-table-body tr").each(function () {
            $(this).show();
            var txt = $(this).text();
            var filter = $("#type-filter").val();
            if ($.trim(txt).indexOf(filter) == -1)
                $(this).hide();
            else
                $(this).parent().show();
            if (filter == "all")
                $(this).show();
        });
    });
});