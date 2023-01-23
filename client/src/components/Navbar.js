import React from 'react'
import { NavLink } from 'react-router-dom'

function Navbar() {
  return (
    <div>
        <h1>Navbar - Shredderz</h1>
        <NavLink to="/home">Home</NavLink>
        <NavLink to="/shredderz">Shredderz</NavLink>
        <NavLink to="/trips">Trips</NavLink>
        <NavLink to="/awards">Awards</NavLink>
        <NavLink to="/rules">Rules</NavLink>
    </div>
  )
}

export default Navbar