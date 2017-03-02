<?php

namespace portfolio\controller;

use n2n\web\http\controller\ControllerAdapter;
use portfolio\model\PortfolioDao;
use n2n\reflection\annotation\AnnoInit;
use n2n\web\http\annotation\AnnoPath;

class PortfolioController extends ControllerAdapter {
	private static function _annos(AnnoInit $ai) {
		$ai->m('detail', new AnnoPath('/pathPart:*'));
	}
	
	private $portfolioDao;
	
	private function _init(PortfolioDao $portfolioDao) {
		$this->portfolioDao = $portfolioDao;
	}
	
	public function index() {
		$portfolios = $this->portfolioDao->getPortfolios();
		
		$this->forward('..\view\portfolios.html', array('portfolios' => $portfolios));
	}
	
	public function detail($pathPart) {
		$locale = $this->getRequest()->getN2nLocale();
		$portfolio = $this->portfolioDao->getPortfolioByPathPart($pathPart, $locale);
		
		$this->forward('..\view\portfolio.html', array('portfolio' => $portfolio));
	}
}