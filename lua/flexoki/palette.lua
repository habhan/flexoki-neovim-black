local config = require('flexoki.config')

local M = {}

local base_colors = {
	['d-black']     = '#000000',
    	['b-black']     = '#100F0F',

	['w-2']         = '#282726',
	['w-3']         = '#343331',
	['w-4']         = '#403E3C',
	['w-5']         = '#575653',
	['w-7']         = '#878580',
	['w-9']         = '#CECDC3',

    	['silver'] 	= '#C0C0C0',
	['gold']	= '#FFD700',

	['d-red']     	= '#AF3029',
	['b-red']     	= '#D14D41',

	['d-orange']  	= '#BC5215',
	['b-orange']  	= '#DA702C',

	['d-yellow']  	= '#AD8301',
	['b-yellow']  	= '#D0A215',

	['d-green']   	= '#66800B',
	['b-green']   	= '#879A39',

	['d-cyan']    	= '#24837B',
	['b-cyan']    	= '#3AA99F',

	['d-blue']    	= '#205EA6',
	['b-blue']    	= '#4385BE',

	['d-purple']  	= '#5E409D',
	['b-purple']  	= '#8B7EC8',

	['d-magenta'] 	= '#A02F6F',
	['b-magenta'] 	= '#CE5D97',
}

local variants = {
	dark = {
		_name      = 'dark',
		background = 'dark',
		['bg']     = base_colors['d-black'],
		['bg-2']   = base_colors['d-black'],
		['ui']     = base_colors['w-2'],
		['ui-2']   = base_colors['w-3'],
		['ui-3']   = base_colors['w-4'],
		['tx-3']   = base_colors['w-5'],
		['tx-2']   = base_colors['w-7'],
		['tx']     = base_colors['silver'],
		['re']     = base_colors['b-red'],
		['re-2']   = base_colors['d-red'],
		['or']     = base_colors['b-orange'],
		['or-2']   = base_colors['d-orange'],
		['ye']     = base_colors['b-yellow'],
		['ye-2']   = base_colors['gold'],
		['gr']     = base_colors['b-green'],
		['gr-2']   = base_colors['d-green'],
		['cy']     = base_colors['b-cyan'],
		['cy-2']   = base_colors['d-cyan'],
		['bl']     = base_colors['b-blue'],
		['bl-2']   = base_colors['d-blue'],
		['pu']     = base_colors['b-purple'],
		['pu-2']   = base_colors['d-purple'],
		['ma']     = base_colors['b-magenta'],
		['ma-2']   = base_colors['d-magenta'],
	},

	light = {
		_name      = 'dark',
		background = 'dark',
		['bg']     = base_colors['d-black'],
		['bg-2']   = base_colors['d-black'],
		['ui']     = base_colors['w-2'],
		['ui-2']   = base_colors['w-3'],
		['ui-3']   = base_colors['w-4'],
		['tx-3']   = base_colors['w-5'],
		['tx-2']   = base_colors['w-7'],
		['tx']     = base_colors['silver'],
		['re']     = base_colors['b-red'],
		['re-2']   = base_colors['d-red'],
		['or']     = base_colors['b-orange'],
		['or-2']   = base_colors['d-orange'],
		['ye']     = base_colors['b-yellow'],
		['ye-2']   = base_colors['d-yellow'],
		['gr']     = base_colors['b-green'],
		['gr-2']   = base_colors['d-green'],
		['cy']     = base_colors['b-cyan'],
		['cy-2']   = base_colors['d-cyan'],
		['bl']     = base_colors['b-blue'],
		['bl-2']   = base_colors['d-blue'],
		['pu']     = base_colors['b-purple'],
		['pu-2']   = base_colors['d-purple'],
		['ma']     = base_colors['b-magenta'],
		['ma-2']   = base_colors['d-magenta'],
	}
}

M.palette = function ()
	local variant = {}

	if config.options.variant == 'auto' then
		if vim.o.background == 'dark' then
			variant = variants[config.options.dark_variant]
		else
			variant = variants[config.options.light_variant]
		end
	else
		variant = variants[config.options.variant]
		vim.o.background = variant.background
	end

	return variant
end

return M
