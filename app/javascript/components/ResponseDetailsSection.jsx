import React from "react";
import ResponseDateTimeContent from "./ResponseDateTimeContent";
import ResponseStaticQueryContent from "./ResponseStaticQueryContent";
import ResponseLongResultsContent from "./ResponseLongResultsContent";

const ResponseDetailsSection = ({propCurrentDateTime, propStaticQuery, propStaticResponse}) => {

  return (
    <div className="react-response-details-section">
      <ResponseDateTimeContent currentDateTime={propCurrentDateTime} />
      <ResponseStaticQueryContent staticQuery={propStaticQuery}/>
      <ResponseLongResultsContent staticResponse={propStaticResponse} />
    </div>
  )

}

export default ResponseDetailsSection;
