import React from 'react';
import './Loading.scss'
import CircularProgress from '@material-ui/core/CircularProgress';
const Loading = () => {
    return (
        <div>
            <div className="lodding"><CircularProgress /></div>
        </div>
    );
};

export default Loading;