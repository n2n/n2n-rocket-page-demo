<?php

namespace team\controller;

use n2n\web\http\controller\ControllerAdapter;
use team\bo\Team;
use team\model\TeamDao;

class TeamController extends ControllerAdapter {
	private $team; 
	private $teamDao;
	
	private function _init(TeamDao $teamDao) {
		$this->teamDao = $teamDao;
	}
	
	public function setTeam(Team $team = null) {
		$this->team = $team;
	}
	
	public function index() {
		if ($this->team) {
			$this->forward('..\view\team.html', array('team' => $this->team));
		} else {
			$this->forward('..\view\teams.html', array('teams' => $this->teamDao->getTeams()));
		}
	}
}

