// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"
import { Tabs, Toggle, Dropdown, Modal } from "tailwindcss-stimulus-components"

import NavbarController from "./navbar_controller"
import SliderController from "./slider_controller"
import PdfViewerController from "./pdf_viewer_controller"

application.register("navbar", NavbarController)
application.register("slider", SliderController)
application.register("pdf-viewer", PdfViewerController)
application.register('tabs', Tabs)
application.register('toggle', Toggle)
application.register('dropdown', Dropdown)
application.register('modal', Modal)