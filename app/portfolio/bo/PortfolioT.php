<?php

namespace portfolio\bo;

use n2n\l10n\N2nLocale;
use n2n\reflection\ObjectAdapter;
use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\annotation\AnnoManyToOne;
use n2n\persistence\orm\annotation\AnnoOneToMany;
use rocket\impl\ei\component\prop\ci\model\ContentItem;
use n2n\persistence\orm\CascadeType;
use n2n\persistence\orm\annotation\AnnoOrderBy;
use rocket\impl\ei\component\prop\translation\Translatable;

class PortfolioT extends ObjectAdapter implements Translatable {
	private static function _annos(AnnoInit $ai) {
		$ai->p('portfolio', new AnnoManyToOne(Portfolio::getClass()));
		$ai->p('description', new AnnoOneToMany(ContentItem::getClass(), null, CascadeType::ALL, null, true),
				new AnnoOrderBy(array('orderIndex' => 'ASC')));
		
	}
	private $id;
	private $name;
	private $pathPart;
	private $description;
	private $portfolio;
	private $n2nLocale;
	
	public function getId() {
		return $this->id;
	}
	
	public function setId($id) {
		$this->id = $id;
	}
	
	public function getName() {
		return $this->name;
	}
	
	public function setName($name) {
		$this->name = $name;
	}
	
	public function getPathPart() {
		return $this->pathPart;
	}
	
	public function setPathPart($pathPart) {
		$this->pathPart = $pathPart;
	}
	
	/**
	 * @return ContentItem[]
	 */
	public function getDescription() {
		return $this->description;
	}
	
	public function setDescription(\ArrayObject $description) {
		$this->description = $description;
	}
	
	public function getPortfolio() {
		return $this->portfolio;
	}
	
	public function setPortfolio($portfolio) {
		$this->portfolio = $portfolio;
	}
	
	/**
	 * @return N2nLocale
	 */
	public function getN2nLocale() {
		return $this->n2nLocale;
	}
	
	public function setN2nLocale(N2nLocale $n2nLocale) {
		$this->n2nLocale = $n2nLocale;
	}
	
}