import React from 'react'
import {
  BrowserRouter as Router,
  Route,
  Link
} from 'react-router-dom'
import UserIndexContainer from './UserIndexContainer'

const App = props => {
  return(
    <Router>
      <div>
        <Route exact path='/home' component={UserIndexContainer} />
      </div>
    </Router>
  )
}



export default App
