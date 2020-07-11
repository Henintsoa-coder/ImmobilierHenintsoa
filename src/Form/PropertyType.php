<?php

namespace App\Form;

use App\Entity\Option;
use App\Entity\Property;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class PropertyType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('description')
            ->add('surface')
            ->add('rooms')
            ->add('bedrooms')
            ->add('floor')
            ->add('price')
            ->add('heat', ChoiceType::class, [
                'choices' => $this->getChoices()
            ])
            ->add('city')
            ->add('options', EntityType::class, [
                'class' => Option::class,
                'choice_label' => 'name',
                'multiple' => true
            ])

            /************************************************************************** 
                ->add('city', null, [
                        'label' => 'Ville'
                     ])
                // Code qui permet de traduire le label d'un champ lors de l'affichage
            ***************************************************************************/ 
            
            ->add('adress')
            ->add('postal_code')
            ->add('sold')
            /*->add('created_at') Inutile car généré dynamiquement. :-)
            :-)*/
            ->add('slug')
        ;
    }
    
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Property::class,
            'translation_domain' => 'forms'
        ]);
    }

    private function getChoices(){
        $choices = Property::HEAT;
        $output = [];
        foreach($choices as $k => $v){
            $output[$v] =$k;
        }

        return $output;
    }
}
