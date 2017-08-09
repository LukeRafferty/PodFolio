import React, { Component } from 'react'
import PodcastShowTile from '../Components/PodcastShowTile'

class UserShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      podcasts: []
    }
  }
  componentDidMount() {
    fetch(`/api/v1/podcasts/1`)
    .then(response => {
      return response.json();
    })

    .then(body => {
      this.setState({
        podcasts: body.podcasts
      })
    })
  }

  render() {
    let podcasts = this.state.podcasts.map((podcast, index) => {
      return (

        <UserTile
          key = {index}
          name = {podcast.name}
        />
      )

    })

    return(
      <div>
        {podcasts}
      </div>
    )
  }
}


export default UserShowContainer
