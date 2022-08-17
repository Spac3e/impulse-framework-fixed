--[[
Server Name: vanilla: Half-Life 2 Roleplay | Semi-Serious RP
Server IP:   185.38.148.133:27015
File Path:   gamemodes/impulse/gamemode/libs/sh_owoify.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

-- by vin aged 12 and a half
-- why am i making this

local prefixes = {
	'<3 ',
	'0w0 ',
	'H-hewwo?? ',
	'HIIII! ',
	'Haiiii! ',
	'Huohhhh. ',
	'OWO ',
	'OwO ',
	'UwU '
}

local suffixes = {
	' :3',
	' UwU',
	' (✿ ♡‿♡)',
	' ÙωÙ',
	' ʕʘ‿ʘʔ',
	' ʕ•̫͡•ʔ',
	' >_>',
	' ^_^',
	'..',
	' Huoh.',
	' ^-^',
	' ;_;',
	' ;-;',
	' xD',
	' x3',
	' :D',
	' :P',
	' ;3',
	' XDDD',
	', fwendo',
	' ㅇㅅㅇ',
	' (人◕ω◕)',
	'（＾ｖ＾）',
	' x3',
	' ._.',
	' (　\'◟ \')',
	' (• o •)',
	' (；ω；)',
	' (◠‿◠✿)',
	' >_<'
}

local substitutions = {
	['r'] = 'w',
	['l'] = 'w',
	['R'] = 'W',
	['L'] = 'W',
	['no'] = 'nu',
	['has'] = 'haz',
	['have'] = 'haz',
	['you'] = 'uu',
	['the'] = 'da',
	['The'] = 'Da'
}

function OwOifyText(text, doPrefix, doSuffix)
	if doPrefix then
		text = prefixes[math.random(1, #prefixes)] .. text
	end

	for v,k in pairs(substitutions) do -- probably slow
	    text = string.Replace(text, v, k)
	end

	if doSuffix then
		text = text .. suffixes[math.random(1, #suffixes)]
	end

	return text
end