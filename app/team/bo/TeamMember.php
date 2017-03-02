<?php

namespace team\bo;

use n2n\reflection\ObjectAdapter;
use n2n\reflection\annotation\AnnoInit;
use n2n\persistence\orm\annotation\AnnoOneToMany;
use n2n\persistence\orm\annotation\AnnoManyToOne;
use n2n\persistence\orm\annotation\AnnoManagedFile;
use n2n\io\managed\File;
use n2n\persistence\orm\CascadeType;
use n2n\l10n\N2nLocale;
use rocket\spec\ei\component\field\impl\translation\Translator;
use news\bo\NewsArticle;

class TeamMember extends ObjectAdapter {
	private static function _annos(AnnoInit $ai) {
		$ai->p('team', new AnnoManyToOne(Team::getClass()));
		$ai->p('foto', new AnnoManagedFile());
		$ai->p('teamMemberTs', new AnnoOneToMany(TeamMemberT::getClass(), 'teamMember', CascadeType::ALL, null, true));
		$ai->p('newsArticles', new AnnoOneToMany(NewsArticle::getClass(), 'author', CascadeType::ALL));
	}
	
	private $id;
	private $firstname;
	private $lastname;
	private $phone;
	private $email;
	private $foto;
	private $orderIndex;
	private $team;
	private $teamMemberTs;
	private $newsArticles;
	
	public function getId() {
		return $this->id;
	}

	public function setId($id) {
		$this->id = $id;
	}

	public function getFirstname() {
		return $this->firstname;
	}

	public function setFirstname($firstname) {
		$this->firstname = $firstname;
	}

	public function getLastname() {
		return $this->lastname;
	}

	public function setLastname($lastname) {
		$this->lastname = $lastname;
	}

	public function getPhone() {
		return $this->phone;
	}

	public function setPhone($phone) {
		$this->phone = $phone;
	}

	public function getEmail() {
		return $this->email;
	}

	public function setEmail($email) {
		$this->email = $email;
	}

	/**
	 * @return \n2n\io\managed\File
	 */
	public function getFoto() {
		return $this->foto;
	}

	public function setFoto(File $foto = null) {
		$this->foto = $foto;
	}

	public function getOrderIndex() {
		return $this->orderIndex;
	}

	public function setOrderIndex($orderIndex) {
		$this->orderIndex = $orderIndex;
	}

	/**
	 * @return \team\bo\Reference[]
	 */
	public function getReferences() {
		return $this->references;
	}

	public function setReferences(\ArrayObject $references) {
		$this->references = $references;
	}

	/**
	 * @return \team\bo\Team
	 */
	public function getTeam() {
		return $this->team;
	}

	public function setTeam(Team $team) {
		$this->team = $team;
	}

	/**
	 * @return \team\bo\TeamMemberT[]
	 */
	public function getTeamMemberTs() {
		return $this->teamMemberTs;
	}

	public function setTeamMemberTs(\ArrayObject $teamMemberTs) {
		$this->teamMemberTs = $teamMemberTs;
	}
	
	/**
	 * @return NewsArticle[]
	 */
	public function getNewsArticles() {
		return $this->newsArticles;
	}
	
	/**
	 * @param \ArrayObject $newsArticles
	 */
	public function setNewsArticles(\ArrayObject $newsArticles) {
		$this->newsArticles = $newsArticles;
	}

	/**
	 * More methods
	 */
	
	/**
	 * @param N2nLocale ...$n2nLocales
	 * @return \team\bo\TeamMemberT
	 */
	public function t(N2nLocale ...$n2nLocales) {
		return Translator::findAny($this->teamMemberTs, ...$n2nLocales);
	}
	
	public function getFullName() {
		return trim($this->firstname . ' ' . $this->lastname);
	}
}

