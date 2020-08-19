<?php   
    namespace Grafikart\RecaptchaBundle\Constraints;
 
    use Symfony\Component\HttpFoundation\RequestStack;
    use Symfony\Component\Validator\Constraint;
    use Symfony\Component\Validator\ConstraintValidator;
    use ReCaptcha\ReCaptcha;

class RecaptchaValidator extends ConstraintValidator{
    /**
     * @var RequestStack
     */
    private $requestStack;

    /**
     * @var reCaptcha
     */
    private $reCaptcha;
    
     public function __construct(RequestStack $requestStack, ReCaptcha $reCaptcha)
    {   
        $this->requestStack = $requestStack;        
        $this->reCaptcha = $reCaptcha;        
    }

    /**
     * Checks if the passed value is valid
     * 
     * @param  mixed $value The value that should be validated
     * @param Constraint $constraint The constraint for the validation
     */
    public function validate($value, Constraint $constraint)
    {
       $request = $this->requestStack->getCurrentRequest();
       $recaptchaResponse = $request->request->get('g-recaptcha-response');
       if (empty($recaptchaResponse)) {
            $this->addViolation($constraint);
           return;
       }

       $reponse = $this->reCaptcha
       ->setExpectedHostname($request->getHost())
       ->verify($recaptchaResponse, $request->getClientIp());

       if (!$reponse->isSuccess()) {
           /*
                dump($this->reCaptcha);
                dump($this->requestStack);
                dump($request);
                dump($request->getClientIp()); 
                dump($recaptchaResponse);
                dump($reponse);
            */
                dump($reponse->getErrorCodes());
            
            $this->addViolation($constraint);
       }

           dump($request->getClientIp()); 
           dump($recaptchaResponse);
           dump($reponse);
    }
    
    private function addViolation(Constraint $constraint){
        $this->context->buildViolation($constraint->message)->addViolation();
        return;
    }
}