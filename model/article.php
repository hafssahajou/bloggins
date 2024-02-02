
<?php


abstract class Article {
    public $idarticle;
    public $titre;
    public $contenu;
    public $date_de_publication;


    public function __construct($idarticle, $titre, $contenu, $date_de_publication) {
        $this->idarticle = $idarticle;
        $this->titre = $titre;
        $this->contenu = $contenu;
        $this->date_de_publication = $date_de_publication;

    }

    

}
