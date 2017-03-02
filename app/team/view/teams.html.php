<?php
	use n2n\impl\web\ui\view\html\HtmlView;
	use n2n\web\ui\view\View;
	use team\bo\Team;
	use team\bo\TeamMember;

	$view = HtmlView::view($this);
	$html = HtmlView::html($view);
	$request = HtmlView::request($view);
	
	$n2nLocale = $request->getN2nLocale();
	
	$teams = $view->getParam('teams');
	
	$view->useTemplate('\tmpl\view\template.html');
	
?>

<?php if (count($teams) == 0) : ?>
	<p><?php $html->text('no_teams') ?></p>
<?php return; endif ?>

<?php foreach ($teams as $team): $view->assert($team instanceof Team) ?>
	<h2><?php $html->out($team->t($n2nLocale)->getName())?></h2>
	
	<?php if ($team->getTeamMemberCount() == 0) : ?>
		<p><?php $html->text('no_team_members') ?></p>
		<?php continue; ?>
	<?php endif ?>
	
	<div class="team row">
		<?php foreach ($team->getTeamMembers() as $member): $view->assert($member instanceof TeamMember)?>
			<div class="col-sm-4">
				<div class="card team-member">
					<?php if (null !== $foto = $member->getFoto()): ?>
						<?php $html->image($foto, null, array('class' => 'card-img-top img-fluid')) ?>
					<?php endif ?>
					<div class="card-block">
						<h3 class="card-title">
							<?php $html->out($member->getFullName()) ?>
							<small><?php $html->out($member->t($n2nLocale)->getFunction()) ?></small>
						</h3>
						<?php if (null !== $email = $member->getEmail()): ?>
							<?php $html->linkEmail($email, $html->getText('email')) ?>
						<?php endif ?>
					</div>
				</div>				
			</div>
		<?php endforeach ?>
	</div>
<?php endforeach ?>
	