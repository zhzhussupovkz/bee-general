#!/usr/bin/env ruby
# encoding: utf-8
require "gosu"
require "singleton"

require_relative "core/level/level"
require_relative "core/player/bee_general"
require_relative "core/player/bee"
require_relative "core/player/army"
require_relative "core/game_window"

GameWindow.instance.show
