<?php

namespace team\model;

use n2n\persistence\orm\EntityManager;
use team\bo\Team;

class TeamDao {
	private $em;
	
	private function _init(EntityManager $em) {
		$this->em = $em;
	}
	
	public function getTeams() {
		return $this->em->createSimpleCriteria(Team::getClass(), null, array('orderIndex' => 'ASC'))
				->toQuery()->fetchArray();
	}
	
}