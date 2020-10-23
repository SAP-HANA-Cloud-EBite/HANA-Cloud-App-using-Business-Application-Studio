namespace srv.sappress;
	using { db.sappress as my } from '../db/schema';

	service GlobalAirlinesSrv {
		entity Airport as projection on my.Airport;
		entity Aircraft as projection on my.Aircraft;
		entity Flight as projection on my.Flight;
     
        entity FlightFullDetail as select from my.Flight LEFT OUTER JOIN my.Aircraft 
            on Flight.AircraftId = Aircraft.AircraftId {
            FlightNumber, Flight.AircraftId, Manufacturer, Model, 
            EconomyClassCapacity, BusinessClassCapacity 
        }

	}
