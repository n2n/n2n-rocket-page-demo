<?php 
namespace news\controller;

use n2n\web\http\controller\ControllerAdapter;
use news\model\NewsDao;
use n2n\reflection\annotation\AnnoInit;
use n2n\web\http\annotation\AnnoPath;
use news\model\NewsCommentForm;

class NewsController extends ControllerAdapter {
	
	private static function _annos(AnnoInit $ai) {
		$ai->m('detail', new AnnoPath('/urlPart:*'));
	}
	
	private $newsDao;
	
	private function _init(NewsDao $newsDao) {
		$this->newsDao = $newsDao;
	}
	
	public function index() {
		$lang = $this->getN2nContext()->getN2nLocale();
		
		$newsArticles = $this->newsDao->getOnlineNewsArticles($lang);
		
		$this->forward('..\view\news.html', array('newsArticles' => $newsArticles));
	}
	
	public function detail(string $urlPart) {
		$newsArticle = $this->newsDao->getNewsArticleByUrlPart($urlPart);
		if ($newsArticle === null) {
			throw new PageNotFoundException('Invalid urlPart: ' . $urlPart);
		}
		
		$this->forward('..\view\newsArticle.html', array('newsArticle' => $newsArticle));
	}
	
	public function doComment(int $newsId) {
		$newsArticle = $this->newsDao->getNewsArticleById($newsId);
	
		if ($newsArticle === null) {
			throw new PageNotFoundException('invalid id: ' . $newsId);
		}
	
		$this->beginTransaction();
		$commentForm = new NewsCommentForm($newsArticle);
		if ($this->dispatch($commentForm, 'save')) {
			$this->commit();
			$this->redirectToController($newsArticle->getUrlPart());
			return;
		}
		$this->commit();
	
		$this->forward('..\view\comment.html', array('commentForm' => $commentForm));
	}
}