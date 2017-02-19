<?php
namespace tmpl\model;

use n2n\impl\web\ui\view\html\HtmlView;

class TmplModel {
	const PANEL_NAME_TOP = 'panel_top';
	const PANEL_NAME_BOTTOM = 'panel_bottom';
	const PANEL_NAME_LEFT = 'panel_left';
	const PANEL_NAME_RIGHT = 'panel_right';
	
	public static function getNumAsideCols(HtmlView $view) {
		$sideCols = 0;
		if ($view->hasPanel(TmplModel::PANEL_NAME_LEFT)) $sideCols++;
		if ($view->hasPanel(TmplModel::PANEL_NAME_RIGHT)) $sideCols++;
		return $sideCols;
	}
	
	public static function getMainColClass(int $sideCols) {
		switch ($sideCols) {
			case 2:
				// zwei Zusatzspalten --> Hauptspalte ist schmal
				$mainColClass = 'col-sm-6';
				break;
			case 1:
				// eine Zusatzspalte --> Hauptspalte ist mittel
				$mainColClass = 'col-sm-9';
				break;
			default:
				// keine Zusatzspalten --> Klasse wird nicht gebraucht
				$mainColClass = 'col-md-8 offset-md-1';
		}
		return $mainColClass;
	}
}