# How Nginx works

## There are contexts.

    :::bash
    # The nginx config file

    # main context

    context_1 {
        # stuff
        ...

    }

The contexts
- events
- http
  - server
