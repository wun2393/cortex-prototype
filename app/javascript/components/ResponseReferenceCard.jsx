import React from "react";

const ResponseReferenceCard = ({propResponseReference}) => {

  return (
    <div className="react-response-reference-card">
      <p className="react-response-reference-card-title">{propResponseReference.txt_title_details}</p>
      <p className="react-response-reference-card-section-content">"{propResponseReference.txt_section_content}"</p>
    </div>
  )
}

export default ResponseReferenceCard;
