<?php

namespace portfolio\bo;

use n2n\reflection\ObjectAdapter;
use n2n\persistence\orm\annotation\AnnoOneToMany;
use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\CascadeType;
use n2n\persistence\orm\annotation\AnnoManagedFile;
use n2n\io\managed\File;
use n2n\l10n\N2nLocale;
use rocket\impl\ei\component\prop\translation\Translator;

class Portfolio extends ObjectAdapter {
	private static function _annos(AnnoInit $ai) {
		$ai->p('portfolioTs', new AnnoOneToMany(PortfolioT::getClass(), 'portfolio',
				CascadeType::ALL, null, true));
		$ai->p('fileImage', new AnnoManagedFile());
	}
	
	private $id;
	private $portfolioTs;
	private $fileImage;
	private $published;
	private $online;
	
	public function __construct() {
		// set standard value for published
		$this->setPublished(new \DateTime());
	}
	
	public function getId() {
		return $this->id;
	}
	
	public function setId($id) {
		$this->id = $id;
	}
	
	public function getPortfolioTs() {
		return $this->portfolioTs;
	}
	
	public function setPortfolioTs(\ArrayObject $portfolioTs) {
		$this->portfolioTs = $portfolioTs;
		return $this;
	}
	
	/**
	 * @return \n2n\io\managed\File
	 */
	public function getFileImage() {
		return $this->fileImage;
	}
	
	public function setFileImage(File $fileImage) {
		$this->fileImage = $fileImage;
	}
	
	public function getPublished() {
		return $this->published;
	}
	
	public function setPublished(\DateTime $published) {
		$this->published = $published;
	}
	
	public function getOnline() {
		return $this->online;
	}
	
	public function setOnline($online) {
		$this->online = $online;
		return $this;
	}
	
	/**
	 * @param N2nLocale ...$n2nLocales
	 * @return \portfolio\bo\PortfolioT
	 */
	public function t(N2nLocale ...$n2nLocales) {
		return Translator::requireAny($this->portfolioTs, ...$n2nLocales);
	}
	
}