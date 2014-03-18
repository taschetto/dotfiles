




<!DOCTYPE html>
<html class=" ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    
    <title>vim/syntax/txt.vim at master · taschetto/vim</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <meta property="fb:app_id" content="1401488693436528"/>

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="taschetto/vim" name="twitter:title" /><meta content="My vim configuration." name="twitter:description" /><meta content="https://avatars3.githubusercontent.com/u/5279182?s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars3.githubusercontent.com/u/5279182?s=400" property="og:image" /><meta content="taschetto/vim" property="og:title" /><meta content="https://github.com/taschetto/vim" property="og:url" /><meta content="My vim configuration." property="og:description" />

    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035/">
    <link rel="xhr-socket" href="/_sockets" />


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="C9368118:7E95:8CBD77:532797B0" name="octolytics-dimension-request_id" /><meta content="5279182" name="octolytics-actor-id" /><meta content="taschetto" name="octolytics-actor-login" /><meta content="d63e987d7c315c12bd21ef433f46ab6658427498c0ff60e3282229f89df64b76" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://github.global.ssl.fastly.net/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="csKN6gx49UbaFkQLFdIp3UJwdU6FIJSFsv2PXHKIt6A=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-8a247d1ca7f16ee20b1b22975990df30ce83c27a.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-43c85266b41a94cc6a086312256ffbb8b0340a48.css" media="all" rel="stylesheet" type="text/css" />
    


        <script crossorigin="anonymous" src="https://github.global.ssl.fastly.net/assets/frameworks-1a87607f18aafc1a4945718470fbc37ad0d882ea.js" type="text/javascript"></script>
        <script async="async" crossorigin="anonymous" src="https://github.global.ssl.fastly.net/assets/github-aaf7c886c869a715c92ab21e6736e72beafc7e90.js" type="text/javascript"></script>
        
        
      <meta http-equiv="x-pjax-version" content="9df1f0bdf66a8c4f67047187583976b8">

        <link data-pjax-transient rel='permalink' href='/taschetto/vim/blob/7fdd038fc66e2869127df39c19a17d46fc1e5baa/syntax/txt.vim'>

  <meta name="description" content="My vim configuration." />

  <meta content="5279182" name="octolytics-dimension-user_id" /><meta content="taschetto" name="octolytics-dimension-user_login" /><meta content="17752901" name="octolytics-dimension-repository_id" /><meta content="taschetto/vim" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="17752901" name="octolytics-dimension-repository_network_root_id" /><meta content="taschetto/vim" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/taschetto/vim/commits/master.atom" rel="alternate" title="Recent Commits to vim:master" type="application/atom+xml" />

  </head>


  <body class="logged_in  env-production linux vis-public page-blob">
    <a href="#start-of-content" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    
    <a href="/notifications" aria-label="You have no unread notifications" class="notification-indicator tooltipped tooltipped-s" data-gotokey="n">
        <span class="mail-status all-read"></span>
</a>

      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey=" s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="taschetto"
      data-repo="taschetto/vim"
      data-branch="master"
      data-sha="06480444f20336063970f55c644014318d922cde"
  >

    <input type="hidden" name="nwo" value="taschetto/vim" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target" role="button" aria-haspopup="true">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container" aria-hidden="true">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="help tooltipped tooltipped-s" aria-label="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
          <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/taschetto" class="name">
        <img alt="Guilherme Taschetto" class=" js-avatar" data-user="5279182" height="20" src="https://avatars0.githubusercontent.com/u/5279182?s=140" width="20" /> taschetto
      </a>
    </li>

    <li class="new-menu dropdown-toggle js-menu-container">
      <a href="#" class="js-menu-target tooltipped tooltipped-s" aria-label="Create new...">
        <span class="octicon octicon-plus"></span>
        <span class="dropdown-arrow"></span>
      </a>

      <div class="new-menu-content js-menu-content">
      </div>
    </li>

    <li>
      <a href="/settings/profile" id="account_settings"
        class="tooltipped tooltipped-s"
        aria-label="Account settings ">
        <span class="octicon octicon-tools"></span>
      </a>
    </li>
    <li>
      <a class="tooltipped tooltipped-s" href="/logout" data-method="post" id="logout" aria-label="Sign out">
        <span class="octicon octicon-log-out"></span>
      </a>
    </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>


    <li class="section-title">
      <span title="taschetto/vim">This repository</span>
    </li>
      <li>
        <a href="/taschetto/vim/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
      <li>
        <a href="/taschetto/vim/settings/collaboration"><span class="octicon octicon-person-add"></span> New collaborator</a>
      </li>
