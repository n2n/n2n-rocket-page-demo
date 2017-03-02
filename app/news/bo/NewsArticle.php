<?php
namespace news\bo;

use n2n\io\managed\File;
use n2n\l10n\N2nLocale;
use n2n\reflection\annotation\AnnoInit;
use n2n\reflection\ObjectAdapter;
use team\bo\TeamMember;
use n2n\persistence\orm\annotation\AnnoOneToMany;
use n2n\persistence\orm\CascadeType;
use n2n\persistence\orm\annotation\AnnoManagedFile;
use rocket\spec\ei\component\field\impl\ci\model\ContentItem;
use n2n\persistence\orm\annotation\AnnoManyToMany;
use n2n\persistence\orm\annotation\AnnoManyToOne;
use n2n\persistence\orm\annotation\AnnoOrderBy;

class NewsArticle extends ObjectAdapter {
	
	private static function _annos(AnnoInit $ai) {
		$ai->p('image', new AnnoManagedFile());
		$ai->p('newsComments', new AnnoOneToMany(NewsComment::getClass(), 'newsArticle', CascadeType::ALL), new AnnoOrderBy(array('date' => 'DESC')));
		$ai->p('contentItems', new AnnoOneToMany(ContentItem::getClass(), null, CascadeType::ALL));
		$ai->p('newsCategories', new AnnoManyToMany(NewsCategory::getClass(), null, CascadeType::PERSIST|CascadeType::MERGE));
		$ai->p('author', new AnnoManyToOne(TeamMember::getClass()));
		
	}
	
	private $id;
	private $title;
	private $lead;
	private $image;
	private $published;
	private $author;
	private $urlPart;
	private $contentItems;
	private $n2nLocale;
	private $online = false;
	private $newsComments;
	private $newsCategories;
	

	
	public function getId() {
		return $this->id;
	}
	
	public function setId($id) {
		$this->id = $id;
	}
	
	/**
	 * @return string
	 */
	public function getLead() {
		return $this->lead;
	}
	
	/**
	 * @param string $lead
	 */
	public function setLead(string $lead) {
		$this->lead = $lead;
	}
	
	/**
	 * @return string
	 */
	public function getTitle() {
		return $this->title;
	}
	
	/**
	 * @param string $title
	 */
	public function setTitle(string $title) {
		$this->title = $title;
	}
	
	/**
	 * @return File $image
	 */
	public function getImage() {
		return $this->image;
	}
	
	/**
	 * @param File $image
	 */
	public function setImage(File $image = null) {
		$this->image = $image;
	}
	
	/**
	 * @return \DateTime
	 */
	public function getPublished() {
		return $this->published;
	}
	
	/**
	 * @param \DateTime $published
	 */
	public function setPublished(\DateTime $published = null) {
		$this->published = $published;
	}
	
	/**
	 * @return TeamMember
	 */
	public function getAuthor() {
		return $this->author;
	}
	
	/**
	 * @param TeamMember $author
	 */
	public function setAuthor(TeamMember $author = null) {
		$this->author = $author;
	}
	
	/**
	 * @return string
	 */
	public function getUrlPart() {
		return $this->urlPart;
	}
	
	/**
	 * @param string $urlPart
	 */
	public function setUrlPart(string $urlPart) {
		$this->urlPart = $urlPart;
	}
	
	/**
	 * @return ContentItem[]
	 */
	public function getContentItems() {
		return $this->contentItems;
	}
	
	/**
	 * @param \ArrayObject $contentItems
	 */
	public function setContentItems(\ArrayObject $contentItems) {
		$this->contentItems = $contentItems;
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
	
	public function getOnline() {
		return $this->online;
	}
	
	public function setOnline(bool $online) {
		$this->online = $online;
	}
	
	/**
	 * @return NewsComment[]
	 */
	public function getNewsComments() {
		return $this->newsComments;
	}
	
	/**
	 * @param \ArrayObject $newsComments
	 */
	public function setNewsComments(\ArrayObject $newsComments) {
		$this->newsComments = $newsComments;
	}
	
	/**
	 * @return NewsCategory[]
	 */
	public function getNewsCategories() {
		return $this->newsCategories;
	}
	
	/**
	 * @param \ArrayObject $newsCategories
	 */
	public function setNewsCategories(\ArrayObject $newsCategories) {
		$this->newsCategories = $newsCategories;
	}
	
}