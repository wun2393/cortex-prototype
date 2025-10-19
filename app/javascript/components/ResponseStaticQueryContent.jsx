import React from "react";

const ResponseStaticQueryContent = ({staticQuery}) => {
  return (
    <div className="react-response-static-query-content">
      <p>
          {staticQuery.txt_query}
      </p>
    </div>
  )
}

export default ResponseStaticQueryContent;
