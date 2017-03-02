<?php
namespace news\bo;

use n2n\reflection\ObjectAdapter;
use rocket\spec\ei\component\field\impl\translation\Translatable;
use n2n\l10n\N2nLocale;
use n2n\persistence\orm\annotation\AnnoManyToOne;
use n2n\reflection\annotation\AnnoInit;

class NewsCategoryT extends ObjectAdapter implements Translatable {
	
	private static function _annos(AnnoInit $ai) {
		$ai->p('newsCategory', new AnnoManyToOne(NewsCategory::getClass()));
	}
	
	private $id;
	private $name;
	private $n2nLocale;
	private $newsCategory;
	
	public function getId() {
		return $this->id;
	}
	
	public function setId($id) {
		$this->id = $id;
	}
	
	/**
	 * @return string
	 */
	public function getName() {
		return $this->name;
	}
	
	/**
	 * @param string $name
	 */
	public function setName(string $name) {
		$this->name = $name;
	}
	
	/**
	 * @return N2nLocale
	 */
	public function getN2nLocale() {
		return $this->n2nLocale;
	}
	
	/**
	 * @param N2nLocale $n2nLocale
	 */
	public function setN2nLocale(N2nLocale $n2nLocale) {
		$this->n2nLocale = $n2nLocale;
	}
	
	/**
	 * @return NewsCategory
	 */
	public function getNewsCategory() {
		return $this->newsCategory;
	}
	
	public function setNewsCategory(NewsCategory $newsCategory) {
		$this->newsCategory = $newsCategory;
	}
	
}