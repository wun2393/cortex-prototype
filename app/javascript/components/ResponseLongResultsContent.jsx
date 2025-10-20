import React from "react";

const ResponseLongResultsContent = ({staticResponse}) => {
  return (
    <div className="react-response-static-response-content">
      <p>Scheme: {staticResponse.txt_scheme}</p>
      <p>Relevant Document: {staticResponse.txt_relevant_doc}</p>
      <p>Key Points:</p>
      <ul>
        <li>{staticResponse.txt_bp_1}</li>
        <li>{staticResponse.txt_bp_2}</li>
        <li>{staticResponse.txt_bp_3}</li>
        <li>{staticResponse.txt_bp_4}</li>
      </ul>
    </div>
  )
}

export default ResponseLongResultsContent;
