return {
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      stiffness = 0.8,
      trailing_stiffness = 0.5,
      damping = 0.9,
      time_interval = 7,
      smear_between_buffers = true,
      smear_between_neighbor_lines = true,
      smear_insert_mode = true,
      cursor_color = "none",
      particles_enabled = true,
      particle_max_num = 50,
      particle_spread = 0.5,
      particle_max_lifetime = 300,
      never_draw_over_target = true,
    },
  },
}
