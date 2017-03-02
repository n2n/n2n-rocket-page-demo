<?php

namespace portfolio\model;

use n2n\context\RequestScoped;
use n2n\persistence\orm\EntityManager;
use portfolio\bo\Portfolio;
use n2n\l10n\N2nLocale;

class PortfolioDao implements RequestScoped {
	
	private $em; 
	
	private function _init(EntityManager $em) {
		$this->em = $em;
	}
	
	/**
	 * @return \portfolio\bo\Portfolio[]
	 */
	public function getPortfolios() {
		return $this->em->createSimpleCriteria(Portfolio::getClass(), array('online' => true), 
				array('published' => 'DESC'))->toQuery()->fetchArray();
	}
	
	/**
	 * @param string $pathPart
	 * @return \portfolio\bo\Portfolio
	 */
	public function getPortfolioByPathPart($pathPart, N2nLocale $locale) {
		return $this->em->createSimpleCriteria(Portfolio::getClass(), array('portfolioTs.pathPart' => $pathPart, 
				'portfolioTs.n2nLocale' => $locale))->toQuery()->fetchSingle();
	}
}