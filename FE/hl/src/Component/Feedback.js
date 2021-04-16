import React, { useState } from "react";
import FormControlLabel from "@material-ui/core/FormControlLabel";
import Checkbox from "@material-ui/core/Checkbox";
import Favorite from "@material-ui/icons/Favorite";
import FavoriteBorder from "@material-ui/icons/FavoriteBorder";
import TextField from "@material-ui/core/TextField";
import { makeStyles } from "@material-ui/core/styles";
import Button from "@material-ui/core/Button";
import NavigateNextOutlinedIcon from "@material-ui/icons/NavigateNextOutlined";
import Grid from "@material-ui/core/Grid";
import axios from "axios";
import Notification from "./Notification";
import { useCookies } from 'react-cookie';

const useStyles = makeStyles((theme) => ({
  root: {
    "& > *": {
      margin: theme.spacing(1),
      width: "25ch",
    },
  },
}));

const Feedback = (props) => {
  const classes = useStyles();
  const [comment, setComment] = useState();
  const [open, setOpen] = useState(false);
  const [iscomment, setIscomment] = useState(false);
  const [cookies, setCookie, removeCookie] = useCookies(['like']);

  const handleChangValue = (e) => {
    setComment(e.target.value);
    console.log(e.target.value.length);
    if (e.target.value.length > 0) {
      setIscomment(true);
    } else {
      setIscomment(false);
    }
  };

  const hanldSunmitComment = (e) => {
    e.preventDefault();
    console.log(comment);
    axios
      .post(process.env.REACT_APP_API_KEY + "/comment", {
        id_user: 1,
        id_product: props.index,
        comment: comment,
      })
      .then((res) => {
        console.log(res.data);
        if (!res.data.error) {
          setOpen(true);
        }
      })
      .catch((error) => {
        console.log(error);
      });
  };

  const hanldLike = (e) =>{
    //   console.log(e.target.checked)
    //   setCookie('like','hihi', { path: '/' })
    //   console.log(props.index)
  }
  return (
    <Grid container>
      <Grid item xs={12} sm={12} md={11} lg={11}>
        {!props.flag ? (
          <div className="feedback">
            <FormControlLabel
              control={
                <Checkbox
                  icon={<FavoriteBorder />}
                  checkedIcon={<Favorite />}
                  name="checkedH"
                  onChange={hanldLike }
                />
              }
              label="Like"
            />
            <div className="comment">
              <form
                className={classes.root}
                noValidate
                autoComplete="off"
                onSubmit={hanldSunmitComment}
                style={{ display: "flex", flexDirection: "column" }}
              >
                <TextField
                  id="outlined-basic"
                  label="Write a comment"
                  variant="outlined"
                  onChange={handleChangValue}
                  name="comment"
                />
                {iscomment ? (
                  <Button variant="contained" color="primary" type="submit">
                    Comment <NavigateNextOutlinedIcon />
                  </Button>
                ) : (
                  <Button variant="contained" color="default">
                    Comment <NavigateNextOutlinedIcon />
                  </Button>
                )}
              </form>
            </div>
          </div>
        ) : (
          <></>
        )}
      </Grid>
      <Grid item xs={12} sm={12} md={1} lg={1}>
        <div className="next">
          {!props.flag ? (
            <Button
              variant="contained"
              color="primary"
              onClick={props.handleNext}
            >
              Next <NavigateNextOutlinedIcon />
            </Button>
          ) : (
            <Button variant="contained">
              Next <NavigateNextOutlinedIcon />
            </Button>
          )}
        </div>
      </Grid>
      <Notification open={open} setOpen={setOpen} />
    </Grid>
  );
};

export default Feedback;
