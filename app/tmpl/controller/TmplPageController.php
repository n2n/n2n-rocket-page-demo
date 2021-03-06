<?php
	namespace tmpl\controller;
	
	use page\bo\PageController;
	use n2n\reflection\annotation\AnnoInit;
	use page\annotation\AnnoPage;
	use page\annotation\AnnoPageCiPanels;

class TmplPageController extends PageController {
	private static function _annos(AnnoInit $ai) {
		$ai->m('startPage', new AnnoPage(), new AnnoPageCiPanels('hero', 'main'));
		$ai->m('standardPage', new AnnoPage(), new AnnoPageCiPanels('main', 'aside'));
	}

	public function startPage() {
		$this->forward('..\view\startPage.html');
	}

	public function standardPage() {
		$this->forward('..\view\standardPage.html');
	}
}