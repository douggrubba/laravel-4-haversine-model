<?php

    /*
     *  Calculate the distance between 2 points, in Laravel.
     *  @package Haversine
     *  @subpackage Models
     *  @version 0.0.1
     *  @author Douglas Grubba
     *  @access public
     *  @copyright 2012 Douglas Grubba
     *  @link http://douggdev.me
     */
    class Haversine extends Eloquent {

        /**
         * name of the table
         *
         * @access  public
         * @var     string
         */
        protected $table;

        public function __construct()
        {
            parent::__construct();
        }

        /*
         *  find the n closest locations
         *  @param float $lat latitude of the point of interest
         *  @param float $lng longitude of the point of interest
         *  @param integer $max_distance max distance to search our from
         *  @param integer $max_locations max number of locations to return
         *  @param string $units miles|kilometers
         *  @return array
         */
        public function closest( $lat, $lng, $max_distance = 25, $max_locations = 10, $units = 'miles')
        {

            /*
             *  Allow for changing of units of measurement
             */
            switch ( $units ) {
                default:
                case 'miles':
                    //radius of the great circle in miles
                    $gr_circle_radius = 3959;
                break;
                case 'kilometers':
                    //radius of the great circle in kilometers
                    $gr_circle_radius = 6371;
                break;
            }

            /*
             *  Generate the select field for disctance
             */
            $disctance_select = sprintf(
                    "*, ( %d * acos( cos( radians(%s) ) " .
                            " * cos( radians( lat ) ) " .
                            " * cos( radians( lng ) - radians(%s) ) " .
                            " + sin( radians(%s) ) * sin( radians( lat ) ) " .
                        ") " .
                    ") " .
                    "AS distance",
                    $gr_circle_radius,
                    $lat,
                    $lng,
                    $lat
                );

            return $this
                ->select( DB::raw($disctance_select) )
                ->having( 'distance', '<', $max_distance )
                ->take( $max_locations )
                ->orderBy( 'distance', 'ASC' )
                ->get();
        }

    }
