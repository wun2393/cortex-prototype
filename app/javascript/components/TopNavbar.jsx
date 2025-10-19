import React from "react";
import BrainIcon from "../assets/brain_emoji.png"

const TopNavbar = () => {

  return (
    <nav className="react-top-navbar">
      <div className="react-top-navbar-title-group">
        <img src={BrainIcon}/>
        <h1>Cortex</h1>
      </div>
      <div className="react-top-navbar-login-group">
        <p>Sign out</p>
      </div>
    </nav>
  )
}

export default TopNavbar;
