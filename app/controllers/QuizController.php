<?php

use Phalcon\Mvc\Model\Query;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;


class QuizController extends ControllerBase
{

    /**
     * This model is mapped to the table quiz
     */
    public function getSource()
    {
        return 'Quiz';
    }


    /**
     * Index action
     */
    public function indexAction()
    {
        $quiz = $this->findResult()->getFirst();
        $answers = $this->findResult(3)->toArray();
        // push the options to one array and shuffle
        array_push($answers, $quiz->toArray());
        shuffle($answers);
        // Pass to the page the shuffled results
        $this->view->quiz = $quiz;
        $this->view->answers = $answers;
        $this->persistent->parameters = null;
    }

    /**
    * Select a random result set from the DB and return it.
    */
    public function findResult($limit=1)
    {
        $query = new Query(
            "SELECT * FROM quiz ORDER BY RAND() LIMIT $limit", $this->getDI()
        );
        // Execute the query returning a result if any
        return $query->execute();
    }


    /**
     * Searches for quiz
     */
    public function searchAction()
    {
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'Quiz', $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters["order"] = "id";

        $quiz = Quiz::find($parameters);
        if (count($quiz) == 0) {
            $this->flash->notice("The search did not find any quiz");

            $this->dispatcher->forward([
                "controller" => "quiz",
                "action" => "index"
            ]);

            return;
        }

        $paginator = new Paginator([
            'data' => $quiz,
            'limit'=> 10,
            'page' => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();
    }

    /**
     * Displays the creation form
     */
    public function newAction()
    {

    }

    /**
     * Edits a quiz
     *
     * @param string $id
     */
    public function editAction($id)
    {
        if (!$this->request->isPost()) {

            $quiz = Quiz::findFirstByid($id);
            if (!$quiz) {
                $this->flash->error("quiz was not found");

                $this->dispatcher->forward([
                    'controller' => "quiz",
                    'action' => 'view'
                ]);

                return;
            }

            $this->view->id = $quiz->getId();

            $this->tag->setDefault("id", $quiz->getId());
            $this->tag->setDefault("quote", $quiz->getQuote());
            $this->tag->setDefault("movie", $quiz->getMovie());
            $this->tag->setDefault("movie_year", $quiz->getMovieYear());
            $this->tag->setDefault("url", $quiz->getUrl());
            $this->tag->setDefault("extra", $quiz->getExtra());

        }
    }

    /**
     * Creates a new quiz
     */
    public function createAction()
    {
        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "quiz",
                'action' => 'index'
            ]);

            return;
        }

        $quiz = new Quiz();
        $quiz->setquote($this->request->getPost("quote"));
        $quiz->setmovie($this->request->getPost("movie"));
        $quiz->setmovieYear($this->request->getPost("movie_year"));
        $quiz->seturl($this->request->getPost("url"));
        $quiz->setextra($this->request->getPost("extra"));

        if (!$quiz->save()) {
            foreach ($quiz->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "quiz",
                'action' => 'new'
            ]);

            return;
        }

        $this->flash->success("Question was created successfully");

        $this->dispatcher->forward([
            'controller' => "quiz",
            'action' => 'search'
        ]);
    }

    /**
     * Saves a quiz edited
     *
     */
    public function saveAction()
    {

        if (!$this->request->isPost()) {
            $this->dispatcher->forward([
                'controller' => "quiz",
                'action' => 'index'
            ]);

            return;
        }

        $id = $this->request->getPost("id");
        $quiz = Quiz::findFirstByid($id);

        if (!$quiz) {
            $this->flash->error("quiz does not exist " . $id);

            $this->dispatcher->forward([
                'controller' => "quiz",
                'action' => 'index'
            ]);

            return;
        }

        $quiz->setquote($this->request->getPost("quote"));
        $quiz->setmovie($this->request->getPost("movie"));
        $quiz->setmovieYear($this->request->getPost("movie_year"));
        $quiz->seturl($this->request->getPost("url"));
        $quiz->setextra($this->request->getPost("extra"));


        if (!$quiz->save()) {

            foreach ($quiz->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "quiz",
                'action' => 'edit',
                'params' => [$quiz->getId()]
            ]);

            return;
        }

        $this->flash->success("quiz was updated successfully");

        $this->dispatcher->forward([
            'controller' => "quiz",
            'action' => 'index'
        ]);
    }

    /**
     * Deletes a quiz
     *
     * @param string $id
     */
    public function deleteAction($id)
    {
        $quiz = Quiz::findFirstByid($id);
        if (!$quiz) {
            $this->flash->error("quiz was not found");

            $this->dispatcher->forward([
                'controller' => "quiz",
                'action' => 'view'
            ]);

            return;
        }

        if (!$quiz->delete()) {

            foreach ($quiz->getMessages() as $message) {
                $this->flash->error($message);
            }

            $this->dispatcher->forward([
                'controller' => "quiz",
                'action' => 'search'
            ]);

            return;
        }

        $this->flash->success("quiz was deleted successfully");

        $this->dispatcher->forward([
            'controller' => "quiz",
            'action' => "view"
        ]);
    }


    /**
     * View all for quiz
     */
    public function viewAction()
    {
        $numberPage = 1;
        if ($this->request->isPost()) {
            $query = Criteria::fromInput($this->di, 'Quiz', $_POST);
            $this->persistent->parameters = $query->getParams();
        } else {
            $numberPage = $this->request->getQuery("page", "int");
        }

        $parameters = $this->persistent->parameters;
        if (!is_array($parameters)) {
            $parameters = [];
        }
        $parameters["order"] = "id";

        $quiz = Quiz::find($parameters);
        if (count($quiz) == 0) {
            $this->flash->notice("The search did not find any movie details");

            $this->dispatcher->forward([
                "controller" => "quiz",
                "action" => "view"
            ]);

            return;
        }

        $paginator = new Paginator([
            'data' => $quiz,
            'limit'=> 10,
            'page' => $numberPage
        ]);

        $this->view->page = $paginator->getPaginate();
    }


}
