<?php
namespace news\bo;

use n2n\reflection\ObjectAdapter;
use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\annotation\AnnoManyToMany;
use n2n\persistence\orm\CascadeType;
use n2n\persistence\orm\annotation\AnnoOneToMany;
use n2n\l10n\N2nLocale;
use rocket\spec\ei\component\field\impl\translation\Translator;

class NewsCategory extends ObjectAdapter {
	
	private static function _annos(AnnoInit $ai) {
		$ai->p('newsArticles', new AnnoManyToMany(NewsArticle::getClass(), 'newsCategories', CascadeType::PERSIST|CascadeType::MERGE));
		$ai->p('newsCategoryTs', new AnnoOneToMany(NewsCategoryT::getClass(), 'newsCategory', CascadeType::ALL, null, true));
	}
	
	private $id;
	private $newsArticles;
	private $newsCategoryTs;
	
	public function getId() {
		return $this->id;
	}
	
	public function setId($id) {
		$this->id = $id;
	}
	
	/**
	 * @return NewsArticle[]
	 */
	public function getNewsArticles() {
		return $this->newsArticles;
	}
	
	/**
	 * @param \ArrayObject $articles
	 */
	public function setNewsArticles(\ArrayObject $newsArticles) {
		$this->newsArticles = $newsArticles;
	}
	
	
	
	/**
	 * @return NewsCategoryT[]
	 */
	public function  getNewsCategoryTs() {
		return $this->newsCategoryTs;
	}
	
	/**
	 * @param \ArrayObject $newsCategoryT
	 */
	public function setNewsCategoryTs(\ArrayObject $newsCategoryT) {
		$this->newsCategoryTs = $newsCategoryT;
	}
	
	/**
	 * @param N2nLocale ...$n2nLocales
	 * @return \news\bo\NewsCategoryT
	 */
	public function t(N2nLocale ...$n2nLocales) {
		return Translator::findAny($this->newsCategoryTs, ...$n2nLocales);
	}
	
}