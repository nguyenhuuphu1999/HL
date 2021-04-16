import React from "react";
import MuiAlert from "@material-ui/lab/Alert";
import Snackbar from "@material-ui/core/Snackbar";

function Alert(props) {
    return <MuiAlert elevation={6} variant="filled" {...props} />;
  }

const Notification = (props) => {
    const handleClose = () =>{
        props.setOpen(false)
    }


  return (
    <div>
      <Snackbar open={props.open} autoHideDuration={2000} onClose={handleClose}>
        <Alert onClose={handleClose} severity="success">
        Thank you for your interest in my products .
        </Alert>
      </Snackbar>
    </div>
  );
};

export default Notification;
