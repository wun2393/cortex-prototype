import React from "react";
import ReactDOM from "react-dom/client";
import "../styles/application.css";
import TopNavbar from "../components/TopNavbar";
import IndexApp from "../components/IndexApp";

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
}

document.addEventListener("DOMContentLoaded", mountComponents);
document.addEventListener("turbo:load", mountComponents);
