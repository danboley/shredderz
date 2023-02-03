import React, { useEffect, useState } from 'react';
import { useHistory, useParams } from 'react-router-dom';

function TripDetailPage() {
  const [trip, setTrip] = useState("")
  const { id } = useParams();
  const history = useHistory();

    useEffect(() => {
        fetch(`/trips/${id}`)
          .then((res) => res.json())
          .then((data) => setTrip(data));
    }, []);

    const { name, year, location, hashtag, slogan, song, bracket, shredders, awards} = trip

  return (
    <div>
      <div>{name}</div>
      <div>{year}</div>
      <div>{location}</div>
      <div>{hashtag}</div>
      <div>{slogan}</div>
      <div>{song}</div>
      <div>{bracket}</div>
      <div>Attending Shredders...</div>
      <div>Awards...</div>
    </div>
  )
}

export default TripDetailPage;