<?php
    namespace App\Notification;

use App\Entity\Contact;
use Swift_Message;
use Swift_SmtpTransport;
use Twig\Environment;

class ContactNotification {

        /**
         * @var Swift_Mailer
         */
        private $mailer;

        /**
         * @var Environment
         */
        private $renderer;

        public function __construct(Environment $renderer)
        {
            $transport = (new  Swift_SmtpTransport('smtp.gmail.com', 587, 'tls'))
                ->setUserName('alexraven995@gmail.com')
				->setPassword('demonfox991')
				->setStreamOptions(array('ssl' => array('allow_self_signed' => true, 'verify_peer' => false)));
            if ($this->mailer === null) {
                $this->mailer = new \Swift_Mailer($transport);
            }
            $this->renderer = $renderer;
        }

        public function notify(Contact $contact){

            /*
                $transport = (new  \Swift_SmtpTransport('smtp.gmail.com', 587, 'tls'))
                    ->setStreamOptions(array('ssl' => array('allow_self_signed' => true, 'verify_peer' => false)));
            */
                
            $message = (new \Swift_Message('Agence : ' . $contact->getProperty()->getTitle()))
                ->setFrom('alexraven995@gmail.com')
                ->setTo('alexraven995@gmail.com')
                ->setReplyTo($contact->getEmail())
                ->setBody($this->renderer->render('emails/contact.html.twig', [
                    'contact' => $contact
                ]), 'text/html');
            
            $this->mailer->send($message);
        }

    }