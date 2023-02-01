import React from 'react';
import { useHistory, useParams } from 'react-router-dom';


function TripCard({ trip, name, }) {
    const { id } = useParams();
    const history = useHistory();


  return (
    <div>
        {/* <div>{name}</div> */}
        <div onClick={(e) => {
            history.push(`/trip/${trip.id}`);                  
            }}>{name}
        </div>
    </div>
  )
}

export default TripCard;