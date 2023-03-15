import React from "react";
import { useHistory } from "react-router-dom";
import AwardCard from "./AwardCard";

function AwardsPage({ awards }) {
  const history = useHistory();

  const awardCards = awards?.map((award) => (
    <AwardCard
      {...awards}
      award={award}
      key={award.id}
      name={award.name}
      description={award.description}
      trip={award.trip}
      shredder={award.shredder}
    />
  ));

  return (
    <div>
      <h1>Awards</h1>
      <div>{awardCards}</div>
    </div>
  );
}

export default AwardsPage;
