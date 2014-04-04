<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>PartyPay</title>
		<link href="${resource(dir: 'css', file: 'main.css')}" type="text/css" rel=stylesheet/>
		<style type="text/css" media="screen">
			#status {
				background-color: #ffffff;
				border: .2em solid #2c3e50;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #2c3e50;
				-webkit-box-shadow: 0px 0px 1.25em #2c3e50;
				box-shadow: 0px 0px 1.25em #2c3e50;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	</body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Application Status</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${GroovySystem.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>Installed Plugins</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1>PartyPay</h1>
			<p>O sistema web, junto com o aplicativo, objetiva possibilidades de venda e disponibilização de ingressos para eventos diversos como shows, cinemas, boates. Depois de efetivado a compra do ingresso via web, será gerado um ingresso eletrônico que contém um código QR onde o mesmo será armazenado em um dispositivo móvel, sendo que para habilitação da entrada de uma pessoa ao evento, bastará que ela mostre o código QR que poderá ser lido por algum tipo de dispositivo que contenha uma câmera ou qualquer aparelho que faça leitura de QR code para fazer a leitura do código.</p>

			<div id="controller-list" role="navigation">
				<h2>Menu:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>		
			<div id="controller-list" role="navigation">
				<div class="row">
					<div class="span6">
						<a href="${createLink(controller:'User')}"> Divulgue aqui o seu evento </a>
					</div>
				</div>
			</div>
	</body>
</html>