</ul>

</div>


    
  </div>
</div>

      

        



      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="csKN6gx49UbaFkQLFdIp3UJwdU6FIJSFsv2PXHKIt6A=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="17752901" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/taschetto/vim/watchers">
        1
      </a>
      <span class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0" aria-haspopup="true">
        <span class="js-select-button">
          <span class="octicon octicon-eye-unwatch"></span>
          Unwatch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for conversations in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for conversations in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  

  <div class="js-toggler-container js-social-container starring-container ">
    <a href="/taschetto/vim/unstar"
      class="minibutton with-count js-toggler-target star-button starred"
      aria-label="Unstar this repository" title="Unstar taschetto/vim" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
    </a>

    <a href="/taschetto/vim/star"
      class="minibutton with-count js-toggler-target star-button unstarred"
      aria-label="Star this repository" title="Star taschetto/vim" data-remote="true" data-method="post" rel="nofollow">
      <span class="octicon octicon-star"></span><span class="text">Star</span>
    </a>

      <a class="social-count js-social-count" href="/taschetto/vim/stargazers">
        0
      </a>
  </div>

  </li>


        <li>
          <a href="/taschetto/vim/fork" class="minibutton with-count js-toggler-target fork-button lighter tooltipped-n" title="Fork your own copy of taschetto/vim to your account" aria-label="Fork your own copy of taschetto/vim to your account" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/taschetto/vim/network" class="social-count">0</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/taschetto" class="url fn" itemprop="url" rel="author"><span itemprop="title">taschetto</span></a>
          </span>
          <span class="repohead-name-divider">/</span>
          <strong><a href="/taschetto/vim" class="js-current-repository js-repo-home-link">vim</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline js-new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            

<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/taschetto/vim" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /taschetto/vim">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/taschetto/vim/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /taschetto/vim/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/taschetto/vim/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /taschetto/vim/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped tooltipped-w" aria-label="Wiki">
          <a href="/taschetto/vim/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_wiki /taschetto/vim/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/taschetto/vim/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /taschetto/vim/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/taschetto/vim/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /taschetto/vim/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Network">
        <a href="/taschetto/vim/network" aria-label="Network" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-selected-links="repo_network /taschetto/vim/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


      <div class="sunken-menu-separator"></div>
      <ul class="sunken-menu-group">
        <li class="tooltipped tooltipped-w" aria-label="Settings">
          <a href="/taschetto/vim/settings"
            class="sunken-menu-item" data-pjax aria-label="Settings">
            <span class="octicon octicon-tools"></span> <span class="full-word">Settings</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </a>
        </li>
      </ul>
  </div>
</div>

              <div class="only-with-full-nav">
                

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=push">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/taschetto/vim.git" readonly="readonly">

    <span aria-label="copy to clipboard" class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/taschetto/vim.git" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=push">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="git@github.com:taschetto/vim.git" readonly="readonly">

    <span aria-label="copy to clipboard" class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:taschetto/vim.git" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=push">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone js-url-field"
           value="https://github.com/taschetto/vim" readonly="readonly">

    <span aria-label="copy to clipboard" class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/taschetto/vim" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <span class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <a href="https://help.github.com/articles/which-remote-url-should-i-use">
    <span class="octicon octicon-question"></span>
    </a>
  </span>
</p>



                <a href="/taschetto/vim/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download taschetto/vim as a zip file"
                   title="Download taschetto/vim as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:6e985211d858d2b259719b699ccf1b65 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/taschetto/vim/find/master" data-pjax data-hotkey="t" class="js-show-file-finder" style="display:none">Show File Finder</a>

<div class="file-navigation">
  

