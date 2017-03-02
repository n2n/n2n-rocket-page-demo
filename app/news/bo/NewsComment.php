<?php
namespace news\bo;

use n2n\reflection\ObjectAdapter;
use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\annotation\AnnoManyToOne;
use n2n\persistence\orm\CascadeType;

class NewsComment extends ObjectAdapter {
	
	private static function _annos(AnnoInit $ai) {
		$ai->p('newsArticle', new AnnoManyToOne(NewsArticle::getClass(), CascadeType::MERGE|CascadeType::PERSIST));
	}
	
	private $id;
	private $newsArticle;
	private $sender;
	private $content;
	private $date;
	
	public function __construct() {
		$this->setDate(new \DateTime());
	}
	
	public function getId() {
		return $this->id;
	}
	
	public function setId($id) {
		$this->id = $id;
	}
	
	/**
	 * @return NewsArticle[]
	 */
	public function getNewsArticle() {
		return $this->newsArticle;
	}
	
	/**
	 * @param NewsArticle $newsArticle
	 */
	public function setNewsArticle(NewsArticle $newsArticle) {
		$this->newsArticle = $newsArticle;
	}
	
	/**
	 * @return string
	 */
	public function getSender() {
		return $this->sender;
	}
	
	/**
	 * @param string $sender
	 */
	public function setSender(string $sender) {
		$this->sender = $sender;
	}
	
	/**
	 * @return string
	 */
	public function getContent() {
		return $this->content;
	}
	
	/**
	 * @param string $content
	 */
	public function setContent(string $content) {
		$this->content = $content;
	}
	
	/**
	 * @return \DateTime
	 */
	public function getDate() {
		return $this->date;
	}
	
	/**
	 * @param \DateTime $date
	 */
	public function setDate(\DateTime $date) {
		$this->date = $date;
	}
}