<?php

namespace team\controller;

use n2n\web\http\controller\ControllerAdapter;

class TeamController extends ControllerAdapter {
	
	public function index() {
		$this->forward('..\view\team.html');
	}
}

