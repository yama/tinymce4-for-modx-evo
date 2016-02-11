<?php
if(!defined('MODX_BASE_PATH')){die('What are you doing? Get out of here!');}

include_once("{$mce_path}plugin.class.inc.php");

$mce4 = new TinyMCE4();

// overwrite for mini
$mce4->params['theme']     = 'custom';
$mce4->params['height']    = !empty( $height ) ? $height : '200px';
$mce4->params['width']     = !empty( $width ) ? $width : '200px';
$mce4->params['plugins']   = !empty( $plugins ) ? $plugins : '';
$mce4->params['toolbar1']  = !empty( $toolbar1 ) ? $toolbar1 : 'bold italic underline strikethrough';
$mce4->params['toolbar2']  = !empty( $toolbar2 ) ? $toolbar2 : '';
$mce4->params['statusbar'] = !empty( $statusbar ) ? true : false;

// Handle event
$e = &$modx->event; 
switch ($e->name)
{
	case "OnRichTextEditorRegister": // register only for backend
		$e->output('TinyMCE4 Mini');
		break;

	case "OnRichTextEditorInit":
		if($editor!=='TinyMCE4 Mini') return;
		
		$script = $mce4->get_mce_script();
		$e->output($script);
		break;

   default :
      return; // stop here - this is very important. 
      break; 
}
