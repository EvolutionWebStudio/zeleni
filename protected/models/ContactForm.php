<?php

/**
 * ContactForm class.
 * ContactForm is the data structure for keeping
 * contact form data. It is used by the 'contact' action of 'SiteController'.
 */
class ContactForm extends CFormModel
{
	public $name;
	public $email;
	public $company;
	public $body;
	public $phone;
	public $webSite;

	public function getLang(){
		if(!isset(Yii::app()->session['_lang']))
			Yii::app()->session['_lang'] = 'sr';
	}
	/**
	 * Declares the validation rules.
	 */
	public function rules()
	{
		return array(
			// name, email, subject and body are required
			array('name, email, company, body', 'required'),
			array('webSite, phone', 'safe'),
			// email has to be a valid email address
			array('email', 'email'),
		);
	}

	/**
	 * Declares customized attribute labels.
	 * If not declared here, an attribute would have a label that is
	 * the same as its name with the first letter in upper case.
	 */
	public function attributeLabels()
	{
		$this->getLang();
		if(Yii::app()->session['_lang'] == 'sr')
			return array(
				'name' => 'Ime',
				'email' => 'E-mail',
				'company' => 'Firma',
				'body' => 'Poruka',
				'phone' => 'Telefon',
				'webSite' => 'Web sajt'
			);
		if(Yii::app()->session['_lang'] == 'en')
			return array(
				'name' => 'Name',
				'email' => 'E-mail',
				'company' => 'Company',
				'body' => 'Message',
				'phone' => 'Phone',
				'webSite' => 'Web site'
			);
		if(Yii::app()->session['_lang'] == 'ru')
			return array(
				'name' => 'Имя',
				'email' => 'E-mail',
				'company' => 'Фирма',
				'body' => 'Послание',
				'phone' => 'Телефон',
				'webSite' => 'Веб-сайт

'
			);
	}
}