namespace db.sappress;

	entity Aircraft {
		key AircraftId : String;
		Manufacturer: String;
        Model: String;
        EconomyClassCapacity: Integer;
        BusinessClassCapacity: Integer;
	}

    entity Flight {
		key FlightNumber : String;
		DepartureAirport: String;
        ArrivalAirport: String;
        DepartureTimestamp: Timestamp;
        ArrivalTimestamp: Timestamp;
        AircraftId: String;
    }

    entity Airport {
		key AirportCode : String;
		AirportName: String;
        City: String;
        Country: String;
    }