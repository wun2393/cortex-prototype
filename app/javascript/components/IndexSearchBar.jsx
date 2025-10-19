import React from "react";
import BurgerIcon from "../assets/burger_icon.png"
import SearchIcon from "../assets/search_icon.png"

const IndexSearchBar = () => {

  return (
    <form className="react-index-search-bar" action="/search" method="GET">
      <img className="react-index-search-bar_burger_icon" src={BurgerIcon} alt="" />
      <input className="react-index-search-bar_input" type="text" name="q" placeholder="Ask about scheme rules, eligibility or guarantees..."/>
      <button className="react-index-search-bar_button" type="submit" style={{ background: "none", border: "none", cursor: "pointer" }}>
        <img src={SearchIcon} alt="" />
      </button>
    </form>
  )

}

export default IndexSearchBar;
