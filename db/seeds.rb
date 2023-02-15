Fund.create name: "Fillipe"
ChartOfAccount.create description: "Conta Pessoal", fund_id: 1


root_account1 = SyntheticAccount.create
acc = root_account1.build_account account_number: "1", description: "Ativo", fund_id: 1, chart_of_account_id: 1
acc.save

syn_acc1 = SyntheticAccount.create
acc = syn_acc1.build_account account_number: "1", description: "Circulante", fund_id: 1, chart_of_account_id: 1, parent: root_account1.account
acc.save

syn_acc3 = SyntheticAccount.create
acc = syn_acc3.build_account account_number: "1", description: "Dinheiro", fund_id: 1, chart_of_account_id: 1, parent: syn_acc1.account
acc.save

ana_acc1 = AnalyticAccount.create amount: false
acc = ana_acc1.build_account account_number: "1", description: "Carteira", fund_id: 1, chart_of_account_id: 1, parent: syn_acc3.account
acc.save

ana_acc2 = AnalyticAccount.create amount: false
acc = ana_acc2.build_account account_number: "2", description: "Caixinha", fund_id: 1, chart_of_account_id: 1, parent: syn_acc3.account
acc.save

ana_acc3 = AnalyticAccount.create amount: false
acc = ana_acc3.build_account account_number: "3", description: "Nubank", fund_id: 1, chart_of_account_id: 1, parent: syn_acc3.account
acc.save

syn_acc4 = SyntheticAccount.create
acc = syn_acc4.build_account account_number: "2", description: "Investimento", fund_id: 1, chart_of_account_id: 1, parent: syn_acc1.account
acc.save

syn_acc5 = SyntheticAccount.create
acc = syn_acc5.build_account account_number: "1", description: "Renda fixa", fund_id: 1, chart_of_account_id: 1, parent: syn_acc4.account
acc.save

ana_acc4 = AnalyticAccount.create amount: false
acc = ana_acc4.build_account account_number: "1", description: "Viagem", fund_id: 1, chart_of_account_id: 1, parent: syn_acc5.account
acc.save

syn_acc6 = SyntheticAccount.create
acc = syn_acc6.build_account account_number: "2", description: "Renda variável", fund_id: 1, chart_of_account_id: 1, parent: syn_acc4.account
acc.save

syn_acc7 = SyntheticAccount.create
acc = syn_acc7.build_account account_number: "1", description: "Brasil", fund_id: 1, chart_of_account_id: 1, parent: syn_acc6.account
acc.save

ana_acc5 = AnalyticAccount.create amount: false
acc = ana_acc5.build_account account_number: "1", description: "BBPO", fund_id: 1, chart_of_account_id: 1, parent: syn_acc7.account
acc.save

syn_acc8 = SyntheticAccount.create
acc = syn_acc8.build_account account_number: "2", description: "Exterior", fund_id: 1, chart_of_account_id: 1, parent: syn_acc6.account
acc.save

ana_acc6 = AnalyticAccount.create amount: false
acc = ana_acc6.build_account account_number: "1", description: "Bitcoin", fund_id: 1, chart_of_account_id: 1, parent: syn_acc8.account
acc.save

syn_acc2 = SyntheticAccount.create
acc = syn_acc2.build_account account_number: "2", description: "Não circulante", fund_id: 1, chart_of_account_id: 1, parent: root_account1.account
acc.save

syn_acc8 = SyntheticAccount.create
acc = syn_acc8.build_account account_number: "1", description: "Móveis", fund_id: 1, chart_of_account_id: 1, parent: syn_acc2.account
acc.save

syn_acc9 = SyntheticAccount.create
acc = syn_acc9.build_account account_number: "2", description: "Imóveis", fund_id: 1, chart_of_account_id: 1, parent: syn_acc2.account
acc.save

syn_acc10 = SyntheticAccount.create
acc = syn_acc10.build_account account_number: "3", description: "Empréstimos", fund_id: 1, chart_of_account_id: 1, parent: syn_acc2.account
acc.save

