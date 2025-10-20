import React from "react";
import BurgerIcon from "../assets/burger_icon.png"
import SearchIcon from "../assets/search_icon.png"

const ResponseSearchBar = () => {
  return (
    <form className="react-response-search-bar" action="/search" method="GET">
      <img className="react-response-search-bar_burger_icon" src={BurgerIcon} alt="" />
      <input className="react-response-search-bar_input" type="text" name="q" placeholder="Do you have any follow up questions?"/>
      <button className="react-response-search-bar_button" type="submit" style={{ background: "none", border: "none", cursor: "pointer" }}>
        <img src={SearchIcon} alt="" />
      </button>
    </form>
  )
}

export default ResponseSearchBar;
