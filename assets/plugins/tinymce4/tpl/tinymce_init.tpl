<script type="text/javascript">
  tinymce.init({
    [+init+],
    file_browser_callback: function(field, url, type, win) {       
        if (type == 'image'){type = 'images';}
        if (type == 'file'){type = 'files';}
        tinyMCE.activeEditor.windowManager.open({
            file: 'media/browser/mcpuk/browse.php?opener=tinymce4&field=' + field + '&type=' + type,
            title: 'KCFinder',
            width: 700,
            height: 500,
            inline: true,
            close_previous: false
        }, {
            window: win,
            input: field
        });
        return false;
    }
  });
</script>