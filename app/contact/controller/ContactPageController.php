<?php

namespace contact\controller;

use page\bo\PageController;
use n2n\reflection\annotation\AnnoInit;
use page\annotation\AnnoPage;
use page\annotation\AnnoPageCiPanels;

class ContactPageController extends PageController {
	private static function _annos(AnnoInit $ai) {
		$ai->m('contact', new AnnoPage(), new AnnoPageCiPanels('aside'));
	}
	private $recipient;
	
	
	public function getRecipient() {
		return $this->recipient;
	}
	
	public function setRecipient($recipient) {
		$this->recipient = $recipient;
		return $this;
	}
	
	public function contact(ContactController $contactController, array $delegateCmds = null) {
		$contactController->setRecipient($this->recipient);
		$this->delegate($contactController);
	}
	
	
}