import React, { useEffect, useState } from "react";
import { useHistory, useParams } from "react-router-dom";

function AwardDetailPage() {
  const [award, setAward] = useState("");
  const { id } = useParams();
  const history = useHistory();

  useEffect(() => {
    fetch(`/awards/${id}`)
      .then((res) => res.json())
      .then((data) => setAward(data));
  }, []);

  const { name, description, trip, shredder } = award;

  return (
    <div>
      AwardDetailPage
      <div>{name}</div>
      <div>
        {trip?.name} {trip?.year}
      </div>
      <div>{description}</div>
      <div>Awarded to: {shredder?.name}</div>
    </div>
  );
}

export default AwardDetailPage;
