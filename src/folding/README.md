# Folding@Home

> Lead: Troy Wolfe [troy@wolfecs.biz](mailto:troy@wolfecs.biz)

Have a computer? You can help!

Join our folding@home team: # 257578

For specific FAQs and how to get started, see the main site's
[I have a computer](https://wytechcc.com/help-and-resources/i-have-a-computer/) page.


There's also a DigitalOcean app image, if you don't have
a computer but do know how to use DigitalOcean.
[folding@home](https://marketplace.digitalocean.com/apps/folding-home)

<iframe src="https://stats.foldingathome.org/team/257578" style="width:100%; height:775px;" scrolling="no"></iframe>

## Grrr, It's doing Cancer instead of COVID. Why?
> Because so many people volunteered, they got caught by surprise.

During their [Reddit AMA](https://www.reddit.com/r/pcmasterrace/comments/flgm7q/ama_with_the_team_behind_foldinghome_coronavirus/), the
folding@home team addressed becoming (possibly) [twice](https://www.pcgamer.com/foldinghome-project-is-crunching-data-twice-as-fast-as-the-top-supercomputer/) as
powerful as the largest research supercomputer (and that
was on march 19th!). During that time, they've struggled to both A:
prepare projects for distribution & B: Recieve project results.

The folding@home team has come leaps and bounds in terms of bandwidth
for recieving results. But, for the time being, sometimes you'll run
a Cancer job instead. Why's that? Because they were older jobs, and
they'd rather not see your servers go unused. (I wouldn't, personally,
as I'm renting mine).

As new COVID jobs become available, they have higher priority and will
get assigned first, rest assured.

The client supports numerous different diseases.  To make sure your computations are fighting COVID-19, configure your client settings as follows:

* Webcontrol: “Any disease” in the list “I support research fighting”
* Advanced Control/FAHControl: Configure > Advanced, select “Any” in the list “Cause Preference”
* The COVID-19 related projects are on top priority and will be assigned automatically.


> Grow up. If you cure cancer accidentally, is it really all that bad?

## Automation
> Automation Lead: Cameron Whiting

If you've got a lab that's sitting idle, consider donating
computing time to [Folding@Home](https://foldingathome.org/iamoneinamillion/)

We're working on automating folding deployments in the following
environments, and for the following use cases:


1. [ ] Powershell
2. [ ] Ansible
3. [ ] Terraform
4. [ ] Docker-Compose
5. [ ] Docker-Swarm

* [ ] School District Computer Labs
* [ ] Library Computer Labs
* [ ] Business Server Blades
* [ ] Cloud IaaS (AWS, GCE, DO)

Visit the [CovidComputerLab](https://github.com/wytechcc/CovidComputerLab) repo for
our automation scripts. We need lab administrators to help triage deployments!

## Existing Automation (external projects)

* [https://github.com/topics/foldingathome](https://github.com/topics/foldingathome)
* [https://github.com/stefancrain/folding-at-home](https://github.com/stefancrain/folding-at-home)
* Ansible example (linux) - [https://github.com/spruceki/folding-at-home](https://github.com/spruceki/folding-at-home)
