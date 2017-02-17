<?php

namespace contact\controller;

use n2n\web\http\controller\ControllerAdapter;
use n2n\impl\web\dispatch\map\val\ValEmail;

class ContactController extends ControllerAdapter {
	private $recipients = array();
	
	public function index() {
		
		// erstelle ContactForm --> übergebe Recipients
		
		// dispatche ContactForm
		
		$this->forward('..\view\contactForm.html');
	}
	
	public function doThanks() {
		$this->forward('..\view\contactThanks.html');
	}
	
	public function setRecipient($recipient) {
		$emails = explode(',', $recipient);
		foreach ($emails as $email) {
			$email = trim($email);
			if (! ValEmail::isEMail($email)) continue;
			$this->recipients[] = $email;
		}
	}
}

