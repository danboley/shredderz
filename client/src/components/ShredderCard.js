import React from 'react';
import { useHistory, useParams } from 'react-router-dom';

function ShredderCard({ shredder, name, nickname, dob, kind, propic, gears, trips, awards }) {
    const { id } = useParams();
    const history = useHistory();

    // const shredderGear = gears.map((gear) => (
    //     <div>{gear.year}</div>
    // ))

  return (
    <div>
        <div>
            <img src={propic}></img>
        </div>
        <div>{name}</div>
        <div onClick={(e) => {
            history.push(`/shredder/${shredder.id}`);                  
            }}>{nickname}
        </div>
    </div>
  )
}

export default ShredderCard;