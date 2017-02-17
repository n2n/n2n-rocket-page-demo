<?php

namespace contact\controller;

use n2n\web\http\controller\ControllerAdapter;

class ContactController extends ControllerAdapter {
	public function index() {
		$this->forward('..\view\contactForm.html');
	}
	
	public function doThanks() {
		$this->forward('..\view\contactThanks.html');
	}
}

