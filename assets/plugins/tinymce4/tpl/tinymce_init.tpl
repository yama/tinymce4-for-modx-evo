<script src="/..//assets/plugins/tinymce4/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
  tinymce.init({
    [+init+],
    relative_urls: false,
    image_caption: true,
    menubar: false,
    toolbar_items_size: 'small',
    image_advtab : true,
   
    plugins : [
        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
        "searchreplace wordcount visualblocks visualchars code fullscreen spellchecker",
        "insertdatetime media nonbreaking save table contextmenu directionality",
        "emoticons template paste textcolor codesample colorpicker textpattern imagetools paste"
    ],
    //autosave autoresize
    paste_word_valid_elements: 'b,strong,i,em,h1,h2,table',  
    //template forecolor backcolor           
        
    toolbar1 : "undo redo | cut copy paste | searchreplace | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent blockquote | styleselect",
    toolbar2 : "link unlink anchor image media codesample table | hr removeformat | subscript superscript charmap | nonbreaking | visualchars visualblocks print preview fullscreen code",
    

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