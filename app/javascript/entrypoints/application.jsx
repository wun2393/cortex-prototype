import React from "react";
import ReactDOM from "react-dom/client";
import "../styles/application.css";
import TopNavbar from "../components/TopNavbar";
import IndexApp from "../components/IndexApp";
import ResponseApp from "../components/ResponseApp";
import ResponseSearchBar from "../components/ResponseSearchBar";

function mountComponents() {
  console.log("testing...")

  const TopNavbarEl = document.getElementById("top-navbar");
  if (TopNavbarEl) {
    ReactDOM.createRoot(TopNavbarEl).render(<TopNavbar />)
  }

  const IndexAppEl = document.getElementById("index-app");
  if (IndexAppEl) {
    ReactDOM.createRoot(IndexAppEl).render(<IndexApp />)
  }

  const ResponseAppEl = document.getElementById("response-app");
  if (ResponseAppEl) {

    // Below works; confirmed using console log and visualised successfully
    const currentDateTime = ResponseAppEl.dataset.currentDatetime
    console.log('Current DateTime from dataset:', currentDateTime)

    // Below works; confirmed using console log and visualised successfully
    const staticQuery = ResponseAppEl.dataset.staticquery
    const parsedStaticQuery = JSON.parse(staticQuery)
    console.log(parsedStaticQuery)

    // Below works; confirmed using console log and visualised successfully
    const staticResponse = ResponseAppEl.dataset.staticresponse
    const parsedStaticResponse = JSON.parse(staticResponse)
    console.log(parsedStaticResponse)

    // Below works; confirmed using console log and visualised successfully
    const staticResponseReferences = ResponseAppEl.dataset.staticresponsereferences
    const parsedStaticResponseReferences = JSON.parse(staticResponseReferences)
    console.log(parsedStaticResponseReferences)

    ReactDOM.createRoot(ResponseAppEl).render(<ResponseApp propCurrentDateTime={currentDateTime} propStaticQuery={parsedStaticQuery} propStaticResponse={parsedStaticResponse} propStaticResponseReferences={parsedStaticResponseReferences} />)
  }

  const ResponseSearchBarEl = document.getElementById("response-search-bar")
  if (ResponseSearchBarEl) {
    ReactDOM.createRoot(ResponseSearchBarEl).render(<ResponseSearchBar />)
  }
}

document.addEventListener("DOMContentLoaded", mountComponents);
document.addEventListener("turbo:load", mountComponents);
