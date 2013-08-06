\version "2.16.2"

#(set-default-paper-size "a6")

\header {
	title = "Bateria"
	subsubtitle = " "
	instrument = " "
	composer = " "
	tagline = ##f
}

\layout { indent = 0.0\cm }

\score {
	\drums {
		{
			\override Staff.TimeSignature #'stencil = ##f
			\override Score.BarNumber #'break-visibility = #all-invisible
			cymc1-"cymc"
			cyms-"cyms"
			cymr-"cymr"
			hh-"hh"
			hhc-"hhc"
			hho-"hho"
			hhho-"hhho"
			hhp-"hhp"
			cb-"cb"
			hc-"hc"
			bd-"bd"
			sn-"sn"
			ss-"ss"
			tomh-"tomh"
			tommh-"tommh"
			tomml-"tomml"
			toml-"toml"
			tomfh-"tomfh"
			tomfl-"tomfl"
		}
	}
	\midi {}
	\layout {}
}
