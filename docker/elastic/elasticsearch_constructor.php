    // class ElasticSearchService.inc.php
    
    public function __construct()
    {
        $hosts = [ 'elasticsearch:9200' ];
        $this->client = ClientBuilder::create()
                                ->setHosts($hosts)
                                ->build();
        $this->getIndexableObjects();
    }
