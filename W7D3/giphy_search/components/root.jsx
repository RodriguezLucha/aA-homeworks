import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';

import GiphysSearchContainer from './giphys_search_container';

document.addEventListener('DOMContentLoaded', () => {
  //const store = createStore(reducer);
  const rootEl = document.getElementById('root');
  ReactDOM.render(<h1>It works.</h1>, rootEl);
});