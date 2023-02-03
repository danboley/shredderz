import React, { useEffect, useState } from 'react';
import { useHistory, useParams } from 'react-router-dom';

function ShredderDetailPage() {
    const [shredder, setShredder] = useState("")
    const { id } = useParams();
    const history = useHistory();

    useEffect(() => {
        fetch(`/shredders/${id}`)
          .then((res) => res.json())
          .then((data) => setShredder(data));
    }, []);

    const { name, nickname, kind, pic, dob, gears, trips, awards} = shredder

  return (
    <div>
        ShredderDetailPage
        <img src={pic}></img>
        <div>{name}</div>
        <div>AKA</div>
        <div>{nickname}</div>
        <div>{dob}</div>
        <div>{kind}</div>
        <div>Trips Attended...</div>
        <div>Gear...</div>
        <div>Awards...</div>
    </div>
  )
}

export default ShredderDetailPage;