ana_acc15 = AnalyticAccount.create amount: false
acc = ana_acc15.build_account account_number: "1", description: "Denilson", fund_id: 1, chart_of_account_id: 1, parent: syn_acc10.account
acc.save


root_account2 = SyntheticAccount.create
acc = root_account2.build_account account_number: "2", description: "Passivo", fund_id: 1, chart_of_account_id: 1
acc.save

syn_acc11 = SyntheticAccount.create
acc = syn_acc11.build_account account_number: "1", description: "Circulante", fund_id: 1, chart_of_account_id: 1, parent: root_account2.account
acc.save

syn_acc13 = SyntheticAccount.create
acc = syn_acc13.build_account account_number: "1", description: "Cartões", fund_id: 1, chart_of_account_id: 1, parent: syn_acc11.account
acc.save

ana_acc7 = AnalyticAccount.create amount: false
acc = ana_acc7.build_account account_number: "1", description: "Nubank", fund_id: 1, chart_of_account_id: 1, parent: syn_acc13.account
acc.save

syn_acc12 = SyntheticAccount.create
acc = syn_acc12.build_account account_number: "2", description: "Não circulante", fund_id: 1, chart_of_account_id: 1, parent: root_account2.account
acc.save

syn_acc14 = SyntheticAccount.create
acc = syn_acc14.build_account account_number: "1", description: "Empréstimos", fund_id: 1, chart_of_account_id: 1, parent: syn_acc12.account
acc.save

ana_acc9 = AnalyticAccount.create amount: false
acc = ana_acc9.build_account account_number: "1", description: "Denilson", fund_id: 1, chart_of_account_id: 1, parent: syn_acc14.account
acc.save


root_account3 = SyntheticAccount.create
acc = root_account3.build_account account_number: "3", description: "Despesas", fund_id: 1, chart_of_account_id: 1
acc.save

syn_acc15 = SyntheticAccount.create
acc = syn_acc15.build_account account_number: "1", description: "Pessoal", fund_id: 1, chart_of_account_id: 1, parent: root_account3.account
acc.save

syn_acc18 = SyntheticAccount.create
acc = syn_acc18.build_account account_number: "1", description: "Fixa", fund_id: 1, chart_of_account_id: 1, parent: syn_acc15.account
acc.save

ana_acc16 = AnalyticAccount.create amount: false
acc = ana_acc16.build_account account_number: "1", description: "Personal trainer", fund_id: 1, chart_of_account_id: 1, parent: syn_acc18.account
acc.save

syn_acc19 = SyntheticAccount.create
acc = syn_acc19.build_account account_number: "2", description: "Variável", fund_id: 1, chart_of_account_id: 1, parent: syn_acc15.account
acc.save

syn_acc16 = SyntheticAccount.create
acc = syn_acc16.build_account account_number: "2", description: "Casa", fund_id: 1, chart_of_account_id: 1, parent: root_account3.account
acc.save

syn_acc17 = SyntheticAccount.create
acc = syn_acc17.build_account account_number: "3", description: "Viagens", fund_id: 1, chart_of_account_id: 1, parent: root_account3.account
acc.save

syn_acc20 = SyntheticAccount.create
acc = syn_acc20.build_account account_number: "1", description: "Parque aquático", fund_id: 1, chart_of_account_id: 1, parent: syn_acc17.account
acc.save

ana_acc13 = AnalyticAccount.create amount: false
acc = ana_acc13.build_account account_number: "1", description: "Hospedagem", fund_id: 1, chart_of_account_id: 1, parent: syn_acc20.account
acc.save

ana_acc14 = AnalyticAccount.create amount: false
acc = ana_acc14.build_account account_number: "2", description: "Transporte", fund_id: 1, chart_of_account_id: 1, parent: syn_acc20.account
acc.save

syn_acc21 = SyntheticAccount.create
acc = syn_acc21.build_account account_number: "4", description: "Impostos", fund_id: 1, chart_of_account_id: 1, parent: root_account3.account
acc.save

ana_acc10 = AnalyticAccount.create amount: false
acc = ana_acc10.build_account account_number: "1", description: "INSS", fund_id: 1, chart_of_account_id: 1, parent: syn_acc21.account
acc.save

