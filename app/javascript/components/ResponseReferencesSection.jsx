import React from "react";
import ResponseReferenceCard from "./ResponseReferenceCard";

const ResponseReferencesSection = ({propStaticResponseReferences}) => {

  const responseReferenceElements = propStaticResponseReferences.map((responseReference) => {
    return (
      <ResponseReferenceCard key={responseReference.id} propResponseReference={responseReference} />
    )
  })

  return (
    <div className="react-response-references-section">
      <p>Reference Documents</p>
      <div>
        {responseReferenceElements}
      </div>
    </div>
  )
};

export default ResponseReferencesSection;
