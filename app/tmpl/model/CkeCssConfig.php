<?php
namespace tmpl\model;

use n2n\impl\web\ui\view\html\HtmlView;
use rocket\spec\ei\component\field\impl\string\wysiwyg\WysiwygCssConfig;

class CkeCssConfig implements WysiwygCssConfig {
	public function getContentCssPaths(HtmlView $view) {
		$meta = $view->getHtmlBuilder()->meta();
		return array($meta->getAssetUrl('css/editor.css', 'bstmpl'));
	}
	
	public function getBodyClass() {
		return 'tmpl-cke';
	}
	
	public function getBodyId() {
		return 'tmpl-cke';
	}
	
	public function getAdditionalStyles() {
		return null;
	}
	/* (non-PHPdoc)
	 * @see \rocket\script\entity\field\impl\string\wysiwyg\WysiwygCssConfiguration::getFormatTags()
	 */
	public function getFormatTags() {
		return array('p', 'h2', 'h3', 'pre', 'address');
	}
}