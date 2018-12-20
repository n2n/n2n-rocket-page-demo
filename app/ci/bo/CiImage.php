<?php
namespace ci\bo;

use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\annotation\AnnoManagedFile;
use n2n\impl\web\ui\view\html\HtmlView;
use n2n\io\managed\File;
use rocket\impl\ei\component\prop\ci\model\ContentItem;

class CiImage extends ContentItem {
	private static function _annos(AnnoInit $ai) {
		$ai->p('fileImage', new AnnoManagedFile());
	}

	protected $fileImage;
	protected $caption;

	/**
	 * @return File
	 */
	public function getFileImage() {
		return $this->fileImage;
	}

	/**
	 * @param File $fileImage
	 */
	public function setFileImage(File $fileImage) {
		$this->fileImage = $fileImage;
	}
	
	public function getCaption() {
		return $this->caption;
	}
	
	public function setCaption($caption) {
		$this->caption = $caption;
	}

	public function createUiComponent(HtmlView $view) {
		return $view->getImport('\ci\view\image.html', array('image' => $this));
	}

	/*
	 * Additional Methods
	 */

	public function hasCaption() {
		return (bool) $this->caption;
	}
}