jQuery(function() {
    jQuery(
        ".reply-link, "         +
        ".comment-link, "       +
        "#page-actions-reply, " +
        "#page-actions-comment"
    ).click(function(ev) {
        var link = jQuery(this);
        var selection;

        if (window.getSelection)
            selection = window.getSelection();
        else if (document.getSelection)
            selection = document.getSelection();
        else if (document.selection)
            selection = document.selection.createRange().text;

        if (selection.toString)
            selection = selection.toString();

        if (typeof(selection) !== "string" || selection.length < 3)
            return

        // TODO: wrap long lines before quoting
        selection = selection.replace(/^/gm, "> ");
        selection = selection.concat("\n\n");
        selection = encodeURIComponent(selection);

        link.attr("href", link.attr("href").concat("&UpdateContent=" + selection));
    });
});