ana_acc11 = AnalyticAccount.create amount: false
acc = ana_acc11.build_account account_number: "2", description: "IRRF", fund_id: 1, chart_of_account_id: 1, parent: syn_acc21.account
acc.save


root_account4 = SyntheticAccount.create
acc = root_account4.build_account account_number: "4", description: "Receitas", fund_id: 1, chart_of_account_id: 1
acc.save

syn_acc22 = SyntheticAccount.create
acc = syn_acc22.build_account account_number: "1", description: "Salário", fund_id: 1, chart_of_account_id: 1, parent: root_account4.account
acc.save

ana_acc8 = AnalyticAccount.create amount: false
acc = ana_acc8.build_account account_number: "1", description: "Acsiv", fund_id: 1, chart_of_account_id: 1, parent: syn_acc22.account
acc.save

syn_acc23 = SyntheticAccount.create
acc = syn_acc23.build_account account_number: "2", description: "Dividendos", fund_id: 1, chart_of_account_id: 1, parent: root_account4.account
acc.save

ana_acc12 = AnalyticAccount.create amount: false
acc = ana_acc12.build_account account_number: "3", description: "Exercício anterior", fund_id: 1, chart_of_account_id: 1, parent: root_account4.account
acc.save


ft = FinancialTransaction.create description: "Valor inicial", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 100000, description: "Debita conta Denilson", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc9
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 100000, description: "Credita conta Caixinha", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc2
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 133015, description: "Debita conta Exercício anterior", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc12
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 133015, description: "Credita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc3


ft = FinancialTransaction.create description: "Salário de janeiro/23", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 260400, description: "Debita conta Acsiv", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc8
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 235188, description: "Credita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc3
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 21580, description: "Credita conta INSS", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc10
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 3632, description: "Credita conta IRRF", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc11


ft = FinancialTransaction.create description: "Pagamento da hospedagem do parque aquático", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 5651, description: "Debita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc3
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 5651, description: "Credita conta Hospedagem", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc13


ft = FinancialTransaction.create description: "Reserva valor do pagamento da van para o parque aquático", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 24666, description: "Debita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc3
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 24666, description: "Credita conta Viagem", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc4


ft = FinancialTransaction.create description: "Troca dinheiro entre Nubank e Caixinha", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 27400, description: "Debita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc3
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 27400, description: "Credita conta Caixinha", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc2


ft = FinancialTransaction.create description: "Compra no supermercado", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 10549, description: "Debita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc7
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 10549, description: "Credita conta Denilson", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc15


ft = FinancialTransaction.create description: "Compra no supermercado", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 2740, description: "Debita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc7
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 2740, description: "Credita conta Denilson", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc15


ft = FinancialTransaction.create description: "Recebimento da compra no supermercado", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 13289, description: "Debita conta Denilson", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc15
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 13289, description: "Credita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc3


ft = FinancialTransaction.create description: "Empréstimo pela TV", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 177828, description: "Credita conta Denilson", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc15
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 177828, description: "Debita conta Exercício anterior", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc12


ft = FinancialTransaction.create description: "Dinheiro para o portão", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 250000, description: "Debita conta Denilson", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc9
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 250000, description: "Credita conta Exercício anterior", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc12


ft = FinancialTransaction.create description: "Empréstimo pela máquina de lavar", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 149694, description: "Credita conta Denilson", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc15
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 149694, description: "Debita conta Exercício anterior", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc12


ft = FinancialTransaction.create description: "Empréstimo pelo computador", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 170574, description: "Credita conta Denilson", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc15
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 170574, description: "Debita conta Exercício anterior", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc12


ft = FinancialTransaction.create description: "Troca dinheiro entre Nubank e Caixinha", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 40000, description: "Credita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc3
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 40000, description: "Debita conta Caixinha", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc2


ft = FinancialTransaction.create description: "Personal Trainer", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 30000, description: "Debita conta Nubank", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc7
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 30000, description: "Credita conta Personal trainer", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: ft.id, analytic_account: ana_acc16
