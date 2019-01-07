<?php

use Phalcon\Validation;
use Phalcon\Validation\Validator\StringLength as StringLength;

class Quiz extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(column="id", type="integer", length=6, nullable=false)
     */
    protected $id;

    /**
     *
     * @var string
     * @Column(column="quote", type="string", length=255, nullable=false)
     */
    protected $quote;

    /**
     *
     * @var string
     * @Column(column="movie", type="string", length=255, nullable=false)
     */
    protected $movie;

    /**
     *
     * @var string
     * @Column(column="movie_year", type="string", length=255, nullable=false)
     */
    protected $movie_year;

    /**
     *
     * @var string
     * @Column(column="url", type="string", length=255, nullable=false)
     */
    protected $url;

    /**
     *
     * @var string
     * @Column(column="extra", type="string", length=255, nullable=false)
     */
    protected $extra;

    /**
     * Method to set the value of field id
     *
     * @param integer $id
     * @return $this
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Method to set the value of field quote
     *
     * @param string $quote
     * @return $this
     */
    public function setQuote($quote)
    {
        $this->quote = $quote;

        return $this;
    }

    /**
     * Method to set the value of field movie
     *
     * @param string $movie
     * @return $this
     */
    public function setMovie($movie)
    {
        $this->movie = $movie;

        return $this;
    }

    /**
     * Method to set the value of field movie_year
     *
     * @param string $movie_year
     * @return $this
     */
    public function setMovieYear($movie_year)
    {
        $this->movie_year = $movie_year;

        return $this;
    }

    /**
     * Method to set the value of field url
     *
     * @param string $url
     * @return $this
     */
    public function setUrl($url)
    {
        $this->url = $url;

        return $this;
    }

    /**
     * Method to set the value of field extra
     *
     * @param string $extra
     * @return $this
     */
    public function setExtra($extra)
    {
        $this->extra = $extra;

        return $this;
    }

    /**
     * Returns the value of field id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Returns the value of field quote
     *
     * @return string
     */
    public function getQuote()
    {
        return $this->quote;
    }

    /**
     * Returns the value of field movie
     *
     * @return string
     */
    public function getMovie()
    {
        return $this->movie;
    }

    /**
     * Returns the value of field movie_year
     *
     * @return string
     */
    public function getMovieYear()
    {
        return $this->movie_year;
    }

    /**
     * Returns the value of field url
     *
     * @return string
     */
    public function getUrl()
    {
        return $this->url;
    }

    /**
     * Returns the value of field extra
     *
     * @return string
     */
    public function getExtra()
    {
        return $this->extra;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("quiz");
        $this->setSource("quiz");
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'quiz';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Quiz[]|Quiz|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Quiz|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }


    public function validation()
    {
        $validation = new Validation();


        $validation->add(
            [
                "extra",
                "quote",
            ],
            new StringLength(
                [
                    "max" => [
                        "extra"  => 500,
                        "quote" => 500,
                    ],
                    "messageMaximum" => [
                        "extra"  => "A max of 500 characters is allowed, for the extra field.",
                        "quote" => "A max of 500 characters is allowed, for the extra field.",
                    ],
                ]
            )
        );

       //the validation function must return a validator object
       return $this->validate($validation);
    }


}
