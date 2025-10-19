import React from "react";
import ResponseDetailsSection from "./ResponseDetailsSection";
import ResponseReferencesSection from "./ResponseReferencesSection"

const ResponseApp = ({propCurrentDateTime, propStaticQuery, propStaticResponse, propStaticResponseReferences}) => {

  return (
    <div className="react-response-app">
      <ResponseDetailsSection propCurrentDateTime={propCurrentDateTime} propStaticQuery={propStaticQuery} propStaticResponse={propStaticResponse} />
      <ResponseReferencesSection propStaticResponseReferences={propStaticResponseReferences} />
    </div>
  )

}

export default ResponseApp;