<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/taschetto/vim/blob/master/syntax/txt.vim"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <form accept-charset="UTF-8" action="/taschetto/vim/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="csKN6gx49UbaFkQLFdIp3UJwdU6FIJSFsv2PXHKIt6A=" /></div>
            <span class="octicon octicon-git-branch-create select-menu-item-icon"></span>
            <div class="select-menu-item-text">
              <h4>Create branch: <span class="js-new-item-name"></span></h4>
              <span class="description">from ‘master’</span>
            </div>
            <input type="hidden" name="name" id="name" class="js-new-item-value">
            <input type="hidden" name="branch" id="branch" value="master" />
            <input type="hidden" name="path" id="path" value="syntax/txt.vim" />
          </form> <!-- /.select-menu-item -->

      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/taschetto/vim" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">vim</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/taschetto/vim/tree/master/syntax" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">syntax</span></a></span><span class="separator"> / </span><strong class="final-path">txt.vim</strong> <span aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="syntax/txt.vim" data-copied-hint="copied!"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/taschetto/vim/contributors/master/syntax/txt.vim">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
        <span class="meta-divider"></span>
          <span>74 lines (68 sloc)</span>
          <span class="meta-divider"></span>
        <span>2.959 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
                <a class="minibutton js-update-url-with-hash"
                   href="/taschetto/vim/edit/master/syntax/txt.vim"
                   data-method="post" rel="nofollow" data-hotkey="e">Edit</a>
          <a href="/taschetto/vim/raw/master/syntax/txt.vim" class="button minibutton " id="raw-url">Raw</a>
            <a href="/taschetto/vim/blame/master/syntax/txt.vim" class="button minibutton js-update-url-with-hash">Blame</a>
          <a href="/taschetto/vim/commits/master/syntax/txt.vim" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->

            <a class="minibutton danger empty-icon"
               href="/taschetto/vim/delete/master/syntax/txt.vim"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">

          Delete
        </a>
      </div><!-- /.actions -->
    </div>
        <div class="blob-wrapper data type-viml js-blob-data">
        <table class="file-code file-diff tab-size-8">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>

            </td>
            <td class="blob-line-code"><div class="code-body highlight"><pre><div class='line' id='LC1'><span class="c">&quot; Vim syntax file</span></div><div class='line' id='LC2'><span class="c">&quot; Filename: txt.vim</span></div><div class='line' id='LC3'><span class="c">&quot; Language: plain text :)</span></div><div class='line' id='LC4'><span class="c">&quot; Maintainer: Aurelio Marinho Jargas</span></div><div class='line' id='LC5'><span class="c">&quot; URL: http://aurelio.net/vim/txt.vim</span></div><div class='line' id='LC6'><span class="c">&quot; Instalacao: Colocar no final do seu ~/.vimrc:</span></div><div class='line' id='LC7'><span class="c">&quot;   au BufNewFile,BufRead *.txt source ~/rota/para/txt.vim</span></div><div class='line' id='LC8'><span class="c">&quot;</span></div><div class='line' id='LC9'><span class="c">&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;</span></div><div class='line' id='LC10'><span class="k">syn</span> clear</div><div class='line' id='LC11'><span class="k">syn</span> case ignore</div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="c">&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;</span></div><div class='line' id='LC14'><span class="c">&quot;MISC:</span></div><div class='line' id='LC15'><span class="k">syn</span> keyword txtTodo    TODO FIXME XXX contained</div><div class='line' id='LC16'><span class="k">syn</span> <span class="k">match</span>   txtComment <span class="s1">&#39;^#.*$&#39;</span> contains<span class="p">=</span>txtTodo</div><div class='line' id='LC17'><span class="k">syn</span> <span class="k">match</span>   txtNumber  <span class="s1">&#39;\&lt;\d\+\([,.]\d\+\)\{,1}\&gt;&#39;</span></div><div class='line' id='LC18'><span class="k">syn</span> <span class="k">match</span>   txtPercent <span class="s1">&#39;\&lt;\d\+\([,.]\d\+\)\{,1}%&#39;</span></div><div class='line' id='LC19'><span class="c">&quot;syn match   txtBlank   &#39;\s\+$&#39;</span></div><div class='line' id='LC20'><span class="k">syn</span> <span class="k">match</span>   txtBar     <span class="s1">&#39;^\s*[_=-]\{20,}\s*$&#39;</span></div><div class='line' id='LC21'><span class="k">syn</span> <span class="k">match</span>   txtSpecial <span class="s1">&#39;[][(){}®]&#39;</span></div><div class='line' id='LC22'><span class="k">syn</span> <span class="k">match</span>   txtSpecial <span class="s1">&#39;\&lt;\(US\|R\)\$&#39;</span></div><div class='line' id='LC23'><br/></div><div class='line' id='LC24'><span class="c">&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;</span></div><div class='line' id='LC25'><span class="c">&quot;URL EMAIL:</span></div><div class='line' id='LC26'><span class="k">syn</span> <span class="k">match</span> txtEmail <span class="s1">&#39;\&lt;[A-Za-z0-9_.-]\+@\([A-Za-z0-9_-]\+\.\)\+[A-Za-z]\{2,4}\&gt;\(?[A-Za-z0-9%&amp;=+.,@*_-]\+\)\=&#39;</span></div><div class='line' id='LC27'><span class="k">syn</span> <span class="k">match</span> txtUrl   <span class="s1">&#39;\&lt;\(\(https\=\|ftp\|news\|telnet\|gopher\|wais\)://\([A-Za-z0-9._-]\+\(:[^ @]*\)\=@\)\=\|\(www[23]\=\.\|ftp\.\)\)[A-Za-z0-9%._/~:,=$@-]\+\&gt;/*\(?[A-Za-z0-9/%&amp;=+.,@*_-]\+\)\=\(#[A-Za-z0-9%._-]\+\)\=&#39;</span></div><div class='line' id='LC28'><span class="k">syn</span> <span class="k">match</span> txtEmailMsg <span class="s1">&#39;^\s*\(From\|De\|To\|Para\|Date\|Data\|Assunto\|Subject\):.*&#39;</span></div><div class='line' id='LC29'><span class="k">syn</span> <span class="k">match</span> txtEmailQuote <span class="s1">&#39;^\(&gt;\($\| \)\)\+&#39;</span></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><span class="c">&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;</span></div><div class='line' id='LC32'><span class="c">&quot;LIST:</span></div><div class='line' id='LC33'><span class="k">syn</span> <span class="k">match</span> txtList    <span class="s1">&#39;^ *[-+*.] [^ ]&#39;</span>me<span class="p">=</span><span class="k">e</span><span class="m">-1</span></div><div class='line' id='LC34'><span class="k">syn</span> <span class="k">match</span> txtList    <span class="s1">&#39;^ *[0-9]\+) &#39;</span></div><div class='line' id='LC35'><span class="k">syn</span> <span class="k">match</span> txtDefList <span class="s1">&#39;^ *[^:]\{6,\}:&#39;</span>hs<span class="p">=</span><span class="k">e</span> contains<span class="p">=</span>ALL</div><div class='line' id='LC36'><br/></div><div class='line' id='LC37'><span class="c">&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;</span></div><div class='line' id='LC38'><span class="c">&quot;FONT BEAUTIFIERS:</span></div><div class='line' id='LC39'><span class="k">syn</span> <span class="k">match</span>   txtUnderline  <span class="s1">&#39;_[^_[:blank:]].\{-}_&#39;</span>hs<span class="p">=</span><span class="k">s</span><span class="p">+</span><span class="m">1</span><span class="p">,</span>he<span class="p">=</span><span class="k">e</span><span class="m">-1</span></div><div class='line' id='LC40'><span class="k">syn</span> <span class="k">match</span>   txtBold       <span class="s1">&#39;\*[^*[:blank:]].\{-}\*&#39;</span>hs<span class="p">=</span><span class="k">s</span><span class="p">+</span><span class="m">1</span><span class="p">,</span>he<span class="p">=</span><span class="k">e</span><span class="m">-1</span></div><div class='line' id='LC41'><span class="k">syn</span> <span class="k">match</span>   txtMonospace  <span class="s2">&quot;`[^`]\+`&quot;</span>hs<span class="p">=</span><span class="k">s</span><span class="p">+</span><span class="m">1</span><span class="p">,</span>he<span class="p">=</span><span class="k">e</span><span class="m">-1</span></div><div class='line' id='LC42'><span class="c">&quot; max: two lines</span></div><div class='line' id='LC43'><span class="k">syn</span> <span class="k">match</span>   txtParentesis <span class="s2">&quot;([^)]\+\(\n\)\=[^)]*)&quot;</span> contains<span class="p">=</span>txtUrl<span class="p">,</span>txtEmail</div><div class='line' id='LC44'><span class="k">syn</span> <span class="k">match</span>   txtQuotes     <span class="s1">&#39;&quot;[^&quot;]\+\(\n\)\=[^&quot;]*&quot;&#39;</span>hs<span class="p">=</span><span class="k">s</span><span class="p">+</span><span class="m">1</span><span class="p">,</span>he<span class="p">=</span><span class="k">e</span><span class="m">-1</span></div><div class='line' id='LC45'><span class="c">&quot; max: two words</span></div><div class='line' id='LC46'><span class="k">syn</span> <span class="k">match</span>   txtQuotes     <span class="s2">&quot;&#39;\w\+ \?\w\+&#39;&quot;</span>hs<span class="p">=</span><span class="k">s</span><span class="p">+</span><span class="m">1</span><span class="p">,</span>he<span class="p">=</span><span class="k">e</span><span class="m">-1</span></div><div class='line' id='LC47'><br/></div><div class='line' id='LC48'><span class="c">&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;</span></div><div class='line' id='LC49'><span class="c">&quot; color definitions (specific)</span></div><div class='line' id='LC50'><span class="k">hi</span> txtBar         <span class="nb">term</span><span class="p">=</span><span class="nb">bold</span>        cterm<span class="p">=</span><span class="nb">bold</span>        <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC51'><span class="k">hi</span> txtBold        <span class="nb">term</span><span class="p">=</span><span class="nb">bold</span>        cterm<span class="p">=</span><span class="nb">bold</span>        <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC52'><span class="k">hi</span> txtItalic      <span class="nb">term</span><span class="p">=</span><span class="nb">italic</span>      cterm<span class="p">=</span><span class="nb">italic</span>      <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC53'><span class="k">hi</span> txtUnderline   <span class="nb">term</span><span class="p">=</span><span class="nb">underline</span>   cterm<span class="p">=</span><span class="nb">underline</span>   <span class="k">gui</span><span class="p">=</span><span class="nb">underline</span></div><div class='line' id='LC54'><span class="c">&quot;</span></div><div class='line' id='LC55'><span class="c">&quot; color definitions (using Vim defaults)</span></div><div class='line' id='LC56'><span class="k">hi</span> link txtComment      Comment</div><div class='line' id='LC57'><span class="k">hi</span> link txtQuotes       String</div><div class='line' id='LC58'><span class="k">hi</span> link txtBlank        <span class="k">Error</span></div><div class='line' id='LC59'><span class="k">hi</span> link txtNumber       Number</div><div class='line' id='LC60'><span class="k">hi</span> link txtPercent      Number</div><div class='line' id='LC61'><span class="k">hi</span> link txtTodo         Todo</div><div class='line' id='LC62'><span class="k">hi</span> link txtEmail        PreProc</div><div class='line' id='LC63'><span class="k">hi</span> link txtUrl          PreProc</div><div class='line' id='LC64'><span class="k">hi</span> link txtList         Statement</div><div class='line' id='LC65'><span class="k">hi</span> link txtDefList      Statement</div><div class='line' id='LC66'><span class="k">hi</span> link txtMonospace    Special</div><div class='line' id='LC67'><span class="k">hi</span> link txtSpecial      Statement</div><div class='line' id='LC68'><span class="k">hi</span> link txtParentesis   Comment</div><div class='line' id='LC69'><span class="k">hi</span> link txtEmailMsg     Structure</div><div class='line' id='LC70'><span class="k">hi</span> link txtEmailQuote   Structure</div><div class='line' id='LC71'><span class="c">&quot;</span></div><div class='line' id='LC72'><span class="k">let</span> <span class="k">b</span>:current_syntax <span class="p">=</span> <span class="s1">&#39;txt&#39;</span></div><div class='line' id='LC73'><span class="c">&quot; vim:tw=0:et</span></div></pre></div></td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.06900s from github-fe129-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close js-ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

  </body>
</html>

