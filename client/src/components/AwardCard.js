import React from 'react';
import { useHistory, useParams } from 'react-router-dom';

function AwardCard({ award, name, description, trip, winner}) {
    const { id } = useParams();
    const history = useHistory();

  return (
    <div>AwardCard
        <div onClick={(e) => {
            history.push(`/award/${award.id}`);                  
            }}>{name}</div>
        <div>{trip.name} {trip.year}</div>
        <div>Awarded to: {winner.name}</div>
    </div>
  )
}

export default AwardCard;