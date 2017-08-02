import React from 'react'
import {
  BrowserRouter as Router,
  Route,
  Link
} from 'react-router-dom'
import UserShowContainer from './UserShowContainer'


const App = props => {
  return(
    <Router>
      <div>

      <Route exact path='/users/:id' component={UserShowContainer} />

      </div>
    </Router>
  )
}



export default App
