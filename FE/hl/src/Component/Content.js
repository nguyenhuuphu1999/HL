import { Container } from "@material-ui/core";
import axios from "axios";
import React, { useEffect, useState } from "react";
import "./Content.scss";
import Loading from "./Loading";
import Feedback from "./Feedback";

const Content = () => {
  const [data, setData] = useState([]);
  const [index, setIndex] = useState(1);
  const [isFlag,setIsFlag]= useState(false)

  const CallData = (index) => {
    axios
      .get(process.env.REACT_APP_API_KEY + "/product/" + index)
      .then((res) => {
        setData(res.data.data);
        console.log(res.data.error);
        
        if(res.data.error){
            setIsFlag(true)
        }
      })
      .catch((error) => {
        console.log(error);
      });
  };

  useEffect(() => {
    CallData(index);
  }, []);

  const handleNext =  () => {
    setData(null)
     setIndex(index + 1);
     CallData(index + 1);
  
  };
  return (
    <Container>
      <div className="content">
        <div style={{ display: "flex", justifyContent: "center" }}>
          <div className="start-item"></div>
        </div>

        <div>
          <div>
            {typeof data != "undefined" && data != null ? (
              <>
                <h3 className="title">{data.title}</h3>
                {typeof data.chirend != "undefined" && data.chirend != null ? (
                  data.chirend.map((item, key) => (
                    <div key={key} className="content-item">
                      {item.content}
                    </div>
                  ))
                ) : (
                  <Loading />
                )}
              </>
            ) : (
              <h3 style={{textAlign:'center'}}>That's all the jokes for today! Come back another day!</h3>
            )}
          </div>
        </div>

        <div style={{ display: "flex", justifyContent: "center" }}>
          <div className="start-item"></div>
        </div>
        
        <Feedback handleNext={handleNext} flag={isFlag} index={index} />
      </div>
    </Container>
  );
};

export default Content;
