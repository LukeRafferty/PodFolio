import React from 'react'

const UserTile = props => {
  return(
    <div className="btn yellow darken-2 homepage-button">
      <a className="home-button-text" href={`/users/${props.id}`}>{props.username} </a>
    </div>
  )
}

export default UserTile
