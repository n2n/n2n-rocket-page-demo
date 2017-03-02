<?php

namespace contact\controller;

use n2n\web\http\controller\ControllerAdapter;
use n2n\impl\web\dispatch\map\val\ValEmail;
use contact\model\ContactForm;

class ContactController extends ControllerAdapter {
	private $recipients = array();
	
	public function index() {
		
		// create form		
		$contactForm = new ContactForm();
		
		// hand over recipients to the ContactForm model
		$contactForm->setRecipients($this->recipients);
		
		
		// dispatch ContactForm
		if ($this->dispatch($contactForm, 'send')) {
			$this->redirectToController('thanks');
			return;
		}
		
		
		$this->forward('..\view\contactForm.html', array('contactForm' => $contactForm));
	}
	
	public function doThanks() {
		$this->forward('..\view\contactThanks.html');
	}
	
	public function setRecipient($recipient) {
		$emails = explode(',', $recipient);
		foreach ($emails as $email) {
			$email = trim($email);
			if (!ValEmail::isEMail($email)) continue;
			$this->recipients[] = $email;
		}
	}
}

