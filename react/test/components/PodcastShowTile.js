import React from 'react'
import { mount } from 'enzyme'
import PodcastShowTile from '../../src/Components/PodcastShowTile'



describe('PodcastShowTile', () => {
  let name,
      wrapper;

  beforeEach(() => {
    wrapper = mount(
      <PodcastShowTile
        name="Podcast"
      />
    )
  })

  it('should render an h4 tag', () => {
    expect(wrapper.find('h4').length).toEqual(1);
  })

  it('should have a name prop', () => {
    expect(wrapper.find(PodcastShowTile)).toHaveProp('name')
  })

})
