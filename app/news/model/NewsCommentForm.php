<?php
namespace news\model;

use n2n\web\dispatch\Dispatchable;
use news\bo\NewsArticle;
use n2n\web\dispatch\map\bind\MappingDefinition;
use n2n\l10n\DynamicTextCollection;
use n2n\web\dispatch\map\bind\BindingDefinition;
use n2n\impl\web\dispatch\map\val\ValNotEmpty;

class NewsCommentForm implements Dispatchable {
	private $newsArticle;
	
	protected $sender;
	protected $content;
	
	/**
	 * @param NewsArticle $newsArticle
	 */
	public function __construct(NewsArticle $newsArticle) {
		$this->newsArticle = $newsArticle;
	}
	
	/**
	 * @return NewsArticle[]
	 */
	public function getNewsArticle() {
		return $this->newsArticle;
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
	
	// translated labels for different languages can be set in its .ini file inside the 'lang' folder
	private function _mapping(MappingDefinition $md, DynamicTextCollection $dtc) {
		$md->getMappingResult()->setLabels(array(
				'sender' => $dtc->translate('comment_form_sender_label'),
				'content' => $dtc->translate('comment_form_content_label')
		));
	}
	
	private function _validation(BindingDefinition $bd) {
		$bd->val(array('sender', 'content'), new ValNotEmpty());
	}
	
	public function save(NewsDao $newsDao) {
		$newsDao->saveComment($this->newsArticle, $this->sender, $this->content);
	}
}