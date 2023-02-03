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
        year = {trip.year}
        location = {trip.location}
        hashtag = {trip.hashtag}
        slogan = {trip.slogan}
        song = {trip.song}
        bracket = {trip.bracket}
        shredders = {trip.shredders}
        awards = {trip.awards}
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