import React from 'react';
import ReactDOM from 'react-dom';
import $ from 'jquery';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = { 
      repos: [],
    }
  }

  render () {
    return (
      <div>
      STUFF WORKS
      </div>
    );
  }
}

ReactDOM.render(<App />, document.getElementById('app'));