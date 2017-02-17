<?php

namespace vag\bo;

use n2n\reflection\ObjectAdapter;
use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\annotation\AnnoTable;
use n2n\persistence\orm\annotation\AnnoOneToMany;
use n2n\persistence\orm\CascadeType;
use n2n\l10n\N2nLocale;
use rocket\spec\ei\component\field\impl\translation\Translator;

class Team extends ObjectAdapter {
	private static function _annos(AnnoInit $ai) {
		$ai->p('teamMembers', new AnnoOneToMany(TeamMember::getClass(), 'team'));
		$ai->p('teamTs', new AnnoOneToMany(TeamT::getClass(), 'team', CascadeType::ALL, null, true));
	}
	
	private $id;
	private $orderIndex;
	private $showImage = false;
	private $teamMembers;
	private $teamTs;
	
	public function getId() {
		return $this->id;
	}

	public function setId($id) {
		$this->id = $id;
	}
	
	public function getOrderIndex() {
		return $this->orderIndex;
	}

	public function setOrderIndex($orderIndex) {
		$this->orderIndex = $orderIndex;
	}

	public function getShowImage() {
		return $this->showImage;
	}

	public function setShowImage($showImage) {
		$this->showImage = $showImage;
	}

	/**
	 * @return \vag\bo\TeamMember[]
	 */
	public function getTeamMembers() {
		return $this->teamMembers;
	}

	public function setTeamMembers(\ArrayObject $teamMembers) {
		$this->teamMembers = $teamMembers;
	}
	
	/**
	 * @return \vag\bo\TeamT[]
	 */
	public function getTeamTs() {
		return $this->teamTs;
	}

	public function setTeamTs(\ArrayObject $teamTs) {
		$this->teamTs = $teamTs;
	}

	/**
	 * @param N2nLocale ...$n2nLocales
	 * @return \vag\bo\TeamT
	 */
	public function t(N2nLocale ...$n2nLocales) {
		return Translator::requireAny($this->teamTs, ...$n2nLocales);
	}
	
	
}

