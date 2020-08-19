<?php 

    namespace Grafikart\RecaptchaBundle\DependencyInjection;

    use Symfony\Component\Config\Definition\ConfigurationInterface;
    use Symfony\Component\Config\Definition\Builder\TreeBuilder;

    class Configuration implements ConfigurationInterface {

        /**
         * Generates the configuration tree builder
         *
         *@return \Symfony\Component\Config\Definition\Builder\TreeBuilder the tree builder
         *
         */
        public function getConfigTreeBuilder()
        {
            $treeBuilder = new TreeBuilder();
            $rootNode = $treeBuilder->root('recaptcha');
            $rootNode
                ->children()
                ->scalarNode('key')
                ->isRequired()
                ->cannotBeEmpty()
                ->end()
                ->scalarNode('secret')
                ->cannotBeEmpty()
                ->isRequired()
                ->end()
                ->end()
            ;

            return $treeBuilder;
        }
    }