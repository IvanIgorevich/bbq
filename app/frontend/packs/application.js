import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"

Rails.start()
ActiveStorage.start()

import '../styles/aplication.scss'
const images = require.context('../images', true)

import 'bootstrap/dist/js/bootstrap'
