"Filed out from Dolphin Smalltalk"!

Object subclass: #CefTransitionType
	instanceVariableNames: 'code'
	classVariableNames: ''
	poolDictionaries: 'CefConstants'
	classInstanceVariableNames: ''!

CefTransitionType guid: (GUID fromString: '{59a3e1ca-af0d-4655-91db-170f6ece0bac}')!

CefTransitionType comment: ''!

!CefTransitionType categoriesForClass!Unclassified! !

!CefTransitionType methodsFor!

code
	^code!

code: anObject
	code := anObject!

hasBlockedFlag
	"Attempted to visit a URL but was blocked."

	^(self qualifierMask bitAnd: TT_BLOCKED_FLAG) asBoolean!

hasChainEndFlag
	"The last transition in a redirect chain."

	^(self qualifierMask bitAnd: TT_CHAIN_END_FLAG) asBoolean!

hasChainStartFlag
	"The beginning of a navigation chain."

	^(self qualifierMask bitAnd: TT_CHAIN_START_FLAG) asBoolean!

hasClientRedirectFlag
	"Redirects caused by JavaScript or a meta refresh tag on the page."

	^(self qualifierMask bitAnd: TT_CLIENT_REDIRECT_FLAG) asBoolean!

hasDirectLoadFlag
	"Loaded a URL directly via CreateBrowser, LoadURL or LoadRequest."

	^(self qualifierMask bitAnd: TT_DIRECT_LOAD_FLAG) asBoolean!

hasForwardBackFlag
	"Used the Forward or Back function to navigate among browsing history.
	Will be ORed to the transition type for the original load."

	^(self qualifierMask bitAnd: TT_FORWARD_BACK_FLAG) asBoolean!

hasFromApiFlag
	"The transition originated from an external application; the exact
	definition of this is embedder dependent. Chrome runtime and
	extension system only."

	^(self qualifierMask bitAnd: TT_FROM_API_FLAG) asBoolean!

hasHomePageFlag
	"User is navigating to the home page. Chrome runtime only."

	^(self qualifierMask bitAnd: TT_HOME_PAGE_FLAG) asBoolean!

hasServerRedirectFlag
	"Redirects sent from the server by HTTP headers."

	^(self qualifierMask bitAnd: TT_SERVER_REDIRECT_FLAG) asBoolean!

isAutoBookmark
	"User got to this page through a suggestion in the UI (for example, via the
	destinations page). Chrome runtime only."

	^self sourceMask = TT_AUTO_BOOKMARK!

isAutoSubframe
	"Source is a subframe navigation. This is any content that is automatically
	loaded in a non-toplevel frame. For example, if a page consists of several
	frames containing ads, those ad URLs will have this transition type.
	The user may not even realize the content in these pages is a separate
	frame, so may not care about the URL."

	^self sourceMask = TT_AUTO_SUBFRAME!

isAutoToplevel
	"This is a toplevel navigation. This is any content that is automatically
	loaded in a toplevel frame.  For example, opening a tab to show the ASH
	screen saver, opening the devtools window, opening the NTP after the safe
	browsing warning, opening web-based dialog boxes are examples of
	AUTO_TOPLEVEL navigations. Chrome runtime only."

	^self sourceMask = TT_AUTO_TOPLEVEL!

isExplicit
	"Source is some other 'explicit' navigation. This is the default value for
	navigations where the actual type is unknown. See also
	TT_DIRECT_LOAD_FLAG."

	^self sourceMask = TT_EXPLICIT!

isFormSubmit
	"Source is a form submission by the user. NOTE: In some situations
	submitting a form does not result in this transition type. This can happen
	if the form uses a script to submit the contents."

	^self sourceMask = TT_FORM_SUBMIT!

isGenerated
	"User got to this page by typing in the URL bar and selecting an entry
	that did not look like a URL.  For example, a match might have the URL
	of a Google search result page, but appear like 'Search Google for ...'.
	These are not quite the same as EXPLICIT navigations because the user
	didn't type or see the destination URL. Chrome runtime only.
	See also TT_KEYWORD."

	^self sourceMask = TT_GENERATED!

