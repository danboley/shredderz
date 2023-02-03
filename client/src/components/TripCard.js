import React from 'react';
import { useHistory, useParams } from 'react-router-dom';


function TripCard({ trip, name, year, location, hashtag, slogan, song, bracket, shredders, awards}) {
    const { id } = useParams();
    const history = useHistory();


  return (
    <div>
        <div onClick={(e) => {
            history.push(`/trip/${trip.id}`);                  
            }}>{name}
        </div>
        <div>{year}</div>
    </div>
  )
}

export default TripCard;