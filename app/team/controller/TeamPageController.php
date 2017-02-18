<?php

namespace team\controller;

use page\bo\PageController;
use team\controller\TeamController;
use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\annotation\AnnoManyToOne;
use team\bo\Team;
use page\annotation\AnnoPage;

class TeamPageController extends PageController {
	private static function _annos(AnnoInit $ai) {
		$ai->p('team', new AnnoManyToOne(Team::getClass()));
		$ai->m('team', new AnnoPage());
	}
	
	private $team;
	
	public function team(TeamController $teamController, array $delegateCmds = null) {
		
		$this->delegate($teamController);
	}
	
	public function getTeam() {
		return $this->team;
	}
	
	public function setTeam(Team $team = null) {
		$this->team = $team;
	}
	
}