@it = Skill.create(name: "Tecnologia da Informação")
@ce = Skill.create(name: "Economia Criativa")

@web = Skill.create(name: "Desenvolvimento Web", parent: @it)
@design = Skill.create(name: "Design", parent: @ce)

Skill.create(name: "Front-end", parent: @web)
Skill.create(name: "Backe-end", parent: @web)

Skill.create(name: "Design Gráfico", parent: @design)
Skill.create(name: "Design de Moda", parent: @design)
