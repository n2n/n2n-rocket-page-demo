<?php

namespace model;

use n2n\web\dispatch\Dispatchable;

class ContactForm implements Dispatchable {
	
	protected $name;
	protected $email;
	protected $message;
	
	private function _validation() {
		
	}
	
	public function send() {
		
	}
}

