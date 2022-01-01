
local generate = function ()

	local colors = {}
	if vim.g.vsdark_style == "dark" then
		colors = {
			vsNone = 'NONE',
			vsFront = '#DCDCDC',
			vsBack = '#1E1E1E',

			vsTabCurrent = '#1E1E1E',
			vsTabOther = '#2D2D2D',
			vsTabOutside = '#252526',

			vsLeftDark = '#252526',
			vsLeftMid = '#373737',
			vsLeftLight = '#3F3F46',

			vsPopupFront = '#BBBBBB',
			vsPopupBack = '#2D2D30',
			vsPopupHighlightBlue = '#073655',
			vsPopupHighlightGray = '#3D3D40',

			vsSplitLight = '#898989',
			vsSplitDark = '#444444',
			vsSplitThumb = '#424242',

			vsCursorDarkDark = '#222222',
			vsCursorDark = '#51504F',
			vsCursorLight = '#AEAFAD',
			vsSelection = '#264F78',
			vsLineNumber = '#5A5A5A',

			vsDiffRedDark = '#4B1818',
			vsDiffRedLight = '#6F1313',
			vsDiffRedLightLight = '#FB0101',
			vsDiffGreenDark = '#373D29',
			vsDiffGreenLight = '#4B5632',
			vsSearchCurrent = '#4B5632',
			vsSearch = '#264F78',

			-- Syntax colors
			vsGray = '#9B9B9B',
			vsLightGray = '#C8C8C8',
      vsBluePurple = '#BEB7FF',
			vsViolet = '#646695',
			vsBlue = '#569CD6',
			vsDarkBlue = '#223E55',
			vsLightBlue = '#9CDCFE',
			vsGreen = '#57A64A',
			vsBlueGreen = '#4Ec9B0',
			vsLightGreen = '#B8D7A3',
			vsRed = '#F44747',
			vsOrange = '#D69D85',
			vsLightRed = '#D16969',
			vsYellowOrange = '#D7BA7D',
			vsYellow = '#DCDCAA',
			vsPink = '#D082C4',
			vsUiBlue = '#0451A5',
		}
	else
		colors = {
			vsNone = 'NONE',
			vsFront = '#343434',
			vsBack = '#FFFFFF',

			vsTabCurrent = '#FFFFFF',
			vsTabOther = '#CECECE',
			vsTabOutside = '#E8E8E8',

			vsLeftDark = '#F3F3F3',
			vsLeftMid = '#E5E5E5',
			vsLeftLight = '#F3F3F3',

			vsPopupFront = '#000000',
			vsPopupBack = '#F3F3F3',
			vsPopupHighlightBlue = '#D6EBFF',
			vsPopupHighlightGray = '#767676',

			vsSplitLight = '#EEEEEE',
			vsSplitDark = '#DDDDDD',
			vsSplitThumb = '#DFDFDF',

			vsCursorDarkDark = '#E5EBF1',
			vsCursorDark = '#6F6F6F',
			vsCursorLight = '#767676',
			vsSelection = '#ADD6FF',
			vsLineNumber = '#098658',

			vsDiffRedDark = '#800000',
			vsDiffRedLight = '#CD3131',
			vsDiffRedLightLight = '#FF0000',
			vsDiffGreenDark = '#168256',
			vsDiffGreenLight = '#008000',
			vsSearchCurrent = '#A8AC94',
			vsSearch = '#F8C9AB',

			-- Syntax colors
			vsGray = '#000000',
			vsViolet = '#001080',
			vsBlue = '#0000FF',
			vsDarkBlue = '#007ACC',
			vsLightBlue = '#0451A5',
			vsGreen = '#008000',
			vsBlueGreen = '#16825D',
			vsLightGreen = '#098658',
			vsRed = '#FF0000',
			vsOrange = '#C72E0F',
			vsLightRed = '#A31515',
			vsYellowOrange = '#811F3F',
			vsYellow = '#795E26',
			vsPink = '#AF00DB',
		}
	end

	return colors
end

return {generate = generate}
