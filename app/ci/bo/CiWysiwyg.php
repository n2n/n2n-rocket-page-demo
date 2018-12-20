<?php
namespace ci\bo;

use n2n\impl\web\ui\view\html\HtmlView;
use n2n\impl\web\ui\view\html\HtmlElement;
use rocket\impl\ei\component\prop\ci\model\ContentItem;
use rocket\impl\ei\component\prop\string\cke\ui\CkeHtmlBuilder;

class CiWysiwyg extends ContentItem {

	private $contentHtml;

	public function setContentHtml($contentHtml) {
		$this->contentHtml = $contentHtml;
	}

	public function getContentHtml() {
		return $this->contentHtml;
	}

	public function createUiComponent(HtmlView $view) {
		$ckeHtml = new CkeHtmlBuilder($view);
		return new HtmlElement('div', array('class' => 'ci ci-wysiwyg'), $ckeHtml->getOut($this->contentHtml));
	}
}