isKeyword
	"The url was generated from a replaceable keyword other than the default
	search provider. If the user types a keyword (which also applies to
	tab-to-search) in the omnibox this qualifier is applied to the transition
	type of the generated url. TemplateURLModel then may generate an
	additional visit with a transition type of TT_KEYWORD_GENERATED against
	the url 'http://' + keyword. For example, if you do a tab-to-search
	against wikipedia the generated url has a transition qualifer of
	TT_KEYWORD, and TemplateURLModel generates a visit for 'wikipedia.org'
	with a transition type of TT_KEYWORD_GENERATED. Chrome runtime only."

	^self sourceMask = TT_KEYWORD!

isKeywordGenerated
	"Corresponds to a visit generated for a keyword. See description of
	TT_KEYWORD for more details. Chrome runtime only."

	^self sourceMask = TT_KEYWORD_GENERATED!

isLink
	"Source is a link click or the JavaScript window.open function. This is
	also the default value for requests like sub-resource loads that are not
	navigations."

	^self sourceMask = TT_LINK!

isManualSubframe
	"Source is a subframe navigation explicitly requested by the user that will
	generate new navigation entries in the back/forward list. These are
	probably more important than frames that were automatically loaded in
	the background because the user probably cares about the fact that this
	link was loaded."

	^self sourceMask = TT_MANUAL_SUBFRAME!

isRedirect
	"Used to test whether a transition involves a redirect."

	^(self qualifierMask bitAnd: TT_IS_REDIRECT_MASK) asBoolean!

isReload
	"Source is a 'reload' of the page via the Reload function or by re-visiting
	the same URL. NOTE: This is distinct from the concept of whether a
	particular load uses 'reload semantics' (i.e. bypasses cached data)."

	^self sourceMask = TT_RELOAD!

qualifierMask
	"General mask defining the bits used for the qualifiers."

	^code bitAnd: TT_QUALIFIER_MASK!

qualifiers
	| qualifiers |
	qualifiers := OrderedCollection new.
	self hasBlockedFlag ifTrue: [qualifiers add: #blocked].
	self hasForwardBackFlag ifTrue: [qualifiers add: #forwardBack].
	self hasDirectLoadFlag ifTrue: [qualifiers add: #directLoad].
	self hasHomePageFlag ifTrue: [qualifiers add: #homePage].
	self hasChainStartFlag ifTrue: [qualifiers add: #chainStart].
	self hasChainEndFlag ifTrue: [qualifiers add: #chainEnd].
	self hasClientRedirectFlag ifTrue: [qualifiers add: #clientRedirect].
	self hasServerRedirectFlag ifTrue: [qualifiers add: #serverRedirect].
	^qualifiers asArray!

source
	self isLink ifTrue: [^#link].
	self isExplicit ifTrue: [^#explicit].
	self isAutoBookmark ifTrue: [^#autoBookmark].
	self isAutoSubframe ifTrue: [^#autoSubframe].
	self isManualSubframe ifTrue: [^#manualSubframe].
	self isGenerated ifTrue: [^#generated].
	self isAutoToplevel ifTrue: [^#autoToplevel].
	self isFormSubmit ifTrue: [^#formSubmit].
	self isReload ifTrue: [^#reload].
	self isKeyword ifTrue: [^#keyword].
	self isKeywordGenerated ifTrue: [^#keywordGenerated].
	^nil!

sourceMask
	" General mask defining the bits used for the source values."

	^code bitAnd: 16rFF! !

!CefTransitionType categoriesForMethods!
code!accessing!public! !
code:!accessing!public! !
hasBlockedFlag!public! !
hasChainEndFlag!public! !
hasChainStartFlag!public! !
hasClientRedirectFlag!public! !
hasDirectLoadFlag!public! !
hasForwardBackFlag!public! !
hasFromApiFlag!public! !
hasHomePageFlag!public! !
hasServerRedirectFlag!public! !
isAutoBookmark!public! !
isAutoSubframe!public! !
isAutoToplevel!public! !
isExplicit!public! !
isFormSubmit!public! !
isGenerated!public! !
isKeyword!public! !
isKeywordGenerated!public! !
isLink!public! !
isManualSubframe!public! !
isRedirect!public! !
isReload!public! !
qualifierMask!private! !
qualifiers!public! !
source!public! !
sourceMask!private! !
!

!CefTransitionType class methodsFor!

fromInteger: anInteger
	^self new code: anInteger! !

!CefTransitionType class categoriesForMethods!
fromInteger:!public! !
!

