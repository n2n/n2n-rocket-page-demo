<?php
namespace news\model;

use n2n\context\RequestScoped;
use n2n\persistence\orm\EntityManager;
use news\bo\NewsArticle;
use news\bo\NewsComment;
use n2n\l10n\N2nLocale;

class NewsDao implements RequestScoped {
	private $em;
	
	private function _init(EntityManager $em) {
		$this->em = $em;
	}
	
	/**
	 * @return NewsArticle[]
	 */
	public function getOnlineNewsArticles(N2nLocale $lang) {
		$criteria = $this->em->createSimpleCriteria(NewsArticle::getClass(), 
				array('online' => true, 'n2nLocale' => $lang), array('id' => 'DESC'));
		return $criteria->toQuery()->fetchArray();
	}
	
	/**
	 * @param string $urlPart
	 * @return NewsArticle[]
	 */
	public function getNewsArticleByUrlPart(string $urlPart) {
		$criteria = $this->em->createSimpleCriteria(NewsArticle::getClass(), array('urlPart' => $urlPart, 'online' => true));
		return $criteria->toQuery()->fetchSingle();
	}
	
	/**
	 * @param int $id
	 * @return NewsArticle[]
	 */
	public function getNewsArticleById(int $id) {
		return $this->em->find(NewsArticle::getClass(), $id);
	}
	
	public function saveComment(NewsArticle $newsArticle, string $sender, string $content) {
		$comment = new NewsComment();
		$comment->setNewsArticle($newsArticle);
		$comment->setSender($sender);
		$comment->setContent($content);
		$this->em->persist($comment);
	}
}