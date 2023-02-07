//
//  ViewController.swift
//  Rules
//
//  Created by Guzel Davletkildina on 05.02.2023.
//

import UIKit

class RulesViewController: UIViewController {
    
    let backgroundView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let backToMainScreenButton: UIButton = {
        let button = UIButton()
        button.setTitle("Назад", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9098039216, green: 0.8196078431, blue: 0.5137254902, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let scrollView: UIScrollView = {
       let scroll = UIScrollView()
        scroll.showsVerticalScrollIndicator = true
        scroll.isDirectionalLockEnabled = true
        scroll.showsHorizontalScrollIndicator = false
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    let rulesLabel: UILabel = {
        let label = UILabel()
        label.text = "Правила игры"
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.textColor = #colorLiteral(red: 0.737254902, green: 0.6235294118, blue: 0.9215686275, alpha: 1)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let rulesContent: UILabel = {
        let rules = UILabel()
        rules.text = "   Игра Кто хочет стать миллионером? - это конкурс викторина, в котором участники должны правильно ответить на ряд вопросов с несколькими вариантами ответов, чтобы перейти на следующий уровень. Всего 15 вопросов, каждый вопрос стоит определенной суммы денег, участники не имеют никаких временных ограничений для предоставления ответа. Участники также получают три вида подсказок, чтобы помочь себе, если они застряли на конкретном вопросе.\n\n    Вопросы “Кто хочет стать миллионером?” структурированы в соответствии с пятью различными уровнями, причем уровень сложности постепенно увеличивается. Каждый уровень содержит три вопроса.\n\n   Вопросы, сгруппированные на одном уровне, будут иметь одинаковую сложность. Например: вопросы 1-3 составляют первый уровень и будут содержать самые простые вопросы. Второй уровень (вопросы 4–6) будет несколько сложнее, за ним следует третий уровень (вопросы 7–9). Четвертый уровень (вопросы 10–12) будет состоять из действительно сложных вопросов, за которыми следует пятый и последний уровень (вопросы 13–15), имеющий самые сложные вопросы в игре.\n\n   Важно помнить, что вопросы, составляющие каждый уровень, не обязательно будут относиться к одним и тем же или даже сходным темам, но их общий уровень сложности будет одинаковым. Немаловажно, что уровни вопросов не следует путать с «несгораемыми суммами» или структурой ценностей вопросов, что они собой являют объясняется ниже.\n\n   Вопрос 1 - 100 руб.\n\n   Вопрос 2 - 200 руб.\n\n   Вопрос 3 - 300 руб.\n\n   Вопрос 4 - 500 руб.\n\n   Вопрос 5 - 1000 руб. Несгораемая сумма.\n\n   Если участники неправильно отвечают на последний вопрос вопрос, то они уходят ни с чем. Если на этот вопрос дан правильный ответ, участникам гарантируется 1000 рублей, даже если дадут неверный ответ до достижения следующей несгораемой суммы в десятом вопросе.\n\n   Подсказки\n\n   Участникам разрешается применить три подсказки, которые они могут использовать в любой момент викторины. Каждая из подсказок может быть использована только один раз.\n\n   50/50 - исключает два неправильных ответа из множественного выбора, оставляя участнику только один правильный и один неправильный вариант. Это означает, что у него есть шанс 50/50.\n\n   Задать вопрос аудитории - залу задают тот же вопрос, что и участнику, и проводится быстрый опрос, чтобы показать их ответы. На диаграмме показывается явное преимущество определенного варианта, эта подсказка может быть чрезвычайно полезной. Участнику дается возможность согласиться с результатами, полученными от аудитории.\n\n   Позвоните другу - участникам разрешается сделать 30-секундный звонок другу или члену семьи и спросить, знают ли они ответ на вопрос."
        rules.translatesAutoresizingMaskIntoConstraints = false
        rules.font = UIFont.systemFont(ofSize: 18)
        rules.textColor = #colorLiteral(red: 0.9098039216, green: 0.8196078431, blue: 0.5137254902, alpha: 1)
        rules.lineBreakMode = .byWordWrapping
        rules.numberOfLines = 0
        return rules
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundView)
        view.addSubview(scrollView)
        scrollView.addSubview(rulesContent)
        view.addSubview(rulesLabel)
        view.addSubview(backToMainScreenButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {

        NSLayoutConstraint.activate([
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                   
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            
            rulesContent.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            rulesContent.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor),
            rulesContent.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor),
            rulesContent.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            rulesContent.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
                   
            rulesLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            rulesLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            rulesLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            rulesLabel.heightAnchor.constraint(lessThanOrEqualToConstant: 150),
                   
            backToMainScreenButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            backToMainScreenButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20)
        ]) 
    }
    
    @objc func backButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    
}


