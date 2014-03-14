<?php

class SiteController extends Controller
{
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'CCaptchaAction',
				'backColor'=>0xFFFFFF,
			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

    public function getLang(){
        if(!isset(Yii::app()->session['_lang']))
            Yii::app()->session['_lang'] = 'sr';
        $this->lang = Yii::app()->session['_lang'];

    }

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		$this->getLang();
        $slides = Slider::model()->findAllByAttributes(array(
            'lang' => $this->lang,
        ));
		$promo = Promo::model()->findByAttributes(array(
			'lang' => $this->lang,
		));
		$banners = Banner::model()->findAllByAttributes(array(
			'lang' => $this->lang,
		));

        $this->render('index',array(
            'slides'=>$slides,
	        'promo'=>$promo,
	        'banners'=>$banners,
        ));
	}

    /**
     * This is the default 'index' action that is invoked
     * when an action is not explicitly requested by users.
     */
    public function actionView()
    {
        $this->getLang();
        $category = $_GET['category'];
	    $subCategory = (isset($_GET['subcategory']))? $_GET['subcategory'] : null;

        $category = Category::model()->findByAttributes(array(
            'alias' => $category,
            'lang' => $this->lang,
        ));
	    $subCategory = Category::model()->findByAttributes(array(
		    'alias' => $subCategory,
		    'lang' => $this->lang,
	    ));

        if($category){
	        if($subCategory){
		        $post = Post::model()->findByAttributes(array(
			        'category_id' => $subCategory->id,
			        'lang' => $this->lang,
		        ));
		        $this->render('view',array(
			        'category'=>$subCategory,
			        'post'=>$post,
			        'subCategories'=>null,
		        ));
	        }
	        else {
		        $post = Post::model()->findByAttributes(array(
			        'category_id' => $category->id,
			        'lang' => $this->lang,
		        ));
		        $subCategories = Category::model()->findAllByAttributes(array(
			        'parent_id' => $category->id,
			        'lang' => $this->lang,
		        ));
		        $this->render('view',array(
			        'category'=>$category,
			        'post'=>$post,
			        'subCategories'=>$subCategories,
		        ));
	        }

        }
        else{
            $this->redirect(array('/'));

        }


    }

	public function actionGalerija_slika() {
		$this->getLang();
		$this->render('galerija',array(

		));
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$this->getLang();
		$model=new ContactForm;
		$category = Category::model()->findByAttributes(array(
			'alias' => 'kontaktirajte-nas',
			'lang' => $this->lang,
		));
		$post = Post::model()->findByAttributes(array(
			'category_id' => $category->id,
			'lang' => $this->lang,
		));
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode($model->company).'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-Type: text/plain; charset=UTF-8";

				mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
				Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
				$this->refresh();
			}
		}
		$this->render('contact',array(
			'model'=>$model,
			'category'=>$category,
			'post'=>$post,
		));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$model=new LoginForm;
//		$this->layout = 'main';

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}