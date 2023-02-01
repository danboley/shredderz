import React from 'react';
import { useHistory, useParams } from 'react-router-dom';
import ShredderCard from "./ShredderCard";

function ShreddersPage({ shredders }) {
    const history = useHistory();
    const { id } = useParams();


    const shredderCards = shredders?.map((shredder) => (
        <ShredderCard 
            {...shredders}
            shredder = {shredder}
            name = {shredder.name}
            nickname = {shredder.nickname}
            kind = {shredder.kind}
            propic = {shredder.pic}
            dob = {shredder.dob}
            gears = {shredder.gears}
            trips = {shredder.trips}
            awards = {shredder.awards}
            key = {shredder.id}
        />
        ))


  return (
    <div>
        <h1>Shredder Crew</h1>
        <div>
            {shredderCards}
        </div>
    </div>
  )
}

export default ShreddersPage;