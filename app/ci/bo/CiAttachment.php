<?php
namespace ci\bo;

use n2n\impl\web\ui\view\html\HtmlView;
use n2n\impl\web\ui\view\html\HtmlElement;
use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\annotation\AnnoManagedFile;
use n2n\io\managed\File;
use rocket\spec\ei\component\field\impl\ci\model\ContentItem;

class CiAttachment extends ContentItem {
	private static function _annos(AnnoInit $ai) {
		$ai->p('file', new AnnoManagedFile());
	}

	private $name;
	private $description;
	private $file;

	public function getName() {
		return $this->name;
	}

	public function setName($name) {
		$this->name = $name;
	}

	public function getDescription() {
		return $this->description;
	}

	public function setDescription($description) {
		$this->description = $description;
	}

	/**
	 * @return File
	 */
	public function getFile() {
		return $this->file;
	}

	/**
	 * @param File $file
	 */
	public function setFile(File $file) {
		$this->file = $file;
	}

	public function createUiComponent(HtmlView $view) {
		return $view->getImport('\ci\view\attachment.html', array('attachment' => $this));
	}
	
	public function getTitle() {
		if ($this->name) return $this->name;
		return $this->file->getOriginalName();
	}
	
	public function getFaClassName() {
		if (!$this->file) return 'fa-file-o';
		
		switch ($this->file->getOriginalExtension()) {
			case 'jpg':
			case 'png':
			case 'gif':
			case 'jpeg':
				return 'fa-file-image-o';
			case 'zip':
			case '7z':
				return 'fa-archive-o';
			case 'xls':
			case 'xlsx':
				return 'fa-file-excel-o';
			case 'doc':
			case 'docx':
				return 'fa-file-word-o';
			case 'ppt':
			case 'pptx':
				return 'fa-file-powerpoint-o';
			case 'mp3':
				return 'fa-file-audio-o';
			case 'pdf':
				return 'fa-file-pdf-o';
			default:
				return 'fa-file-o';
		}
	}

}