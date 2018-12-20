<?php

namespace team\bo;

use n2n\reflection\ObjectAdapter;
use n2n\reflection\annotation\AnnoInit;
use n2n\l10n\N2nLocale;
use n2n\persistence\orm\annotation\AnnoManyToOne;
use rocket\impl\ei\component\prop\translation\Translatable;

class TeamMemberT extends ObjectAdapter implements Translatable {
	private static function _annos(AnnoInit $ai) {
		$ai->p('teamMember', new AnnoManyToOne(TeamMember::getClass()));
	}
	
	private $id;
	private $function;
	private $teamMember;
	private $n2nLocale;
	
	public function getId() {
		return $this->id;
	}

	public function setId($id) {
		$this->id = $id;
	}

	public function getFunction() {
		return $this->function;
	}

	public function setFunction($function) {
		$this->function = $function;
	}

	/**
	 * @return \team\bo\TeamMember
	 */
	public function getTeamMember() {
		return $this->teamMember;
	}

	public function setTeamMember(TeamMember $teamMember) {
		$this->teamMember = $teamMember;
	}
	
	/**
	 * @return N2nLocale
	 */
	public function getN2nLocale() {
		return $this->n2nLocale;
	}
	
	/**
	 * @param field_type $n2nLocale
	 */
	public function setN2nLocale(N2nLocale $n2nLocale) {
		$this->n2nLocale = $n2nLocale;
	}

}

