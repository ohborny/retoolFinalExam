<Screen
  id="manageAssetsPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="getAssets"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getAssets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getOrdersForAsset"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/getOrdersForAsset.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <State
    id="getAllTypes"
    value={
      '["Social Media Post", "Trailer","Billboard","Video Clip", "Art Piece"]'
    }
  />
  <Function
    id="formatOrdersForAsset"
    funcBody={include("../lib/formatOrdersForAsset.js", "string")}
  />
  <Function
    id="filterAssets"
    funcBody={include("../lib/filterAssets.js", "string")}
  />
  <State id="assetState" value="View" />
  <State
    id="assetTypeColors"
    value={
      '{\n"Art Piece": "E5C009",\n"Video Clip": "08415C",\n"Trailer": "84BCDA",\n"Billboard":"CC2936",\n"Social Media Post": "499F68"\n}'
    }
  />
  <State
    id="orderStatusColors"
    value={
      '{\n"Order Placed": "84BCDA",\n"In Progress": "CC2936",\n"Delivered": "499F68"\n}'
    }
  />
  <State
    id="countries"
    value="[ 
  {name: 'Afghanistan', code: 'AF'}, 
  {name: 'Åland Islands', code: 'AX'}, 
  {name: 'Albania', code: 'AL'}, 
  {name: 'Algeria', code: 'DZ'}, 
  {name: 'American Samoa', code: 'AS'}, 
  {name: 'AndorrA', code: 'AD'}, 
  {name: 'Angola', code: 'AO'}, 
  {name: 'Anguilla', code: 'AI'}, 
  {name: 'Antarctica', code: 'AQ'}, 
  {name: 'Antigua and Barbuda', code: 'AG'}, 
  {name: 'Argentina', code: 'AR'}, 
  {name: 'Armenia', code: 'AM'}, 
  {name: 'Aruba', code: 'AW'}, 
  {name: 'Australia', code: 'AU'}, 
  {name: 'Austria', code: 'AT'}, 
  {name: 'Azerbaijan', code: 'AZ'}, 
  {name: 'Bahamas', code: 'BS'}, 
  {name: 'Bahrain', code: 'BH'}, 
  {name: 'Bangladesh', code: 'BD'}, 
  {name: 'Barbados', code: 'BB'}, 
  {name: 'Belarus', code: 'BY'}, 
  {name: 'Belgium', code: 'BE'}, 
  {name: 'Belize', code: 'BZ'}, 
  {name: 'Benin', code: 'BJ'}, 
  {name: 'Bermuda', code: 'BM'}, 
  {name: 'Bhutan', code: 'BT'}, 
  {name: 'Bolivia', code: 'BO'}, 
  {name: 'Bosnia and Herzegovina', code: 'BA'}, 
  {name: 'Botswana', code: 'BW'}, 
  {name: 'Bouvet Island', code: 'BV'}, 
  {name: 'Brazil', code: 'BR'}, 
  {name: 'British Indian Ocean Territory', code: 'IO'}, 
  {name: 'Brunei Darussalam', code: 'BN'}, 
  {name: 'Bulgaria', code: 'BG'}, 
  {name: 'Burkina Faso', code: 'BF'}, 
  {name: 'Burundi', code: 'BI'}, 
  {name: 'Cambodia', code: 'KH'}, 
  {name: 'Cameroon', code: 'CM'}, 
  {name: 'Canada', code: 'CA'}, 
  {name: 'Cape Verde', code: 'CV'}, 
  {name: 'Cayman Islands', code: 'KY'}, 
  {name: 'Central African Republic', code: 'CF'}, 
  {name: 'Chad', code: 'TD'}, 
  {name: 'Chile', code: 'CL'}, 
  {name: 'China', code: 'CN'}, 
  {name: 'Christmas Island', code: 'CX'}, 
  {name: 'Cocos (Keeling) Islands', code: 'CC'}, 
  {name: 'Colombia', code: 'CO'}, 
  {name: 'Comoros', code: 'KM'}, 
  {name: 'Congo', code: 'CG'}, 
  {name: 'Congo, The Democratic Republic of the', code: 'CD'}, 
  {name: 'Cook Islands', code: 'CK'}, 
  {name: 'Costa Rica', code: 'CR'}, 
  {name: 'Cote D\'Ivoire', code: 'CI'}, 
  {name: 'Croatia', code: 'HR'}, 
  {name: 'Cuba', code: 'CU'}, 
  {name: 'Cyprus', code: 'CY'}, 
  {name: 'Czech Republic', code: 'CZ'}, 
  {name: 'Denmark', code: 'DK'}, 
  {name: 'Djibouti', code: 'DJ'}, 
  {name: 'Dominica', code: 'DM'}, 
  {name: 'Dominican Republic', code: 'DO'}, 
  {name: 'Ecuador', code: 'EC'}, 
  {name: 'Egypt', code: 'EG'}, 
  {name: 'El Salvador', code: 'SV'}, 
  {name: 'Equatorial Guinea', code: 'GQ'}, 
  {name: 'Eritrea', code: 'ER'}, 
  {name: 'Estonia', code: 'EE'}, 
  {name: 'Ethiopia', code: 'ET'}, 
  {name: 'Falkland Islands (Malvinas)', code: 'FK'}, 
  {name: 'Faroe Islands', code: 'FO'}, 
  {name: 'Fiji', code: 'FJ'}, 
  {name: 'Finland', code: 'FI'}, 
  {name: 'France', code: 'FR'}, 
  {name: 'French Guiana', code: 'GF'}, 
  {name: 'French Polynesia', code: 'PF'}, 
  {name: 'French Southern Territories', code: 'TF'}, 
  {name: 'Gabon', code: 'GA'}, 
  {name: 'Gambia', code: 'GM'}, 
  {name: 'Georgia', code: 'GE'}, 
  {name: 'Germany', code: 'DE'}, 
  {name: 'Ghana', code: 'GH'}, 
  {name: 'Gibraltar', code: 'GI'}, 
  {name: 'Greece', code: 'GR'}, 
  {name: 'Greenland', code: 'GL'}, 
  {name: 'Grenada', code: 'GD'}, 
  {name: 'Guadeloupe', code: 'GP'}, 
  {name: 'Guam', code: 'GU'}, 
  {name: 'Guatemala', code: 'GT'}, 
  {name: 'Guernsey', code: 'GG'}, 
  {name: 'Guinea', code: 'GN'}, 
  {name: 'Guinea-Bissau', code: 'GW'}, 
  {name: 'Guyana', code: 'GY'}, 
  {name: 'Haiti', code: 'HT'}, 
  {name: 'Heard Island and Mcdonald Islands', code: 'HM'}, 
  {name: 'Holy See (Vatican City State)', code: 'VA'}, 
  {name: 'Honduras', code: 'HN'}, 
  {name: 'Hong Kong', code: 'HK'}, 
  {name: 'Hungary', code: 'HU'}, 
  {name: 'Iceland', code: 'IS'}, 
  {name: 'India', code: 'IN'}, 
  {name: 'Indonesia', code: 'ID'}, 
  {name: 'Iran, Islamic Republic Of', code: 'IR'}, 
  {name: 'Iraq', code: 'IQ'}, 
  {name: 'Ireland', code: 'IE'}, 
  {name: 'Isle of Man', code: 'IM'}, 
  {name: 'Israel', code: 'IL'}, 
  {name: 'Italy', code: 'IT'}, 
  {name: 'Jamaica', code: 'JM'}, 
  {name: 'Japan', code: 'JP'}, 
  {name: 'Jersey', code: 'JE'}, 
  {name: 'Jordan', code: 'JO'}, 
  {name: 'Kazakhstan', code: 'KZ'}, 
  {name: 'Kenya', code: 'KE'}, 
  {name: 'Kiribati', code: 'KI'}, 
  {name: 'Korea, Democratic People\'S Republic of', code: 'KP'}, 
  {name: 'Korea, Republic of', code: 'KR'}, 
  {name: 'Kuwait', code: 'KW'}, 
  {name: 'Kyrgyzstan', code: 'KG'}, 
  {name: 'Lao People\'S Democratic Republic', code: 'LA'}, 
  {name: 'Latvia', code: 'LV'}, 
  {name: 'Lebanon', code: 'LB'}, 
  {name: 'Lesotho', code: 'LS'}, 
  {name: 'Liberia', code: 'LR'}, 
  {name: 'Libyan Arab Jamahiriya', code: 'LY'}, 
  {name: 'Liechtenstein', code: 'LI'}, 
  {name: 'Lithuania', code: 'LT'}, 
  {name: 'Luxembourg', code: 'LU'}, 
  {name: 'Macao', code: 'MO'}, 
  {name: 'Macedonia, The Former Yugoslav Republic of', code: 'MK'}, 
  {name: 'Madagascar', code: 'MG'}, 
  {name: 'Malawi', code: 'MW'}, 
  {name: 'Malaysia', code: 'MY'}, 
  {name: 'Maldives', code: 'MV'}, 
  {name: 'Mali', code: 'ML'}, 
  {name: 'Malta', code: 'MT'}, 
  {name: 'Marshall Islands', code: 'MH'}, 
  {name: 'Martinique', code: 'MQ'}, 
  {name: 'Mauritania', code: 'MR'}, 
  {name: 'Mauritius', code: 'MU'}, 
  {name: 'Mayotte', code: 'YT'}, 
  {name: 'Mexico', code: 'MX'}, 
  {name: 'Micronesia, Federated States of', code: 'FM'}, 
  {name: 'Moldova, Republic of', code: 'MD'}, 
  {name: 'Monaco', code: 'MC'}, 
  {name: 'Mongolia', code: 'MN'}, 
  {name: 'Montserrat', code: 'MS'}, 
  {name: 'Morocco', code: 'MA'}, 
  {name: 'Mozambique', code: 'MZ'}, 
  {name: 'Myanmar', code: 'MM'}, 
  {name: 'Namibia', code: 'NA'}, 
  {name: 'Nauru', code: 'NR'}, 
  {name: 'Nepal', code: 'NP'}, 
  {name: 'Netherlands', code: 'NL'}, 
  {name: 'Netherlands Antilles', code: 'AN'}, 
  {name: 'New Caledonia', code: 'NC'}, 
  {name: 'New Zealand', code: 'NZ'}, 
  {name: 'Nicaragua', code: 'NI'}, 
  {name: 'Niger', code: 'NE'}, 
  {name: 'Nigeria', code: 'NG'}, 
  {name: 'Niue', code: 'NU'}, 
  {name: 'Norfolk Island', code: 'NF'}, 
  {name: 'Northern Mariana Islands', code: 'MP'}, 
  {name: 'Norway', code: 'NO'}, 
  {name: 'Oman', code: 'OM'}, 
  {name: 'Pakistan', code: 'PK'}, 
  {name: 'Palau', code: 'PW'}, 
  {name: 'Palestinian Territory, Occupied', code: 'PS'}, 
  {name: 'Panama', code: 'PA'}, 
  {name: 'Papua New Guinea', code: 'PG'}, 
  {name: 'Paraguay', code: 'PY'}, 
  {name: 'Peru', code: 'PE'}, 
  {name: 'Philippines', code: 'PH'}, 
  {name: 'Pitcairn', code: 'PN'}, 
  {name: 'Poland', code: 'PL'}, 
  {name: 'Portugal', code: 'PT'}, 
  {name: 'Puerto Rico', code: 'PR'}, 
  {name: 'Qatar', code: 'QA'}, 
  {name: 'Reunion', code: 'RE'}, 
  {name: 'Romania', code: 'RO'}, 
  {name: 'Russian Federation', code: 'RU'}, 
  {name: 'RWANDA', code: 'RW'}, 
  {name: 'Saint Helena', code: 'SH'}, 
  {name: 'Saint Kitts and Nevis', code: 'KN'}, 
  {name: 'Saint Lucia', code: 'LC'}, 
  {name: 'Saint Pierre and Miquelon', code: 'PM'}, 
  {name: 'Saint Vincent and the Grenadines', code: 'VC'}, 
  {name: 'Samoa', code: 'WS'}, 
  {name: 'San Marino', code: 'SM'}, 
  {name: 'Sao Tome and Principe', code: 'ST'}, 
  {name: 'Saudi Arabia', code: 'SA'}, 
  {name: 'Senegal', code: 'SN'}, 
  {name: 'Serbia and Montenegro', code: 'CS'}, 
  {name: 'Seychelles', code: 'SC'}, 
  {name: 'Sierra Leone', code: 'SL'}, 
  {name: 'Singapore', code: 'SG'}, 
  {name: 'Slovakia', code: 'SK'}, 
  {name: 'Slovenia', code: 'SI'}, 
  {name: 'Solomon Islands', code: 'SB'}, 
  {name: 'Somalia', code: 'SO'}, 
  {name: 'South Africa', code: 'ZA'}, 
  {name: 'South Georgia and the South Sandwich Islands', code: 'GS'}, 
  {name: 'Spain', code: 'ES'}, 
  {name: 'Sri Lanka', code: 'LK'}, 
  {name: 'Sudan', code: 'SD'}, 
  {name: 'Suriname', code: 'SR'}, 
  {name: 'Svalbard and Jan Mayen', code: 'SJ'}, 
  {name: 'Swaziland', code: 'SZ'}, 
  {name: 'Sweden', code: 'SE'}, 
  {name: 'Switzerland', code: 'CH'}, 
  {name: 'Syrian Arab Republic', code: 'SY'}, 
  {name: 'Taiwan, Province of China', code: 'TW'}, 
  {name: 'Tajikistan', code: 'TJ'}, 
  {name: 'Tanzania, United Republic of', code: 'TZ'}, 
  {name: 'Thailand', code: 'TH'}, 
  {name: 'Timor-Leste', code: 'TL'}, 
  {name: 'Togo', code: 'TG'}, 
  {name: 'Tokelau', code: 'TK'}, 
  {name: 'Tonga', code: 'TO'}, 
  {name: 'Trinidad and Tobago', code: 'TT'}, 
  {name: 'Tunisia', code: 'TN'}, 
  {name: 'Turkey', code: 'TR'}, 
  {name: 'Turkmenistan', code: 'TM'}, 
  {name: 'Turks and Caicos Islands', code: 'TC'}, 
  {name: 'Tuvalu', code: 'TV'}, 
  {name: 'Uganda', code: 'UG'}, 
  {name: 'Ukraine', code: 'UA'}, 
  {name: 'United Arab Emirates', code: 'AE'}, 
  {name: 'United Kingdom', code: 'GB'}, 
  {name: 'United States', code: 'US'}, 
  {name: 'United States Minor Outlying Islands', code: 'UM'}, 
  {name: 'Uruguay', code: 'UY'}, 
  {name: 'Uzbekistan', code: 'UZ'}, 
  {name: 'Vanuatu', code: 'VU'}, 
  {name: 'Venezuela', code: 'VE'}, 
  {name: 'Viet Nam', code: 'VN'}, 
  {name: 'Virgin Islands, British', code: 'VG'}, 
  {name: 'Virgin Islands, U.S.', code: 'VI'}, 
  {name: 'Wallis and Futuna', code: 'WF'}, 
  {name: 'Western Sahara', code: 'EH'}, 
  {name: 'Yemen', code: 'YE'}, 
  {name: 'Zambia', code: 'ZM'}, 
  {name: 'Zimbabwe', code: 'ZW'} 
]"
  />
  <State
    id="languages"
    value={
      '[\n  {\n    "code": "aa",\n    "name": "Afar"\n  },\n  {\n    "code": "ab",\n    "name": "Abkhazian"\n  },\n  {\n    "code": "af",\n    "name": "Afrikaans"\n  },\n  {\n    "code": "am",\n    "name": "Amharic"\n  },\n  {\n    "code": "ar",\n    "name": "Arabic"\n  },\n  {\n    "code": "ar-ae",\n    "name": "Arabic (U.A.E.)"\n  },\n  {\n    "code": "ar-bh",\n    "name": "Arabic (Bahrain)"\n  },\n  {\n    "code": "ar-dz",\n    "name": "Arabic (Algeria)"\n  },\n  {\n    "code": "ar-eg",\n    "name": "Arabic (Egypt)"\n  },\n  {\n    "code": "ar-iq",\n    "name": "Arabic (Iraq)"\n  },\n  {\n    "code": "ar-jo",\n    "name": "Arabic (Jordan)"\n  },\n  {\n    "code": "ar-kw",\n    "name": "Arabic (Kuwait)"\n  },\n  {\n    "code": "ar-lb",\n    "name": "Arabic (Lebanon)"\n  },\n  {\n    "code": "ar-ly",\n    "name": "Arabic (libya)"\n  },\n  {\n    "code": "ar-ma",\n    "name": "Arabic (Morocco)"\n  },\n  {\n    "code": "ar-om",\n    "name": "Arabic (Oman)"\n  },\n  {\n    "code": "ar-qa",\n    "name": "Arabic (Qatar)"\n  },\n  {\n    "code": "ar-sa",\n    "name": "Arabic (Saudi Arabia)"\n  },\n  {\n    "code": "ar-sy",\n    "name": "Arabic (Syria)"\n  },\n  {\n    "code": "ar-tn",\n    "name": "Arabic (Tunisia)"\n  },\n  {\n    "code": "ar-ye",\n    "name": "Arabic (Yemen)"\n  },\n  {\n    "code": "as",\n    "name": "Assamese"\n  },\n  {\n    "code": "ay",\n    "name": "Aymara"\n  },\n  {\n    "code": "az",\n    "name": "Azeri"\n  },\n  {\n    "code": "ba",\n    "name": "Bashkir"\n  },\n  {\n    "code": "be",\n    "name": "Belarusian"\n  },\n  {\n    "code": "bg",\n    "name": "Bulgarian"\n  },\n  {\n    "code": "bh",\n    "name": "Bihari"\n  },\n  {\n    "code": "bi",\n    "name": "Bislama"\n  },\n  {\n    "code": "bn",\n    "name": "Bengali"\n  },\n  {\n    "code": "bo",\n    "name": "Tibetan"\n  },\n  {\n    "code": "br",\n    "name": "Breton"\n  },\n  {\n    "code": "ca",\n    "name": "Catalan"\n  },\n  {\n    "code": "co",\n    "name": "Corsican"\n  },\n  {\n    "code": "cs",\n    "name": "Czech"\n  },\n  {\n    "code": "cy",\n    "name": "Welsh"\n  },\n  {\n    "code": "da",\n    "name": "Danish"\n  },\n  {\n    "code": "de",\n    "name": "German"\n  },\n  {\n    "code": "de-at",\n    "name": "German (Austria)"\n  },\n  {\n    "code": "de-ch",\n    "name": "German (Switzerland)"\n  },\n  {\n    "code": "de-li",\n    "name": "German (Liechtenstein)"\n  },\n  {\n    "code": "de-lu",\n    "name": "German (Luxembourg)"\n  },\n  {\n    "code": "div",\n    "name": "Divehi"\n  },\n  {\n    "code": "dz",\n    "name": "Bhutani"\n  },\n  {\n    "code": "el",\n    "name": "Greek"\n  },\n  {\n    "code": "en",\n    "name": "English"\n  },\n  {\n    "code": "en-au",\n    "name": "English (Australia)"\n  },\n  {\n    "code": "en-bz",\n    "name": "English (Belize)"\n  },\n  {\n    "code": "en-ca",\n    "name": "English (Canada)"\n  },\n  {\n    "code": "en-gb",\n    "name": "English (United Kingdom)"\n  },\n  {\n    "code": "en-ie",\n    "name": "English (Ireland)"\n  },\n  {\n    "code": "en-jm",\n    "name": "English (Jamaica)"\n  },\n  {\n    "code": "en-nz",\n    "name": "English (New Zealand)"\n  },\n  {\n    "code": "en-ph",\n    "name": "English (Philippines)"\n  },\n  {\n    "code": "en-tt",\n    "name": "English (Trinidad)"\n  },\n  {\n    "code": "en-us",\n    "name": "English (United States)"\n  },\n  {\n    "code": "en-za",\n    "name": "English (South Africa)"\n  },\n  {\n    "code": "en-zw",\n    "name": "English (Zimbabwe)"\n  },\n  {\n    "code": "eo",\n    "name": "Esperanto"\n  },\n  {\n    "code": "es",\n    "name": "Spanish"\n  },\n  {\n    "code": "es-ar",\n    "name": "Spanish (Argentina)"\n  },\n  {\n    "code": "es-bo",\n    "name": "Spanish (Bolivia)"\n  },\n  {\n    "code": "es-cl",\n    "name": "Spanish (Chile)"\n  },\n  {\n    "code": "es-co",\n    "name": "Spanish (Colombia)"\n  },\n  {\n    "code": "es-cr",\n    "name": "Spanish (Costa Rica)"\n  },\n  {\n    "code": "es-do",\n    "name": "Spanish (Dominican Republic)"\n  },\n  {\n    "code": "es-ec",\n    "name": "Spanish (Ecuador)"\n  },\n  {\n    "code": "es-es",\n    "name": "Spanish (España)"\n  },\n  {\n    "code": "es-gt",\n    "name": "Spanish (Guatemala)"\n  },\n  {\n    "code": "es-hn",\n    "name": "Spanish (Honduras)"\n  },\n  {\n    "code": "es-mx",\n    "name": "Spanish (Mexico)"\n  },\n  {\n    "code": "es-ni",\n    "name": "Spanish (Nicaragua)"\n  },\n  {\n    "code": "es-pa",\n    "name": "Spanish (Panama)"\n  },\n  {\n    "code": "es-pe",\n    "name": "Spanish (Peru)"\n  },\n  {\n    "code": "es-pr",\n    "name": "Spanish (Puerto Rico)"\n  },\n  {\n    "code": "es-py",\n    "name": "Spanish (Paraguay)"\n  },\n  {\n    "code": "es-sv",\n    "name": "Spanish (El Salvador)"\n  },\n  {\n    "code": "es-us",\n    "name": "Spanish (United States)"\n  },\n  {\n    "code": "es-uy",\n    "name": "Spanish (Uruguay)"\n  },\n  {\n    "code": "es-ve",\n    "name": "Spanish (Venezuela)"\n  },\n  {\n    "code": "et",\n    "name": "Estonian"\n  },\n  {\n    "code": "eu",\n    "name": "Basque"\n  },\n  {\n    "code": "fa",\n    "name": "Farsi"\n  },\n  {\n    "code": "fi",\n    "name": "Finnish"\n  },\n  {\n    "code": "fj",\n    "name": "Fiji"\n  },\n  {\n    "code": "fo",\n    "name": "Faeroese"\n  },\n  {\n    "code": "fr",\n    "name": "French"\n  },\n  {\n    "code": "fr-be",\n    "name": "French (Belgium)"\n  },\n  {\n    "code": "fr-ca",\n    "name": "French (Canada)"\n  },\n  {\n    "code": "fr-ch",\n    "name": "French (Switzerland)"\n  },\n  {\n    "code": "fr-lu",\n    "name": "French (Luxembourg)"\n  },\n  {\n    "code": "fr-mc",\n    "name": "French (Monaco)"\n  },\n  {\n    "code": "fy",\n    "name": "Frisian"\n  },\n  {\n    "code": "ga",\n    "name": "Irish"\n  },\n  {\n    "code": "gd",\n    "name": "Gaelic"\n  },\n  {\n    "code": "gl",\n    "name": "Galician"\n  },\n  {\n    "code": "gn",\n    "name": "Guarani"\n  },\n  {\n    "code": "gu",\n    "name": "Gujarati"\n  },\n  {\n    "code": "ha",\n    "name": "Hausa"\n  },\n  {\n    "code": "he",\n    "name": "Hebrew"\n  },\n  {\n    "code": "hi",\n    "name": "Hindi"\n  },\n  {\n    "code": "hr",\n    "name": "Croatian"\n  },\n  {\n    "code": "hu",\n    "name": "Hungarian"\n  },\n  {\n    "code": "hy",\n    "name": "Armenian"\n  },\n  {\n    "code": "ia",\n    "name": "Interlingua"\n  },\n  {\n    "code": "id",\n    "name": "Indonesian"\n  },\n  {\n    "code": "ie",\n    "name": "Interlingue"\n  },\n  {\n    "code": "ik",\n    "name": "Inupiak"\n  },\n  {\n    "code": "in",\n    "name": "Indonesian"\n  },\n  {\n    "code": "is",\n    "name": "Icelandic"\n  },\n  {\n    "code": "it",\n    "name": "Italian"\n  },\n  {\n    "code": "it-ch",\n    "name": "Italian (Switzerland)"\n  },\n  {\n    "code": "iw",\n    "name": "Hebrew"\n  },\n  {\n    "code": "ja",\n    "name": "Japanese"\n  },\n  {\n    "code": "ji",\n    "name": "Yiddish"\n  },\n  {\n    "code": "jw",\n    "name": "Javanese"\n  },\n  {\n    "code": "ka",\n    "name": "Georgian"\n  },\n  {\n    "code": "kk",\n    "name": "Kazakh"\n  },\n  {\n    "code": "kl",\n    "name": "Greenlandic"\n  },\n  {\n    "code": "km",\n    "name": "Cambodian"\n  },\n  {\n    "code": "kn",\n    "name": "Kannada"\n  },\n  {\n    "code": "ko",\n    "name": "Korean"\n  },\n  {\n    "code": "kok",\n    "name": "Konkani"\n  },\n  {\n    "code": "ks",\n    "name": "Kashmiri"\n  },\n  {\n    "code": "ku",\n    "name": "Kurdish"\n  },\n  {\n    "code": "ky",\n    "name": "Kirghiz"\n  },\n  {\n    "code": "kz",\n    "name": "Kyrgyz"\n  },\n  {\n    "code": "la",\n    "name": "Latin"\n  },\n  {\n    "code": "ln",\n    "name": "Lingala"\n  },\n  {\n    "code": "lo",\n    "name": "Laothian"\n  },\n  {\n    "code": "ls",\n    "name": "Slovenian"\n  },\n  {\n    "code": "lt",\n    "name": "Lithuanian"\n  },\n  {\n    "code": "lv",\n    "name": "Latvian"\n  },\n  {\n    "code": "mg",\n    "name": "Malagasy"\n  },\n  {\n    "code": "mi",\n    "name": "Maori"\n  },\n  {\n    "code": "mk",\n    "name": "FYRO Macedonian"\n  },\n  {\n    "code": "ml",\n    "name": "Malayalam"\n  },\n  {\n    "code": "mn",\n    "name": "Mongolian"\n  },\n  {\n    "code": "mo",\n    "name": "Moldavian"\n  },\n  {\n    "code": "mr",\n    "name": "Marathi"\n  },\n  {\n    "code": "ms",\n    "name": "Malay"\n  },\n  {\n    "code": "mt",\n    "name": "Maltese"\n  },\n  {\n    "code": "my",\n    "name": "Burmese"\n  },\n  {\n    "code": "na",\n    "name": "Nauru"\n  },\n  {\n    "code": "nb-no",\n    "name": "Norwegian (Bokmal)"\n  },\n  {\n    "code": "ne",\n    "name": "Nepali (India)"\n  },\n  {\n    "code": "nl",\n    "name": "Dutch"\n  },\n  {\n    "code": "nl-be",\n    "name": "Dutch (Belgium)"\n  },\n  {\n    "code": "nn-no",\n    "name": "Norwegian"\n  },\n  {\n    "code": "no",\n    "name": "Norwegian (Bokmal)"\n  },\n  {\n    "code": "oc",\n    "name": "Occitan"\n  },\n  {\n    "code": "om",\n    "name": "(Afan)/Oromoor/Oriya"\n  },\n  {\n    "code": "or",\n    "name": "Oriya"\n  },\n  {\n    "code": "pa",\n    "name": "Punjabi"\n  },\n  {\n    "code": "pl",\n    "name": "Polish"\n  },\n  {\n    "code": "ps",\n    "name": "Pashto/Pushto"\n  },\n  {\n    "code": "pt",\n    "name": "Portuguese"\n  },\n  {\n    "code": "pt-br",\n    "name": "Portuguese (Brazil)"\n  },\n  {\n    "code": "qu",\n    "name": "Quechua"\n  },\n  {\n    "code": "rm",\n    "name": "Rhaeto-Romanic"\n  },\n  {\n    "code": "rn",\n    "name": "Kirundi"\n  },\n  {\n    "code": "ro",\n    "name": "Romanian"\n  },\n  {\n    "code": "ro-md",\n    "name": "Romanian (Moldova)"\n  },\n  {\n    "code": "ru",\n    "name": "Russian"\n  },\n  {\n    "code": "ru-md",\n    "name": "Russian (Moldova)"\n  },\n  {\n    "code": "rw",\n    "name": "Kinyarwanda"\n  },\n  {\n    "code": "sa",\n    "name": "Sanskrit"\n  },\n  {\n    "code": "sb",\n    "name": "Sorbian"\n  },\n  {\n    "code": "sd",\n    "name": "Sindhi"\n  },\n  {\n    "code": "sg",\n    "name": "Sangro"\n  },\n  {\n    "code": "sh",\n    "name": "Serbo-Croatian"\n  },\n  {\n    "code": "si",\n    "name": "Singhalese"\n  },\n  {\n    "code": "sk",\n    "name": "Slovak"\n  },\n  {\n    "code": "sl",\n    "name": "Slovenian"\n  },\n  {\n    "code": "sm",\n    "name": "Samoan"\n  },\n  {\n    "code": "sn",\n    "name": "Shona"\n  },\n  {\n    "code": "so",\n    "name": "Somali"\n  },\n  {\n    "code": "sq",\n    "name": "Albanian"\n  },\n  {\n    "code": "sr",\n    "name": "Serbian"\n  },\n  {\n    "code": "ss",\n    "name": "Siswati"\n  },\n  {\n    "code": "st",\n    "name": "Sesotho"\n  },\n  {\n    "code": "su",\n    "name": "Sundanese"\n  },\n  {\n    "code": "sv",\n    "name": "Swedish"\n  },\n  {\n    "code": "sv-fi",\n    "name": "Swedish (Finland)"\n  },\n  {\n    "code": "sw",\n    "name": "Swahili"\n  },\n  {\n    "code": "sx",\n    "name": "Sutu"\n  },\n  {\n    "code": "syr",\n    "name": "Syriac"\n  },\n  {\n    "code": "ta",\n    "name": "Tamil"\n  },\n  {\n    "code": "te",\n    "name": "Telugu"\n  },\n  {\n    "code": "tg",\n    "name": "Tajik"\n  },\n  {\n    "code": "th",\n    "name": "Thai"\n  },\n  {\n    "code": "ti",\n    "name": "Tigrinya"\n  },\n  {\n    "code": "tk",\n    "name": "Turkmen"\n  },\n  {\n    "code": "tl",\n    "name": "Tagalog"\n  },\n  {\n    "code": "tn",\n    "name": "Tswana"\n  },\n  {\n    "code": "to",\n    "name": "Tonga"\n  },\n  {\n    "code": "tr",\n    "name": "Turkish"\n  },\n  {\n    "code": "ts",\n    "name": "Tsonga"\n  },\n  {\n    "code": "tt",\n    "name": "Tatar"\n  },\n  {\n    "code": "tw",\n    "name": "Twi"\n  },\n  {\n    "code": "uk",\n    "name": "Ukrainian"\n  },\n  {\n    "code": "ur",\n    "name": "Urdu"\n  },\n  {\n    "code": "us",\n    "name": "English"\n  },\n  {\n    "code": "uz",\n    "name": "Uzbek"\n  },\n  {\n    "code": "vi",\n    "name": "Vietnamese"\n  },\n  {\n    "code": "vo",\n    "name": "Volapuk"\n  },\n  {\n    "code": "wo",\n    "name": "Wolof"\n  },\n  {\n    "code": "xh",\n    "name": "Xhosa"\n  },\n  {\n    "code": "yi",\n    "name": "Yiddish"\n  },\n  {\n    "code": "yo",\n    "name": "Yoruba"\n  },\n  {\n    "code": "zh",\n    "name": "Chinese"\n  },\n  {\n    "code": "zh-cn",\n    "name": "Chinese (China)"\n  },\n  {\n    "code": "zh-hk",\n    "name": "Chinese (Hong Kong SAR)"\n  },\n  {\n    "code": "zh-mo",\n    "name": "Chinese (Macau SAR)"\n  },\n  {\n    "code": "zh-sg",\n    "name": "Chinese (Singapore)"\n  },\n  {\n    "code": "zh-tw",\n    "name": "Chinese (Taiwan)"\n  },\n  {\n    "code": "zu",\n    "name": "Zulu"\n  }\n]'
    }
  />
  <SqlQueryUnified
    id="updateAsset"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"media","value":"{{ selectedAssetLink.value }}"},{"key":"description","value":"{{ selectedDescription.value }}"},{"key":"type","value":"{{ selectedType.selectedItem }}"},{"key":"language","value":"{{ selectLanguage.selectedItem }}"},{"key":"country","value":"{{ selectedCountry.selectedItem }}"},{"key":"spend","value":"{{ selectedSpend.value }}"}]'
    }
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ assetsTable.selectedRow.id }}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    runWhenModelUpdates={false}
    tableName="asset_management"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getAssets"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "View" }] }}
      pluginId="assetState"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="addAsset"
    actionType="INSERT"
    changeset={
      '[{"key":"name","value":"{{ newAssetName.value }}"},{"key":"description","value":"{{ newAssetDescription.value }}"},{"key":"type","value":"{{ newAssetType.selectedItem }}"},{"key":"media","value":"{{ newAssetMedia.value }}"},{"key":"language","value":"{{ newAssetLanguage.selectedItem }}"},{"key":"country","value":"{{ newAssetCountry.selectedItem }}"},{"key":"spend","value":"{{ newAssetSpend.value }}"},{"key":"id","value":"{{Math.max(...getAssets.data.id)+1}}"}]'
    }
    editorMode="gui"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="d9c5c06e-96c2-4e05-bb4a-f48d18865ba6"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="asset_management"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newAssetName"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getAssets"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newAssetDescription"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newAssetLanguage"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newAssetMedia"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newAssetName"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newAssetSpend"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newAssetType"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <WorkflowRun
    id="createOrderProcess"
    isMultiplayerEdited={false}
    resourceName="WorkflowRun"
    resourceTypeOverride=""
    workflowId="920c5aa9-7fcd-4e71-8b7f-00c8f2a51c7f"
    workflowParams={include("../lib/createOrderProcess.json", "string")}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getOrdersForAsset"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{ ordered: [] }}
      pluginId="newOrderDrawer"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newOrderType"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newOrderDate"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newOrderDescription"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="newOrderAssetSelection"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clear"
      params={{ ordered: [] }}
      pluginId="createAssetForm"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </WorkflowRun>
  <Include src="./newAssetDrawer.rsx" />
  <Include src="./newOrderDrawer.rsx" />
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text id="text9" value="#### Assets" verticalAlign="center" />
    <DropdownButton
      id="dropdownButton1"
      _colorByIndex={["", ""]}
      _fallbackTextByIndex={["", ""]}
      _imageByIndex={["", ""]}
      _values={["", ""]}
      icon="bold/interface-arrows-down-circle-2"
      iconPosition="right"
      itemMode="static"
      overlayMaxHeight={375}
      style={{ ordered: [] }}
      text="Actions"
    >
      <Option
        id="59a77"
        icon="bold/interface-edit-design-tool-selection-wand"
        label="New Asset"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="newAssetDrawer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="3e71f" icon="bold/interface-file-text" label="New Order">
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="newOrderDrawer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </DropdownButton>
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="21129" viewKey="View 1">
        <TextInput
          id="searchBox"
          iconBefore="bold/interface-search"
          label=""
          labelPosition="top"
          placeholder="Search"
        />
        <Select
          id="typeSearch"
          data="{{getAllTypes.value}}"
          emptyMessage="No options"
          iconBefore="bold/interface-bookmark-tag"
          label=""
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select Type"
          showClear={true}
          showSelectionIndicator={true}
          values=""
        />
        <Text id="text10" value="**Filters**" verticalAlign="center" />
      </View>
    </Container>
    <Table
      id="assetsTable"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ filterAssets.value }}"
      defaultFilters={{
        0: {
          ordered: [
            { id: "43198" },
            { columnId: "52c1d" },
            { operator: "intersects" },
            { value: "{{ typeSearch.selectedItem }}" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: "0" }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      linkedFilterId=""
      overflowType="pagination"
      primaryKeyColumnId="1e9af"
      searchTerm="{{ searchBox.value}}"
      serverPaginated={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{}}
      templatePageSize="25"
      toolbarPosition="bottom"
    >
      <Column
        id="1e9af"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={30.734375}
      />
      <Column
        id="ec6e0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={174.625}
      />
      <Column
        id="52c1d"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color: "{{ assetTypeColors.value[item] }}",
        }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        optionList={{
          mode: "mapped",
          mappedData: "{{ getAllTypes.data }}",
          valueByIndex: "{{ item.value }}",
          labelByIndex: "{{ item.value }}",
          colorByIndex: "{{ assetTypeColors.value[item.value] }}",
        }}
        placeholder="Select option"
        position="center"
        size={137.28125}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="5ef84"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="media"
        label="Media"
        position="center"
        size={359.90625}
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="5c72c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={237.015625}
      />
      <Column
        id="472f8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="language"
        label="Language"
        placeholder="Select option"
        position="center"
        size={81.171875}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="037d2"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="country"
        label="Country"
        placeholder="Select option"
        position="center"
        size={87.4375}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="14b59"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "USD",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        key="spend"
        label="Spend"
        placeholder="Enter value"
        position="center"
        size={74.15625}
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="assetsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="assetsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Button id="button13" text="Export Data" />
    <Include src="./tabbedContainer2.rsx" />
  </Frame>
</Screen>
