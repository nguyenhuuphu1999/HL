import logo from './logo.svg';
import './App.css';
import {
  BrowserRouter as Router,
  Switch,
  Route
} from "react-router-dom";
import HomePage from './Page/HomePage/HomePage';
function App() {
  return (
   <div>
       <Router>
       <Switch>
          <Route exac path="/" component={HomePage}/>
         </Switch> 
          
       </Router>
   </div>
  );
}

export default App;
