# Used by "mix format"
locals_without_parens = [
  # Ecto.Migration
  add: 2,
  add: 3,
  create: 1,
  create: 2,

  # Ecto.Query
  from: 1,
  from: 2,

  # EEx
  function_from_file: 3,
  function_from_file: 4,
  function_from_file: 5,

  # Phoenix.Channel
  broadcast: 3,
  broadcast!: 3,
  intercept: 1,

  # Phoenix.Router
  connect: 3,
  connect: 4,
  delete: 3,
  delete: 4,
  forward: 2,
  forward: 3,
  forward: 4,
  get: 3,
  get: 4,
  head: 3,
  head: 4,
  match: 4,
  match: 5,
  options: 3,
  options: 4,
  patch: 3,
  patch: 4,
  pipe_through: 1,
  pipeline: 2,
  plug: 1,
  plug: 2,
  post: 3,
  post: 4,
  put: 3,
  put: 4,
  resources: 2,
  resources: 3,
  resources: 4,
  trace: 3,
  trace: 4,

  # Phoenix.Controller
  action_fallback: 1,
  render: 1,
  render: 2,
  render: 3,

  # Plug.Builder
  plug: 1,
  plug: 2,

  # Phoenix.Endpoint
  socket: 2,
  socket: 3,

  # Phoenix.Socket
  channel: 2,
  channel: 3,
  connect: 2,
  connect: 3,

  # Phoenix.ChannelTest
  assert_broadcast: 2,
  assert_broadcast: 3,
  assert_push: 2,
  assert_push: 3,
  assert_reply: 2,
  assert_reply: 3,
  assert_reply: 4,
  refute_broadcast: 2,
  refute_broadcast: 3,
  refute_push: 2,
  refute_push: 3,
  refute_reply: 2,
  refute_reply: 3,
  refute_reply: 4,

  # Phoenix.ConnTest
  assert_error_sent: 2,

  # Phoenix.LiveDashboard.Router
  live_dashboard: 1,
  live_dashboard: 2,

  # Phoenix.LiveView.Helpers
  assigns_to_attributes: 2,
  component: 2,
  form: 1,
  inner_block: 2,
  live_component: 1,
  live_component: 3,
  live_file_input: 2,
  live_flash: 2,
  live_img_preview: 2,
  live_patch: 2,
  live_redirect: 2,
  live_render: 3,
  live_title_tag: 2,
  render_block: 2,
  render_slot: 2,
  upload_errors: 1,
  upload_errors: 2,

  # Phoenix.LiveView.Router
  live: 2,
  live: 3,
  live: 4,

  # Ecto.Schema
  belongs_to: 2,
  belongs_to: 3,
  embeds_many: 2,
  embeds_many: 3,
  embeds_many: 4,
  embeds_one: 2,
  embeds_one: 3,
  embeds_one: 4,
  field: 1,
  field: 2,
  field: 3,
  has_many: 2,
  has_many: 3,
  has_one: 2,
  has_one: 3,
  many_to_many: 2,
  many_to_many: 3,
  timestamps: 1
]

wildcard = fn glob -> Path.wildcard(glob, match_dot: true) end
matches = fn globs -> Enum.flat_map(globs, &wildcard.(&1)) end
except = []
inputs = ["*.exs", "{config,lib,test}/**/*.{ex,exs}"]

[
  inputs: matches.(inputs) -- matches.(except),
  line_length: 80,
  locals_without_parens: locals_without_parens,
  export: [locals_without_parens: locals_without_parens]
]
