import React, { Component } from 'react'
import UserTile from '../Components/UserTile'

class UserIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      users: []
    }
  }
  componentDidMount() {
    fetch(`/api/v1/users`)
    .then(response => {
      return response.json();
    })
    .then(body => {
      this.setState({
        users: body.users
      })
    })
  }
  render() {
    let users = this.state.users.map((user, index) => {
      return (
        <UserTile
          key = {index}
          id = {user.id}
          username = {user.username}
        />
      )
    })

    return(
      <div>
        {users}
      </div>
    )
  }
}

export default UserIndexContainer
