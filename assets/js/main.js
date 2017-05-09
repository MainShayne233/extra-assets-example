import '../css/app.scss'
import React, { Component } from 'react'
import { render } from 'react-dom'
import App from './ui/app'

function requireAll(r) { r.keys().forEach(r);  }
requireAll(require.context('../../extra_assets/', true, /[\.js$|\.css$]/));

const root = document.getElementById('root')

render(<App />, root)
