local colors = require("vsdark.colors")
local theme = {}

theme.load_syntax = function()
	local c = colors.generate()
	local syntax = {
		-- GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL
		Normal = { c.vsFront, c.vsBack, 'none', nil},
		ColorColumn = { nil, c.vsCursorDarkDark, 'none', nil},
		Cursor = { c.vsCursorDark, c.vsCursorLight, 'none', nil},
		CursorLine = { nil, c.vsCursorDarkDark, 'none', nil},
		CursorColumn = { nil, c.vsCursorDarkDark, 'none', nil},
		Directory = { c.vsBlue, c.vsBack, 'none', nil},
		DiffAdd = { nil, c.vsDiffGreenLight, 'none', nil},
		DiffChange = { nil, c.vsDiffRedDark, 'none', nil},
		DiffDelete = { nil, c.vsDiffRedLight, 'none', nil},
		DiffText = { nil, c.vsDiffRedLight, 'none', nil},
		EndOfBuffer = { c.vsBack, nil, 'none', nil},
		ErrorMsg = { c.vsRed, c.vsBack, 'none', nil},
		VertSplit = { c.vsSplitDark, c.vsBack, 'none', nil},
		Folded = { c.vsLeftLight, c.vsLeftDark, 'underline', nil},
		FoldColumn = { c.vsLineNumber, c.vsBack, 'none', nil},
		SignColumn = { nil, c.vsBack, 'none', nil},
		IncSearch = { c.vsNone, c.vsSearchCurrent, 'none', nil},
		LineNr = { c.vsLineNumber, c.vsBack, 'none', nil},
		CursorLineNr = { c.vsPopupFront, c.vsBack, 'none', nil},
		MatchParen = { c.vsNone, c.vsCursorDark, 'none', nil},
		ModeMsg = { c.vsFront, c.vsLeftDark, 'none', nil},
		MoreMsg = { c.vsFront, c.vsLeftDark, 'none', nil},
		NonText = { c.vsLineNumber, c.vsBack, 'none', nil},
		Pmenu = { c.vsPopupFront, c.vsPopupBack, 'none', nil},
		PmenuSel = { c.vsPopupFront, c.vsPopupHighlightBlue, 'none', nil},
		PmenuSbar = { nil, c.vsPopupHighlightGray, 'none', nil},
		PmenuThumb = { nil, c.vsPopupFront, 'none', nil},
		Question = { c.vsBlue, c.vsBack, 'none', nil},
		Search = { c.vsNone, c.vsSearch, 'none', nil},
		SpecialKey = { c.vsBlue, c.vsNone, 'none', nil},
		StatusLine = { c.vsFront, c.vsLeftMid, 'none', nil},
		StatusLineNC = { c.vsFront, c.vsLeftDark, 'none', nil},
		TabLine = { c.vsFront, c.vsTabOther, 'none', nil},
		TabLineFill = { c.vsFront, c.vsTabOutside, 'none', nil},
		TabLineSel = { c.vsFront, c.vsTabCurrent, 'none', nil},
		Title = { c.vsNone, c.vsNone, 'bold', nil},
		Visual = { c.vsNone, c.vsSelection, 'none', nil},
		VisualNOS = { c.vsNone, c.vsSelection, 'none', nil},
		WarningMsg = { c.vsOrange, c.vsBack, 'none', nil},
		WildMenu = { c.vsNone, c.vsSelection, 'none', nil},
		Comment =  { c.vsGreen, nil, 'none', nil},
		Constant = { c.vsBlue, nil, 'none', nil},
		String = { c.vsOrange, nil, 'none', nil},
		Character = { c.vsOrange, nil, 'none', nil},
		Number = { c.vsLightGreen, nil, 'none', nil},
		Boolean = { c.vsBlue, nil, 'none', nil},
		Float = { c.vsLightGreen, nil, 'none', nil},
		Identifier = { c.vsLightBlue, nil, 'none', nil},
		Function = { c.vsYellow, nil, 'none', nil},
		Statement = { c.vsPink, nil, 'none', nil},
		Conditional = { c.vsPink, nil, 'none', nil},
		Repeat = { c.vsPink, nil, 'none', nil},
		Label = { c.vsPink, nil, 'none', nil},
		Operator = { c.vsBlue, nil, 'none', nil},
		Keyword = { c.vsPink, nil, 'none', nil},
		Exception = { c.vsPink, nil, 'none', nil},
		PreProc = { c.vsGray, nil, 'none', nil},
		Include = { c.vsGray, nil, 'none', nil},
		Define = { c.vsPink, nil, 'none', nil},
		Macro = { c.vsGray, nil, 'none', nil},
		Type = { c.vsBlue, nil, 'none', nil},
		StorageClass = { c.vsBlue, nil, 'none', nil},
		Structure = { c.vsBlue, nil, 'none', nil},
		Typedef = { c.vsBlueGreen, nil, 'none', nil},
		Special = { c.vsYellowOrange, nil, 'none', nil},
		SpecialChar = { c.vsYellowOrange, nil, 'none', nil},
		Tag = { c.vsFront, nil, 'none', nil},
		Delimiter = { c.vsFront, nil, 'none', nil},
		SpecialComment = { c.vsGreen, nil, 'none', nil},
		Debug = { c.vsFront, nil, 'none', nil},
		Underlined = { c.vsNone, nil, 'underline', nil},
		Conceal =  {c.vsFront, c.vsBack,  'none', nil},
		Ignore = { c.vsFront, nil, 'none', nil},
		Error = { c.vsRed, c.vsBack, 'undercurl', c.vsRed},
		Todo = { c.vsBack, c.vsPink, 'bold', nil},
		SpellBad = { c.vsRed, c.vsBack, 'undercurl', c.vsRed},
		SpellCap = { c.vsRed, c.vsBack, 'undercurl', c.vsRed},
		SpellRare = { c.vsRed, c.vsBack, 'undercurl', c.vsRed},
		SpellLocal = { c.vsRed, c.vsBack, 'undercurl', c.vsRed},

    -- vim-lsp-cxx-highlighting
    cxxFunction           = {c.vsYellow, nil, 'none', nil},
    cxxParameter          = {c.vsGray, nil, 'none', nil},
    cxxFileVariableStatic = {c.vsFront, nil, 'none', nil},
    cxxStruct             = {c.vsBlueGreen, nil, 'none', nil},
    cxxStructField        = {c.vsFront, nil, 'none', nil},
    cxxTypeAlias          = {c.vsBlueGreen, nil, 'none', nil},
    cxxEnum               = {c.vsBluePurple, nil, 'none', nil},
    cxxEnumMember         = {c.vsLightGreen, nil, 'none', nil},
    cxxVariable           = {c.vsLightBlue, nil, 'none', nil},
    cxxMacro              = {c.vsBluePurple, nil, 'none', nil},


		-- Treesitter
		TSError = { c.vsRed, nil, 'none', nil},
		TSPunctDelimiter = { c.vsFront, nil, 'none', nil},
		TSPunctBracket = { c.vsFront, nil, 'none', nil},
		TSPunctSpecial = { c.vsFront, nil, 'none', nil},
		TSConstant = { c.vsYellow, nil, 'none', nil},
		TSConstBuiltin = { c.vsBlue, nil, 'none', nil},
		TSConstMacro = { c.vsBlueGreen, nil, 'none', nil},
		TSStringRegex = { c.vsOrange, nil, 'none', nil},
		TSString = { c.vsOrange, nil, 'none', nil},
		TSStringEscape = { c.vsYellowOrange, nil, 'none', nil},
		TSCharacter = { c.vsOrange, nil, 'none', nil},
		TSNumber = { c.vsLightGreen, nil, 'none', nil},
		TSBoolean = { c.vsBlue, nil, 'none', nil},
		TSFloat = { c.vsLightGreen, nil, 'none', nil},
		TSAnnotation = { c.vsYellow, nil, 'none', nil},
		TSAttribute = { c.vsBlueGreen, nil, 'none', nil},
		TSNamespace = { c.vsBlueGreen, nil, 'none', nil},
		TSFuncBuiltin = { c.vsYellow, nil, 'none', nil},
		TSFunction = { c.vsYellow, nil, 'none', nil},
		TSFuncMacro = { c.vsYellow, nil, 'none', nil},
		TSParameter = { c.vsLightBlue, nil, 'none', nil},
		TSParameterReference = { c.vsLightBlue, nil, 'none', nil},
		TSMethod = { c.vsYellow, nil, 'none', nil},
		TSField = { c.vsLightBlue, nil, 'none', nil},
		TSProperty = { c.vsLightBlue, nil, 'none', nil},
		TSConstructor = { c.vsBlueGreen, nil, 'none', nil},
		TSConditional = { c.vsPink, nil, 'none', nil},
		TSRepeat = { c.vsPink, nil, 'none', nil},
		TSLabel = { c.vsLightBlue, nil, 'none', nil},
		TSKeyword = { c.vsBlue, nil, 'none', nil},
		TSKeywordFunction = { c.vsPink, nil, 'none', nil},
		TSKeywordOperator = { c.vsBlue, nil, 'none', nil},
		TSOperator = { c.vsFront, nil, 'none', nil},
		TSException = { c.vsPink, nil, 'none', nil},
		TSType = { c.vsBlueGreen, nil, 'none', nil},
		TSTypeBuiltin = { c.vsBlue, nil, 'none', nil},
		TSStructure = { c.vsLightBlue, nil, 'none', nil},
		TSInclude = { c.vsPink, nil, 'none', nil},
		TSVariable = { c.vsLightBlue, nil, 'none', nil},
		TSVariableBuiltin = { c.vsLightBlue, nil, 'none', nil},
		TSText = { c.vsYellowOrange, nil, 'none', nil},
		TSStrong = { c.vsYellowOrange, nil, 'none', nil},
		TSEmphasis = { c.vsYellowOrange, nil, 'none', nil},
		TSUnderline = { c.vsYellowOrange, nil, 'none', nil},
		TSTitle = { c.vsYellowOrange, nil, 'none', nil},
		TSLiteral = { c.vsYellowOrange, nil, 'none', nil},
		TSURI = { c.vsYellowOrange, nil, 'none', nil},
		TSTag = { c.vsBlue, nil, 'none', nil},
		TSTagDelimiter = { c.vsGray, nil, 'none', nil},

		-- Markdown
		markdownBold = { c.vsBlue, nil, 'bold', nil},
		markdownCode = { c.vsOrange, nil, 'none', nil},
		markdownRule = { c.vsBlue, nil, 'bold', nil},
		markdownCodeDelimiter = { c.vsOrange, nil, 'none', nil},
		markdownHeadingDelimiter = { c.vsBlue, nil, 'none', nil},
		markdownFootnote = { c.vsOrange, nil, 'none', nil},
		markdownFootnoteDefinition = { c.vsOrange, nil, 'none', nil},
		markdownUrl = { c.vsLightBlue, nil, 'underline', nil},
		markdownLinkText = { c.vsOrange, nil, 'none', nil},
		markdownEscape = { c.vsYellowOrange, nil, 'none', nil},

		-- JSON
		jsonKeyword = { c.vsLightBlue, nil, 'none', nil},
		jsonEscape = { c.vsYellowOrange, nil, 'none', nil},
		jsonNull = { c.vsBlue, nil, 'none', nil},
		jsonBoolean = { c.vsBlue, nil, 'none', nil},

		-- HTML
		htmlTag = { c.vsGray, nil, 'none', nil},
		htmlEndTag = { c.vsGray, nil, 'none', nil},
		htmlTagName = { c.vsBlue, nil, 'none', nil},
		htmlSpecialTagName = { c.vsBlue, nil, 'none', nil},
		htmlArg = { c.vsLightBlue, nil, 'none', nil},

		-- PHP
		phpStaticClasses = { c.vsBlueGreen, nil, 'none', nil},
		phpMethod = { c.vsYellow, nil, 'none', nil},
		phpClass = { c.vsBlueGreen, nil, 'none', nil},
		phpFunction = { c.vsYellow, nil, 'none', nil},
		phpInclude = { c.vsBlue, nil, 'none', nil},
		phpUseClass = { c.vsBlueGreen, nil, 'none', nil},
		phpRegion = { c.vsBlueGreen, nil, 'none', nil},
		phpMethodsVar = { c.vsLightBlue, nil, 'none', nil},

		-- CSS
		cssBraces = { c.vsFront, nil, 'none', nil},
		cssInclude = { c.vsPink, nil, 'none', nil},
		cssTagName = { c.vsYellowOrange, nil, 'none', nil},
		cssClassName = { c.vsYellowOrange, nil, 'none', nil},
		cssPseudoClass = { c.vsYellowOrange, nil, 'none', nil},
		cssPseudoClassId = { c.vsYellowOrange, nil, 'none', nil},
		cssPseudoClassLang = { c.vsYellowOrange, nil, 'none', nil},
		cssIdentifier = { c.vsYellowOrange, nil, 'none', nil},
		cssProp = { c.vsLightBlue, nil, 'none', nil},
		cssDefinition = { c.vsLightBlue, nil, 'none', nil},
		cssAttr = { c.vsOrange, nil, 'none', nil},
		cssAttrRegion = { c.vsOrange, nil, 'none', nil},
		cssColor = { c.vsOrange, nil, 'none', nil},
		cssFunction = { c.vsOrange, nil, 'none', nil},
		cssFunctionName = { c.vsOrange, nil, 'none', nil},
		cssVendor = { c.vsOrange, nil, 'none', nil},
		cssValueNumber = { c.vsOrange, nil, 'none', nil},
		cssValueLength = { c.vsOrange, nil, 'none', nil},
		cssUnitDecorators = { c.vsOrange, nil, 'none', nil},
		cssStyle = { c.vsLightBlue, nil, 'none', nil},
		cssImportant = { c.vsBlue, nil, 'none', nil},

		-- JavaScript
		jsVariableDef = { c.vsLightBlue, nil, 'none', nil},
		jsFuncArgs = { c.vsLightBlue, nil, 'none', nil},
		jsFuncBlock = { c.vsLightBlue, nil, 'none', nil},
		jsRegexpString = { c.vsLightRed, nil, 'none', nil},
		jsThis = { c.vsBlue, nil, 'none', nil},
		jsOperatorKeyword = { c.vsBlue, nil, 'none', nil},
		jsDestructuringBlock = { c.vsLightBlue, nil, 'none', nil},
		jsObjectKey = { c.vsLightBlue, nil, 'none', nil},
		jsGlobalObjects = { c.vsBlueGreen, nil, 'none', nil},
		jsModuleKeyword = { c.vsLightBlue, nil, 'none', nil},
		jsClassDefinition = { c.vsBlueGreen, nil, 'none', nil},
		jsClassKeyword = { c.vsBlue, nil, 'none', nil},
		jsExtendsKeyword = { c.vsBlue, nil, 'none', nil},
		jsExportDefault = { c.vsPink, nil, 'none', nil},
		jsFuncCall = { c.vsYellow, nil, 'none', nil},
		jsObjectValue = { c.vsLightBlue, nil, 'none', nil},
		jsParen = { c.vsLightBlue, nil, 'none', nil},
		jsObjectProp = { c.vsLightBlue, nil, 'none', nil},
		jsIfElseBlock = { c.vsLightBlue, nil, 'none', nil},
		jsParenIfElse = { c.vsLightBlue, nil, 'none', nil},
		jsSpreadOperator = { c.vsLightBlue, nil, 'none', nil},
		jsSpreadExpression = { c.vsLightBlue, nil, 'none', nil},

		-- Typescript
		typescriptLabel = { c.vsLightBlue, nil, 'none', nil},
		typescriptExceptions = { c.vsLightBlue, nil, 'none', nil},
		typescriptBraces = { c.vsFront, nil, 'none', nil},
		typescriptEndColons = { c.vsLightBlue, nil, 'none', nil},
		typescriptParens = { c.vsFront, nil, 'none', nil},
		typescriptDocTags = { c.vsBlue, nil, 'none', nil},
		typescriptDocComment = { c.vsBlueGreen, nil, 'none', nil},
		typescriptLogicSymbols = { c.vsLightBlue, nil, 'none', nil},
		typescriptImport = { c.vsPink, nil, 'none', nil},
		typescriptBOM = { c.vsLightBlue, nil, 'none', nil},
		typescriptVariableDeclaration = { c.vsLightBlue, nil, 'none', nil},
		typescriptVariable = { c.vsBlue, nil, 'none', nil},
		typescriptExport = { c.vsPink, nil, 'none', nil},
		typescriptAliasDeclaration = { c.vsBlueGreen, nil, 'none', nil},
		typescriptAliasKeyword = { c.vsBlue, nil, 'none', nil},
		typescriptClassName = { c.vsBlueGreen, nil, 'none', nil},
		typescriptAccessibilityModifier = { c.vsBlue, nil, 'none', nil},
		typescriptOperator = { c.vsBlue, nil, 'none', nil},
		typescriptArrowFunc = { c.vsBlue, nil, 'none', nil},
		typescriptMethodAccessor = { c.vsBlue, nil, 'none', nil},
		typescriptMember = { c.vsYellow, nil, 'none', nil},
		typescriptTypeReference = { c.vsBlueGreen, nil, 'none', nil},
		typescriptTemplateSB = { c.vsYellowOrange, nil, 'none', nil},
		typescriptArrowFuncArg = { c.vsLightBlue, nil, 'none', nil},
		typescriptParamImpl = { c.vsLightBlue, nil, 'none', nil},
		typescriptFuncComma = { c.vsLightBlue, nil, 'none', nil},
		typescriptCastKeyword = { c.vsLightBlue, nil, 'none', nil},
		typescriptCall = { c.vsBlue, nil, 'none', nil},
		typescriptCase = { c.vsLightBlue, nil, 'none', nil},
		typescriptReserved = { c.vsPink, nil, 'none', nil},
		typescriptDefault = { c.vsLightBlue, nil, 'none', nil},
		typescriptDecorator = { c.vsYellow, nil, 'none', nil},
		typescriptPredefinedType = { c.vsBlueGreen, nil, 'none', nil},
		typescriptClassHeritage = { c.vsBlueGreen, nil, 'none', nil},
		typescriptClassExtends = { c.vsBlue, nil, 'none', nil},
		typescriptClassKeyword = { c.vsBlue, nil, 'none', nil},
		typescriptBlock = { c.vsLightBlue, nil, 'none', nil},
		typescriptDOMDocProp = { c.vsLightBlue, nil, 'none', nil},
		typescriptTemplateSubstitution = { c.vsLightBlue, nil, 'none', nil},
		typescriptClassBlock = { c.vsLightBlue, nil, 'none', nil},
		typescriptFuncCallArg = { c.vsLightBlue, nil, 'none', nil},
		typescriptIndexExpr = { c.vsLightBlue, nil, 'none', nil},
		typescriptConditionalParen = { c.vsLightBlue, nil, 'none', nil},
		typescriptArray = { c.vsYellow, nil, 'none', nil},
		typescriptES6SetProp = { c.vsLightBlue, nil, 'none', nil},
		typescriptObjectLiteral = { c.vsLightBlue, nil, 'none', nil},
		typescriptTypeParameter = { c.vsBlueGreen, nil, 'none', nil},
		typescriptEnumKeyword = { c.vsBlue, nil, 'none', nil},
		typescriptEnum = { c.vsBlueGreen, nil, 'none', nil},
		typescriptLoopParen = { c.vsLightBlue, nil, 'none', nil},
		typescriptParenExp = { c.vsLightBlue, nil, 'none', nil},
		typescriptModule = { c.vsLightBlue, nil, 'none', nil},
		typescriptAmbientDeclaration = { c.vsBlue, nil, 'none', nil},
		typescriptFuncTypeArrow = { c.vsBlue, nil, 'none', nil},
		typescriptInterfaceHeritage = { c.vsBlueGreen, nil, 'none', nil},
		typescriptInterfaceName = { c.vsBlueGreen, nil, 'none', nil},
		typescriptInterfaceKeyword = { c.vsBlue, nil, 'none', nil},
		typescriptInterfaceExtends = { c.vsBlue, nil, 'none', nil},
		typescriptGlobal = { c.vsBlueGreen, nil, 'none', nil},
		typescriptAsyncFuncKeyword = { c.vsBlue, nil, 'none', nil},
		typescriptFuncKeyword = { c.vsBlue, nil, 'none', nil},
		typescriptGlobalMethod = { c.vsYellow, nil, 'none', nil},
		typescriptPromiseMethod = { c.vsYellow, nil, 'none', nil},

		-- XML
		xmlTag = { c.vsBlueGreen, nil, 'none', nil},
		xmlTagName = { c.vsBlueGreen, nil, 'none', nil},
		xmlEndTag = { c.vsBlueGreen, nil, 'none', nil},

		-- Ruby
		rubyClassNameTag = { c.vsBlueGreen, nil, 'none', nil},
		rubyClassName = { c.vsBlueGreen, nil, 'none', nil},
		rubyModuleName = { c.vsBlueGreen, nil, 'none', nil},
		rubyConstant = { c.vsBlueGreen, nil, 'none', nil},

		-- Golang
		goPackage = { c.vsBlue, nil, 'none', nil},
		goImport = { c.vsBlue, nil, 'none', nil},
		goVar = { c.vsBlue, nil, 'none', nil},
		goConst = { c.vsBlue, nil, 'none', nil},
		goStatement = { c.vsPink, nil, 'none', nil},
		goType = { c.vsBlueGreen, nil, 'none', nil},
		goSignedInts = { c.vsBlueGreen, nil, 'none', nil},
		goUnsignedInts = { c.vsBlueGreen, nil, 'none', nil},
		goFloats = { c.vsBlueGreen, nil, 'none', nil},
		goComplexes = { c.vsBlueGreen, nil, 'none', nil},
		goBuiltins = { c.vsYellow, nil, 'none', nil},
		goBoolean = { c.vsBlue, nil, 'none', nil},
		goPredefinedIdentifiers = { c.vsBlue, nil, 'none', nil},
		goTodo = { c.vsGreen, nil, 'none', nil},
		goDeclaration = { c.vsBlue, nil, 'none', nil},
		goDeclType = { c.vsBlue, nil, 'none', nil},
		goTypeDecl = { c.vsBlue, nil, 'none', nil},
		goTypeName = { c.vsBlueGreen, nil, 'none', nil},
		goVarAssign = { c.vsLightBlue, nil, 'none', nil},
		goVarDefs = { c.vsLightBlue, nil, 'none', nil},
		goReceiver = { c.vsFront, nil, 'none', nil},
		goReceiverType = { c.vsFront, nil, 'none', nil},
		goFunctionCall = { c.vsYellow, nil, 'none', nil},
		goMethodCall = { c.vsYellow, nil, 'none', nil},
		goSingleDecl = { c.vsLightBlue, nil, 'none', nil},
		-- Python
		pythonStatement = { c.vsBlue, nil, 'none', nil},
		pythonOperator = { c.vsBlue, nil, 'none', nil},
		pythonException = { c.vsPink, nil, 'none', nil},
		pythonExClass = { c.vsBlueGreen, nil, 'none', nil},
		pythonBuiltinObj = { c.vsLightBlue, nil, 'none', nil},
		pythonBuiltinType = { c.vsBlueGreen, nil, 'none', nil},
		pythonBoolean = { c.vsBlue, nil, 'none', nil},
		pythonNone = { c.vsBlue, nil, 'none', nil},
		pythonTodo = { c.vsBlue, nil, 'none', nil},
		pythonClassVar = { c.vsBlue, nil, 'none', nil},
		pythonClassDef = { c.vsBlueGreen, nil, 'none', nil},
		-- TeX
		texStatement = { c.vsBlue, nil, 'none', nil},
		texBeginEnd = { c.vsYellow, nil, 'none', nil},
		texBeginEndName = { c.vsLightBlue, nil, 'none', nil},
		texOption = { c.vsLightBlue, nil, 'none', nil},
		texBeginEndModifier = { c.vsLightBlue, nil, 'none', nil},
		texDocType = { c.vsPink, nil, 'none', nil},
		texDocTypeArgs = { c.vsLightBlue, nil, 'none', nil},

		-- Git
		gitcommitHeader = { c.vsGray, nil, 'none', nil},
		gitcommitOnBranch = { c.vsGray, nil, 'none', nil},
		gitcommitBranch = { c.vsPink, nil, 'none', nil},
		gitcommitComment = { c.vsGray, nil, 'none', nil},
		gitcommitSelectedType = { c.vsGreen, nil, 'none', nil},
		gitcommitSelectedFile = { c.vsGreen, nil, 'none', nil},
		gitcommitDiscardedType = { c.vsRed, nil, 'none', nil},
		gitcommitDiscardedFile = { c.vsRed, nil, 'none', nil},
		gitcommitOverflow = { c.vsRed, nil, 'none', nil},
		gitcommitSummary = { c.vsPink, nil, 'none', nil},
		gitcommitBlank = { c.vsPink, nil, 'none', nil},

		-- Lua
		luaFuncCall = { c.vsYellow, nil, 'none', nil},
		luaFuncArgName = { c.vsLightBlue, nil, 'none', nil},
		luaFuncKeyword = { c.vsPink, nil, 'none', nil},
		luaLocal = { c.vsPink, nil, 'none', nil},
		luaBuiltIn = { c.vsBlue, nil, 'none', nil},

		-- SH
		shDeref = { c.vsLightBlue, nil, 'none', nil},
		shVariable = { c.vsLightBlue, nil, 'none', nil},

		-- SQL
		sqlKeyword = { c.vsPink, nil, 'none', nil},
		sqlFunction = { c.vsYellowOrange, nil, 'none', nil},
		sqlOperator = { c.vsPink, nil, 'none', nil},

		-- YAML
		yamlKey = { c.vsBlue, nil, 'none', nil},
		yamlConstant = { c.vsBlue, nil, 'none', nil},

		-- Gitgutter
		GitGutterAdd = { c.vsGreen, nil, 'none', nil},
		GitGutterChange = { c.vsYellow, nil, 'none', nil},
		GitGutterDelete = { c.vsRed, nil, 'none', nil},

		-- Git Signs
		GitSignsAdd = { c.vsGreen, nil, 'none', nil},
		GitSignsChange = { c.vsYellow, nil, 'none', nil},
		GitSignsDelete = { c.vsRed, nil, 'none', nil},
		GitSignsAddLn = { c.vsBack, c.vsGreen, 'none', nil},
		GitSignsChangeLn = { c.vsBack, c.vsYellow, 'none', nil},
		GitSignsDeleteLn = { c.vsBack, c.vsRed, 'none', nil},

		-- NvimTree
		NvimTreeRootFolder = { c.vsFront, nil, 'bold', nil},
		NvimTreeGitDirty = { c.vsYellow, nil, 'none', nil},
		NvimTreeGitNew = { c.vsGreen, nil, 'none', nil},
		NvimTreeImageFile = { c.vsViolet, nil, 'none', nil},
		NvimTreeEmptyFolderName = { c.vsGray, nil, 'none', nil},
		NvimTreeFolderName = { c.vsFront, nil, 'none', nil},
		NvimTreeSpecialFile = { c.vsPink, nil, 'underline', nil},
		NvimTreeNormal  = { c.vsFront, c.vsLeftDark, 'none', nil},
		NvimTreeCursorLine = { nil, c.vsLeftMid, 'none', nil},
		NvimTreeVertSplit = { c.vsBack, c.vsBack, 'none', nil},
		NvimTreeEndOfBuffer = { c.vsLeftDark, nil, 'none', nil},
		NvimTreeOpenedFolderName = { nil, c.vsLeftDark, 'none', nil},

		-- Bufferline
		BufferLineIndicatorSelected = { c.vsLeftDark , nil, 'none', nil},
		BufferLineFill = { nil , c.vsLeftDark, 'none', nil},

		-- IndentBlankLine
		IndentBlanklineContextChar = { c.vsRed, nil, "nocombine", nil},

		-- LSP
		LspDiagnosticsDefaultError = { c.vsRed, nil, 'none', nil},
		LspDiagnosticsDefaultWarning = { c.vsYellow, nil, 'none', nil},
		LspDiagnosticsDefaultInformation = { c.vsBlue, nil, 'none', nil},
		LspDiagnosticsDefaultHint = { c.vsBlue, nil, 'none', nil},
		LspDiagnosticsUnderlineError = { c.vsRed, nil, 'undercurl', nil},
		LspDiagnosticsUnderlineWarning = { c.vsYellow, nil, 'undercurl', nil},
		LspDiagnosticsUnderlineInformation = { c.vsBlue, nil, 'undercurl', nil},
		LspDiagnosticsUnderlineHint = { c.vsBlue, nil, 'undercurl', nil},
		LspReferenceText = { c.vsYellowOrange, nil, 'none', nil},
		LspReferenceRead = { c.vsYellowOrange, nil, 'none', nil},
		LspReferenceWrite = { c.vsYellowOrange, nil, 'none', nil},
	}

	if vim.g.vsdark_style == "dark" then
		syntax.NvimTreeFolderIcon = { c.vsBlue, nil, 'none', nil}
		syntax.NvimTreeIndentMarker = { c.vsLineNumber, nil, 'none', nil}
		syntax.IndentBlanklineChar = { c.vsLineNumber, nil, "nocombine", nil}
		syntax.IndentBlanklineSpaceChar = { c.vsLineNumber, nil, "nocombine", nil}

		syntax.LspFloatWinNormal = { c.vsFront, nil, 'none', nil}
		syntax.LspFloatWinBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.LspSagaHoverBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.LspSagaSignatureHelpBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.LspSagaCodeActionBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.LspSagaDefPreviewBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.LspLinesDiagBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.LspSagaRenameBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.LspSagaBorderTitle = { c.vsCursorDark, nil, 'none', nil}

		syntax.TelescopePromptBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.TelescopeResultsBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.TelescopePreviewBorder = { c.vsLineNumber, nil, 'none', nil}
		syntax.TelescopeNormal = {c.vsFront, nil, 'none', nil}
		syntax.TelescopeSelection = {c.vsFront, c.vsUiBlue, 'none', nil}
		syntax.TelescopeMultiSelection = {c.vsFront, c.vsUiBlue, 'none', nil}
		syntax.TelescopeMatching = {c.vsBlue, nil, 'none', nil}
		syntax.TelescopePromptPrefix = {c.vsFront, nil, 'none', nil}
	else
		syntax.NvimTreeFolderIcon = { c.vsDarkBlue, nil, 'none', nil}
		syntax.NvimTreeIndentMarker = { c.vsTabOther, nil, 'none', nil}
		syntax.IndentBlanklineChar = { c.vsTabOther, nil, "nocombine", nil}
		syntax.IndentBlanklineSpaceChar = { c.vsTabOther, nil, "nocombine", nil}

		syntax.LspFloatWinNormal = { c.vsFront, nil, 'none', nil}
		syntax.LspFloatWinBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.LspSagaHoverBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.LspSagaSignatureHelpBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.LspSagaCodeActionBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.LspSagaDefPreviewBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.LspLinesDiagBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.LspSagaRenameBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.LspSagaBorderTitle = { c.vsCursorDark, nil, 'none', nil}

		syntax.TelescopePromptBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.TelescopeResultsBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.TelescopePreviewBorder = { c.vsTabOther, nil, 'none', nil}
		syntax.TelescopeNormal = {c.vsFront, nil, 'none', nil}
		syntax.TelescopeSelection = {c.vsBack, c.vsLightBlue, 'none', nil}
		syntax.TelescopeMultiSelection = {c.vsBack, c.vsLightBlue, 'none', nil}
		syntax.TelescopeMatching = {c.vsDarkBlue, nil, 'none', nil}
		syntax.TelescopePromptPrefix = {c.vsFront, nil, 'none', nil}
	end

	return syntax
end

theme.link_highlight = function ()
	-- Legacy groups for official git.vim and diff.vim syntax
	vim.api.nvim_command("hi! link diffAdded DiffAdd")
	vim.api.nvim_command("hi! link diffChanged DiffChange")
	vim.api.nvim_command("hi! link diffRemoved DiffDelete")
	-- Nvim compe
	vim.api.nvim_command("highlight! link CompeDocumentation Pmenu")
end

return theme


