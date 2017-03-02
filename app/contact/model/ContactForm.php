<?php

namespace contact\model;

use n2n\web\dispatch\Dispatchable;
use n2n\web\dispatch\map\bind\MappingDefinition;
use n2n\l10n\DynamicTextCollection;
use n2n\web\dispatch\map\bind\BindingDefinition;
use n2n\impl\web\dispatch\map\val\ValNotEmpty;
use n2n\impl\web\dispatch\map\val\ValEmail;
use n2n\mail\MailUtils;
use n2n\mail\Transport;
use n2n\mail\Mail;
use n2n\core\N2N;

class ContactForm implements Dispatchable {
	protected $name;
	protected $email;
	protected $message;

	// for setting the recipients inside the ContactController
	private $recipients;
	
	public function getName() {
		return $this->name;
	}
	
	public function setName($name) {
		$this->name = $name;
	}
	
	public function getEmail() {
		return $this->email;
	}
	
	public function setEmail($email) {
		$this->email = $email;
	}
	
	public function getMessage() {
		return $this->message;
	}
	
	public function setMessage($message) {
		$this->message = $message;
	}
	
	public function getRecipients() {
		return $this->recipients;
	}
	
	public function setRecipients(array $recipients) {
		$this->recipients = $recipients;
	}
	
	// translated labels for different languages can be set in its .ini file inside the 'lang' folder
	private function _mapping(MappingDefinition $md, DynamicTextCollection $dtc) {
		$md->getMappingResult()->setLabels(array(
				'name' => $dtc->translate('contact_form_name_label'),
				'email' => $dtc->translate('contact_form_email_label'),
				'message' => $dtc->translate('contact_form_message_label')
		));
	}
	
	private function _validation(BindingDefinition $bd) {
		$bd->val('name', new ValNotEmpty());
		$bd->val('email', new ValNotEmpty(), new ValEmail());
		$bd->val('message', new ValNotEmpty());
	}
	
	public function send() {
		$to = $this->recipients ? $this->recipients : N2N::getAppConfig()->mail()->getNotificationRecipientsAddresses();
		$mail = MailUtils::createNotificationMail('Kontakt ' . $_SERVER['SERVER_NAME'], $this->prepareContentToSend(), $to);
		$mail->addReplyTo($this->email);
		Transport::send($mail);
	}
	
	// define what the mail should look like
	private function prepareContentToSend() {
		return 'Name: ' . $this->name . "\n\n"
				. 'E-Mail: ' . $this->email . "\n\n"
				. "Nachricht: \n--------------\n\n" . $this->message . "\n\n"
				. 'IP: ' . $_SERVER['REMOTE_ADDR'] . ' Datum: ' . date('d.m.Y H:m');
	}
}

