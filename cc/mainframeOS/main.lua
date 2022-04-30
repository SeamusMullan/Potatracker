local monitors = { peripheral.find("monitor") }

m = monitors[1]

m.setTextScale(0.5)
peripheral.call(side, "write", "Hello World!")
