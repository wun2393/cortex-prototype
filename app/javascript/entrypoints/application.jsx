import React from "react";
import ReactDOM from "react-dom/client";
import "../styles/application.css";
import TopNavbar from "../components/TopNavbar";

function mountComponents() {
  console.log("testing...")

  const TopNavbarEl = document.getElementById("top-navbar");
  if (TopNavbarEl) {
    ReactDOM.createRoot(TopNavbarEl).render(<TopNavbar />)
  }
}

document.addEventListener("DOMContentLoaded", mountComponents);
document.addEventListener("turbo:load", mountComponents);
