import React from 'react';
import { useHistory } from 'react-router-dom';
import TripCard from './TripCard';

function TripsPage({ trips }) {
  const history = useHistory();


  const tripCards = trips?.map((trip) => (
    <TripCard 
        {...trips}
        trip = {trip}
        name = {trip.name}
        key = {trip.id}
    />
    ))


  return (
    <div>
        <h1>Trips</h1>
        <div>{tripCards}</div>
    </div>
  )
}

export default TripsPage;