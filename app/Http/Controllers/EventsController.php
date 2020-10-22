<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Event;


class EventsController extends Controller
{
    /**
     * Show a list of all of the application's users.
     *
     * @return Response
     */
    public function index()
    {
        $events = Event::where('active', '=', 1)->get();

        return json_encode($events);
    }

    public function add(Request $request){
        $data = $request->all();
        $d = $data['body'];

        $title = $d['title'];
        $start = $d['datestart'];
        $end = $d['dateto'];
        $checked = $d['checked'];

        $events = $this->getDates($title, $start, $end, $checked);
        
        //update active to inactive
        $affectedRows = Event::where('active', '=', 1)->update(array('active' => 0));
        //insert now all the events
        foreach($events as $e){

            $event = new Event;
            $event->title = $e['title'];
            $event->start = $e['start'];
            $event->end = $e['end'];
            $event->save();

        }
        
        return json_encode($events);
    }

    function getDates($title = '', $start, $end, $days){
        $start_date = date('Y-m-d', strtotime($start));
        $end_date = date('Y-m-d', strtotime($end));

        $dates = [];

        while($start_date <= $end_date){

            $day = date("l", strtotime($start_date));

            if(in_array($day, $days)){
                $dates []= array('title' => $title, 'start' => $start_date, 'end'=>$start_date);
            }

            $raw = strtotime($start_date);
            $start_date =  date('Y-m-d', strtotime("+1 day", $raw));
        }

        return $dates;
    }

}