Fund.create name: "Fundo"
ChartOfAccount.create description: "Contabilidade", fund_id: 1


syn_acc1 = SyntheticAccount.create
acc = syn_acc1.build_account account_number: "1", description: "Ativo", fund_id: 1, chart_of_account_id: 1
acc.save

ana_acc1 = AnalyticAccount.create amount: false
acc = ana_acc1.build_account account_number: "1", description: "Salário", fund_id: 1, chart_of_account_id: 1, parent: syn_acc1.account
acc.save

syn_acc2 = SyntheticAccount.create
acc = syn_acc2.build_account account_number: "2", description: "Investimento", fund_id: 1, chart_of_account_id: 1, parent: syn_acc1.account
acc.save

ana_acc2 = AnalyticAccount.create amount: false
acc = ana_acc2.build_account account_number: "1", description: "Financeiro", fund_id: 1, chart_of_account_id: 1, parent: syn_acc2.account
acc.save

ana_acc3 = AnalyticAccount.create amount: false
acc = ana_acc3.build_account account_number: "2", description: "Não financeiro", fund_id: 1, chart_of_account_id: 1, parent: syn_acc2.account
acc.save


syn_acc3 = SyntheticAccount.create
acc = syn_acc3.build_account account_number: "2", description: "Passivo", fund_id: 1, chart_of_account_id: 1
acc.save

ana_acc4 = AnalyticAccount.create amount: false
acc = ana_acc4.build_account account_number: "1", description: "Reforma", fund_id: 1, chart_of_account_id: 1, parent: syn_acc3.account
acc.save

ana_acc5 = AnalyticAccount.create amount: false
acc = ana_acc5.build_account account_number: "2", description: "Aikido", fund_id: 1, chart_of_account_id: 1, parent: syn_acc3.account
acc.save

ana_acc6 = AnalyticAccount.create amount: false
acc = ana_acc6.build_account account_number: "3", description: "Fatura do cartão", fund_id: 1, chart_of_account_id: 1, parent: syn_acc3.account
  acc.save

ana_acc7 = AnalyticAccount.create amount: false
acc = ana_acc7.build_account account_number: "4", description: "Despesa geral", fund_id: 1, chart_of_account_id: 1, parent: syn_acc3.account
acc.save

FinancialTransaction.create description: "Primeiro salário", date: Date.today, chart_of_account_id: 1, fund_id: 1
Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 240000, description: "Credita conta de salário", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: 1, analytic_account: ana_acc1

FinancialTransaction.create description: "Investir parte do salário", date: Date.today, chart_of_account_id: 1, fund_id: 1
  Entry.create entry_type: EntryTypeEnum::DEBIT, value_cents: 100000, description: "Debita conta de salário", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: 1, analytic_account: ana_acc1
  Entry.create entry_type: EntryTypeEnum::CREDIT, value_cents: 100000, description: "Credita conta de investimento financeiro", chart_of_account_id: 1, fund_id: 1, financial_transaction_id: 1, analytic_account: ana_acc2
  
