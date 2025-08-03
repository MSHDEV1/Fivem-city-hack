script author MSHDEV!!

script çalışması için qb-core , ox_lib ,qb-weathersync gereklidir

Script Kurulumu 
qb-core/shared/jobs.lua ya

  hacker = {
		label = 'Hacker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['1'] = { name = 'Baby', payment = 0 },
			['2'] = { name = 'First God', payment = 0 },
			['3'] = { name = 'Medium God', payment = 0 },
			['4'] = { name = 'God Helper', payment = 0 },
			['5'] = { name = 'God', isboss = true, payment = 0 },
		},
	},
bunu kopyala yapıştırın
qb-weathersync ile çalışır eğer bu scripti kullanmıyorsanız
SetArtificialLightsState(true)
SetArtificialLightsStateAffectsVehicles(true)

olarak kullanın