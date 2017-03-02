<?php 
namespace news\controller;

use page\bo\PageController;
use n2n\reflection\annotation\AnnoInit;
use page\annotation\AnnoPage;

class NewsPageController extends PageController {
	private static function _annos(AnnoInit $ai) {
		$ai->m('news', new AnnoPage());
	}
	
	public function news(NewsController $newsController, array $delegateCmds = null) {
		$this->delegate($newsController);
	}
}
?>