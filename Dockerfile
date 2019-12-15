FROM vipulavaamo/genesis:delivery_base_image

ENV PATH ~/bin:$PATH

COPY --chown=asdf:asdf . .

RUN /bin/bash -c "mix local.hex --force"
RUN /bin/bash -c "mix local.rebar --force"
RUN /bin/bash -c "mix do deps.get, deps.compile"
RUN /bin/bash -c "mix do compile"
