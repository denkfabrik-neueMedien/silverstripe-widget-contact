<?php


/**
 * @author marcokernler
 */
class ContactWidget extends Widget
{
	/**
	 *
	 */
	public static $db = array(
		"FrontendTitle" => "Varchar(255)",
		"Intro" => "HTMLText",
		"HideLogo" => "Boolean",
		"HideGenericImage" => "Boolean",
		"HideCompany1" => "Boolean",
		"HideCompany2" => "Boolean",
		"HideAddress" => "Boolean",
		"HideContact" => "Boolean"
	);


	/**
	 *
	 */
	public static $defaults = array();


	/**
	 *
	 */
	public static $title = "Kontakt-Widget";


	/**
	 *
	 */
	public static $cmsTitle = "Kontakt-Widget";


	/**
	 *
	 */
	public static $description = "Stellt die in den Seiteneinstellungen festgelegten Kontaktinformationen dar.";



	// - - -



	/**
	 *
	 */
	public function Title()
	{
		$displayName = $this->widgetTitle ? $this->widgetTitle : self::$title;

		return $this->showTitle ? $displayName : "";
	}


	/**
	 *
	 *
	 */
	public function getCMSFields()
	{
		return new FieldList(
			new TextField("FrontendTitle", "Frontend Title"),
			new TextareaField("Intro", "Einleitung"),
			new CheckboxField("HideLogo", "Logo ausblenden?"),
			new CheckboxField("HideGenericImage", "Allgmeines Bild ausblenden?"),
			new CheckboxField("HideCompany1", "Firma1 ausblenden?"),
			new CheckboxField("HideCompany2", "Firma2 ausblenden?"),
			new CheckboxField("HideAddress", "Adresse ausblenden?"),
			new CheckboxField("HideContact", "Kontaktdaten ausblenden?")
		);
	}
}



/**
 * Class ContactWidget_Controller
 */
class ContactWidget_Controller extends WidgetController
{
	/**
	 * @return DataObject
	 */
	public function ContactInformations()
	{
		// 	checks for the active environment type, to load minified css and js files if in live mode
		if (Director::get_environment_type() == "dev" || Director::get_environment_type() == "test")
		{
			Requirements::css("widget_Contact/css/contactwidget.css");
		}
		else
		{
			Requirements::css("widget_Contact/css/contactwidget.min.css");
		}

		return SiteConfig::get()->First();
	}


	/**
	 * @return string
	 */
	public function HideLogo()
	{
		return strval($this->widget->HideLogo);
	}


	/**
	 * @return string
	 */
	public function HideGenericImage()
	{
		return strval($this->widget->HideGenericImage);
	}


	/**
	 * @return string
	 */
	public function HideCompany1()
	{
		return strval($this->widget->HideCompany1);
	}


	/**
	 * @return string
	 */
	public function HideCompany2()
	{
		return strval($this->widget->HideCompany2);
	}


	/**
	 * @return string
	 */
	public function HideAddress()
	{
		return strval(boolval($this->widget->HideAddress));
	}


	/**
	 * @return string
	 */
	public function HideContact()
	{
		return strval(boolval($this->widget->HideContact));
	}
}
