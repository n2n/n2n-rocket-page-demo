<?php

namespace portfolio\controller;

use page\bo\PageController;
use n2n\reflection\annotation\AnnoInit;
use page\annotation\AnnoPage;

class PortfolioPageController extends PageController {
	
	private static function _annos(AnnoInit $ai) {
		$ai->m('portfolios', new AnnoPage());
	}
	
	public function portfolios(PortfolioController $pc, array $delegateCmds = null) {
		$this->delegate($pc);
	}
}