import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

const addLoggingToDispatch = store => next => action => {
  console.log(store.getState());
  console.log(action);
  store.dispatch(action);
  console.log(store.getState());
}


document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state
    ? JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);
  store.dispatch = addLoggingToDispatch(store);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});
