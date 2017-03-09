<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use page\ui\PageHtmlBuilder;
	use n2n\core\N2N;
	use page\ui\nav\Nav;
	use tmpl\model\TmplModel;
	use page\model\nav\murl\MurlPage;
use n2n\impl\web\ui\view\html\HtmlBuilder;
use n2n\impl\web\ui\view\html\HtmlBuilderMeta;
use n2nutil\bootstrap\ui\BootstrapLibrary;
use n2n\l10n\N2nLocale;
	
	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$request = HtmlView::request($view);
	
	$n2nLocale = $request->getN2nLocale();
	
	$socials = array('github' => 'https://github.com/n2n', 
			'facebook' => 'https://www.facebook.com/hnm.webdesign', 
			'twitter' => 'https://twitter.com/n2nframework');
	$email = 'everything@n2n.rocks';
	
	$pageHtml = new PageHtmlBuilder($view);
	$pageHtml->meta()->applyMeta();
	 
	$html->meta()->addMeta(array('charset' => N2N::CHARSET));
	
	$html->meta()->addLibrary(new BootstrapLibrary());
	$html->meta()->addCss('css/font-awesome.css');
	$html->meta()->addCss('css/style.css');
				 
?>
<!doctype html>
<html lang="<?php $html->out($request->getN2nLocale()->getLanguageId())?>">
    <?php $html->headStart() ?>
    <?php $html->headEnd() ?>
    <?php $html->bodyStart() ?>
        <nav class="navbar navbar-toggleable-sm navbar-dark navbar-inverse bg-inverse">
        	<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" 
        			data-target="#page-navi" aria-controls="page-navi" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="navbar-brand-container">
	            <?php $html->link(MurlPage::home(), $html->getImageAsset('img/logo.png', 'Logo'),
                    array('class' => 'navbar-brand')) ?>
			</div>
			
			<div class="collapse navbar-collapse align-items-center" id="page-navi">
				<div id="global-navi">
		            <?php $pageHtml->navigation(Nav::home(), array('class' => 'navbar-nav'), null,
		                    array('class' => 'nav-item'), array('class' => 'nav-link')) ?>
		        </div>
			
			
				<!-- Language Navigation, if there are more than or 2 translations, it will show up -->
				<?php if (count($pageHtml->meta()->getN2nLocaleSwitchUrls()) >= 2): ?>
					<!-- Bootstrap dropdown menu -->
		            <div class="dropdown ml-auto" id="lang-navi">
		            	<button class="btn btn-secondary dropdown-toggle text-uppercase" type="button" 
		            			id="localeMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						    <?php $html->out($n2nLocale->getLanguageId()) ?>
						</button>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="localeMenuButton">
						    
						    <!-- Customized language menu, storing each available translation in $n2nLocaleId -->
						    <?php foreach ($pageHtml->meta()->getN2nLocaleSwitchUrls() as $n2nLocaleId => $url): ?>
						    	<!-- Show the available locales without the active one -->
						    	<?php if ($n2nLocaleId == $n2nLocale->getId()) continue; ?>
	
						    	<?php $switchN2nLocale = N2nLocale::create($n2nLocaleId) ?>
						    				    	
					    		<!-- get label of link written in the language it is -->
					    		<?php $html->link($url, $switchN2nLocale->getName($switchN2nLocale), 
					    				array('class' => 'dropdown-item')) ?>
						    	
						    <?php endforeach ?>
						    
						</div>
						
						<!-- Alternative, simpler way of inserting language menu (without dropdown) -->
		                <?php /*$pageHtml->localeSwitch(array('class' => 'nav nav-inline'), array('class' => 'nav-item'),
		                        array('class' => 'nav-link'))*/ ?>
		            </div>
		        <?php endif ?>
	        </div>
        </nav>
        
        <?php if ($view->hasPanel(TmplModel::PANEL_NAME_TOP)) : ?>
        	<?php $view->importPanel(TmplModel::PANEL_NAME_TOP) ?>
        <?php endif ?>
    
      	<div class="container main-container">
	        <?php $view->importContentView() ?>
      	</div>
          
        <?php if ($view->hasPanel(TmplModel::PANEL_NAME_BOTTOM)) : ?>
        	<?php $view->importPanel(TmplModel::PANEL_NAME_BOTTOM) ?>
        <?php endif ?>
        
        <footer id="page-footer" class="footer bg-inverse text-white">
        	<div class="container">
        		<div class="row">
        			<div class="col-sm-4">
						<p class="address">
							<strong>Hofmänner New Media</strong><br />
							Stadthausstrasse 65<br />
							8400 Winterthur<br />
							<?php $html->linkEmail($email) ?>
						</p>
						Created with love 2017 by <a href="https://n2n.rocks" target="_blank">n2n.rocks</a>
        			</div>
					<div class="col-sm-8 social-links text-right">
						<ul class="social-links-navi list-inline">
							<?php foreach ($socials as $social => $link): ?>
								<li class="<?php $html->out($social) ?> list-inline-item">
									<a class="fa-stack fa-2x" href="<?php $html->out($link) ?>" target="_blank">
										<?php if ($social !== 'github'): ?>
											<i class="fa fa-circle fa-stack-2x outer" aria-hidden="true"></i>
										<?php endif ?>
										<i class="fa fa-<?php $html->out($social) ?> fa-stack-<?php $html->out(($social === 'github') ? '2' : '1') ?>x inner" aria-hidden="true"></i>
									</a>
								</li>
							<?php endforeach ?>
						</ul>
					</div>
        		</div>
        	</div>
		</footer>
        
    <?php $html->bodyEnd() ?>
</html>