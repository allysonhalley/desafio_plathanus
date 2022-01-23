
import React from 'react';
import { BrowserRouter, Switch, Route } from 'react-router-dom';

import { Container } from '@mui/material';

import Converter from './components/Converter/Converter';

const App = () => (
  <BrowserRouter >
    <Container maxWidth="lg" >
      <Switch>
        <Route path="/" exact component={Converter} />
      </Switch>
    </Container>  
  </BrowserRouter>
);
export default App;
