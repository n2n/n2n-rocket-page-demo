<?php

namespace team\bo;

use n2n\reflection\ObjectAdapter;
use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\annotation\AnnoTable;
use rocket\spec\ei\component\field\impl\translation\Translatable;
use n2n\l10n\N2nLocale;
use n2n\persistence\orm\annotation\AnnoManyToOne;

class TeamT extends ObjectAdapter implements Translatable {
	private static function _annos(AnnoInit $ai) {
		$ai->p('team', new AnnoManyToOne(Team::getClass()));
	}
	
	private $id;
	private $name;
	private $team;
	private $n2nLocale;
	
	public function getId() {
		return $this->id;
	}

	public function setId($id) {
		$this->id = $id;
	}

	public function getName() {
		return $this->name;
	}

	public function setName($name) {
		$this->name = $name;
	}
	
	/**
	 * @return \vag\bo\Team
	 */
	public function getTeam() {
		return $this->team;
	}

	public function setTeam(Team $team) {
		$this->team = $team;
	}

	public function getN2nLocale() {
		return $this->n2nLocale;
	}

	public function setN2nLocale(N2nLocale $n2nLocale) {
		$this->n2nLocale = $n2nLocale;
	}

}

