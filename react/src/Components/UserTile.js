import React from 'react'

const UserTile = props => {
  return(
    <div className="btn homepage-button">
      <a className="home-button-text" href={`/users/${props.id}`}>{props.username} </a>
    </div>
  )
}

export default UserTile
