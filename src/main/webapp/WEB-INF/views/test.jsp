<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bootstrap Tree View Plugin Examples</title>
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <!-- <link href="./css/bootstrap-treeview.css" rel="stylesheet"> -->
  </head>
  <body>
  	<div class="container" style="margin:30px auto">
    	<h1>Bootstrap Tree View Plugin Examples</h1>
      <p class="lead">A jQuery treeview plugin that helps you render a dynamic, checkable, filterable, collapsible, vertical hierarchical tree from a JSON schema.</p>
      <style>
.download{ padding: 1.25rem; border:0; border-radius:3px; background-color:#4F46E5; color:#fff;cursor:pointer; text-decoration:none;}.download:hover{color: #fff}#carbonads{display:block;overflow:hidden;max-width:728px;position:relative;font-size:22px;box-sizing:content-box}#carbonads>span{display:block}#carbonads a{color:#4F46E5;text-decoration:none}#carbonads a:hover{color:#4F46E5}.carbon-wrap{display:flex;align-items:center}.carbon-img{display:block;margin:0;line-height:1}.carbon-img img{display:block;height:90px;width:auto}.carbon-text{display:block;padding:0 1em;line-height:1.35;text-align:left}.carbon-poweredby{display:block;position:absolute;bottom:0;right:0;padding:6px 10px;text-align:center;text-transform:uppercase;letter-spacing:.5px;font-weight:600;font-size:8px;border-top-left-radius:4px;line-height:1;color:#aaa!important}@media only screen and (min-width:320px) and (max-width:759px){.carbon-text{font-size:14px}}
</style>
<div id="carbon-block"></div>
<div><script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2783044520727903"
     crossorigin="anonymous"></script>
<!-- jQuery_Replace_Demo -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-2783044520727903"
     data-ad-slot="7325992188"
     data-ad-format="auto"
     data-full-width-responsive="true"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script></div>
<p style="margin:2rem auto"><a class="download" href="https://www.jqueryscript.net/other/Dynamic-Tree-View-Plugin-jQuery-Bootstrap.html">Download This Plugin</a> <a class="download" href="https://www.jqueryscript.net/">Back To jQueryScript</a></p>
      <div class="row">
        <div class="col-sm-4">
          <h2>Default</h2>
          <div id="treeview1" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Collapsed</h2>
          <div id="treeview2" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Expanded</h2>
          <div id="treeview3" class=""></div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <h2>Blue Theme</h2>
          <div id="treeview4" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Custom Icons</h2>
          <div id="treeview5" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Tags as Badges</h2>
          <div id="treeview6" class=""></div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <h2>No Border</h2>
          <div id="treeview7" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Colourful</h2>
          <div id="treeview8" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Node Overrides</h2>
          <div id="treeview9" class=""></div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-4">
          <h2>Link enabled, or</h2>
          <div id="treeview10" class=""></div>
        </div>
        <div class="col-sm-4">

        </div>
        <div class="col-sm-4">

        </div>
      </div>
      <div class="row">
        <hr>
        <h2>Searchable Tree</h2>
        <div class="col-sm-4">
          <h2>Input</h2>
          <!-- <form> -->
            <div class="form-group">
              <label for="input-search" class="sr-only">Search Tree:</label>
              <input type="input" class="form-control" id="input-search" placeholder="Type to search..." value="">
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" class="checkbox" id="chk-ignore-case" value="false">
                Ignore Case
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" class="checkbox" id="chk-exact-match" value="false">
                Exact Match
              </label>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" class="checkbox" id="chk-reveal-results" value="false">
                Reveal Results
              </label>
            </div>
            <button type="button" class="btn btn-success" id="btn-search">Search</button>
            <button type="button" class="btn btn-default" id="btn-clear-search">Clear</button>
          <!-- </form> -->
        </div>
        <div class="col-sm-4">
          <h2>Tree</h2>
          <div id="treeview-searchable" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Results</h2>
          <div id="search-output"></div>
        </div>
      </div>
      <div class="row">
        <hr>
        <h2>Selectable Tree</h2>
        <div class="col-sm-4">
          <h2>Input</h2>
          <div class="form-group">
            <label for="input-select-node" class="sr-only">Search Tree:</label>
            <input type="input" class="form-control" id="input-select-node" placeholder="Identify node..." value="Parent 1">
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" class="checkbox" id="chk-select-multi" value="false">
              Multi Select
            </label>
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" class="checkbox" id="chk-select-silent" value="false">
              Silent (No events)
            </label>
          </div>
          <div class="form-group">
              <button type="button" class="btn btn-success select-node" id="btn-select-node">Select Node</button>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-danger select-node" id="btn-unselect-node">Unselect Node</button>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-primary select-node" id="btn-toggle-selected">Toggle Node</button>
          </div>
        </div>
        <div class="col-sm-4">
          <h2>Tree</h2>
          <div id="treeview-selectable" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Events</h2>
          <div id="selectable-output"></div>
        </div>
      </div>
      <div class="row">
        <hr>
        <h2>Expandible Tree</h2>
        <div class="col-sm-4">
          <h2>Input</h2>
          <div class="form-group">
            <label for="input-expand-node" class="sr-only">Search Tree:</label>
            <input type="input" class="form-control" id="input-expand-node" placeholder="Identify node..." value="Parent 1">
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" class="checkbox" id="chk-expand-silent" value="false">
              Silent (No events)
            </label>
          </div>
          <div class="form-group row">
            <div class="col-sm-6">
              <button type="button" class="btn btn-success expand-node" id="btn-expand-node">Expand Node</button>
            </div>
            <div class="col-sm-6">
              <select class="form-control" id="select-expand-node-levels">
                <option>1</option>
                <option>2</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-danger expand-node" id="btn-collapse-node">Collapse Node</button>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-primary expand-node" id="btn-toggle-expanded">Toggle Node</button>
          </div>
          <hr>
          <div class="form-group row">
            <div class="col-sm-6">
              <button type="button" class="btn btn-success" id="btn-expand-all">Expand All</button>
            </div>
            <div class="col-sm-6">
              <select class="form-control" id="select-expand-all-levels">
                <option>1</option>
                <option>2</option>
              </select>
            </div>
          </div>
          <button type="button" class="btn btn-danger" id="btn-collapse-all">Collapse All</button>
        </div>
        <div class="col-sm-4">
          <h2>Tree</h2>
          <div id="treeview-expandible" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Events</h2>
          <div id="expandible-output"></div>
        </div>
      </div>
      <div class="row">
        <hr>
        <h2>Checkable Tree</h2>
        <div class="col-sm-4">
          <h2>Input</h2>
          <div class="form-group">
            <label for="input-check-node" class="sr-only">Search Tree:</label>
            <input type="input" class="form-control" id="input-check-node" placeholder="Identify node..." value="Parent 1">
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" class="checkbox" id="chk-check-silent" value="false">
              Silent (No events)
            </label>
          </div>
          <div class="form-group row">
            <div class="col-sm-6">
              <button type="button" class="btn btn-success check-node" id="btn-check-node">Check Node</button>
            </div>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-danger check-node" id="btn-uncheck-node">Uncheck Node</button>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-primary check-node" id="btn-toggle-checked">Toggle Node</button>
          </div>
          <hr>
          <div class="form-group row">
            <div class="col-sm-6">
              <button type="button" class="btn btn-success" id="btn-check-all">Check All</button>
            </div>
          </div>
          <button type="button" class="btn btn-danger" id="btn-uncheck-all">Uncheck All</button>
        </div>
        <div class="col-sm-4">
          <h2>Tree</h2>
          <div id="treeview-checkable" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Events</h2>
          <div id="checkable-output"></div>
        </div>
      </div>
      <div class="row">
        <hr>
        <h2>Disabled Tree</h2>
        <div class="col-sm-4">
          <h2>Input</h2>
          <div class="form-group">
            <label for="input-disable-node" class="sr-only">Search Tree:</label>
            <input type="input" class="form-control" id="input-disable-node" placeholder="Identify node..." value="Parent 1">
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox" class="checkbox" id="chk-disable-silent" value="false">
              Silent (No events)
            </label>
          </div>
          <div class="form-group row">
            <div class="col-sm-6">
              <button type="button" class="btn btn-success disable-node" id="btn-disable-node">Disable Node</button>
            </div>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-danger disable-node" id="btn-enable-node">Enable Node</button>
          </div>
          <div class="form-group">
            <button type="button" class="btn btn-primary disable-node" id="btn-toggle-disabled">Toggle Node</button>
          </div>
          <hr>
          <div class="form-group row">
            <div class="col-sm-6">
              <button type="button" class="btn btn-success" id="btn-disable-all">Disable All</button>
            </div>
          </div>
          <button type="button" class="btn btn-danger" id="btn-enable-all">Enable All</button>
        </div>
        <div class="col-sm-4">
          <h2>Tree</h2>
          <div id="treeview-disabled" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2>Events</h2>
          <div id="disabled-output"></div>
        </div>
      </div>
      <div class="row">
        <hr>
        <h2>Data</h2>
        <div class="col-sm-4">
          <h2>JSON Data</h2>
          <div id="treeview12" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2></h2>
          <div id="treeview13" class=""></div>
        </div>
        <div class="col-sm-4">
          <h2></h2>
          <div id="treeview14"></div>
        </div>
      </div>
      <br/>
      <br/>
      <br/>
      <br/>
    </div>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>

  	<script src="./js/bootstrap-treeview.js"></script>
  	<script type="text/javascript">

  		$(function() {

        var defaultData = [
          {
            text: 'Parent 1',
            href: '#parent1',
            tags: ['4'],
            nodes: [
              {
                text: 'Child 1',
                href: '#child1',
                tags: ['2'],
                nodes: [
                  {
                    text: 'Grandchild 1',
                    href: '#grandchild1',
                    tags: ['0']
                  },
                  {
                    text: 'Grandchild 2',
                    href: '#grandchild2',
                    tags: ['0']
                  }
                ]
              },
              {
                text: 'Child 2',
                href: '#child2',
                tags: ['0']
              }
            ]
          },
          {
            text: 'Parent 2',
            href: '#parent2',
            tags: ['0']
          },
          {
            text: 'Parent 3',
            href: '#parent3',
             tags: ['0']
          },
          {
            text: 'Parent 4',
            href: '#parent4',
            tags: ['0']
          },
          {
            text: 'Parent 5',
            href: '#parent5'  ,
            tags: ['0']
          }
        ];

        var alternateData = [
          {
            text: 'Parent 1',
            tags: ['2'],
            nodes: [
              {
                text: 'Child 1',
                tags: ['3'],
                nodes: [
                  {
                    text: 'Grandchild 1',
                    tags: ['6']
                  },
                  {
                    text: 'Grandchild 2',
                    tags: ['3']
                  }
                ]
              },
              {
                text: 'Child 2',
                tags: ['3']
              }
            ]
          },
          {
            text: 'Parent 2',
            tags: ['7']
          },
          {
            text: 'Parent 3',
            icon: 'glyphicon glyphicon-earphone',
            href: '#demo',
            tags: ['11']
          },
          {
            text: 'Parent 4',
            icon: 'glyphicon glyphicon-cloud-download',
            href: '#',
            tags: ['19'],
            selected: true
          },
          {
            text: 'Parent 5',
            icon: 'glyphicon glyphicon-certificate',
            color: 'pink',
            backColor: 'red',
            href: 'https://www.tesco.com',
            tags: ['available','0']
          }
        ];

        var json = '[' +
          '{' +
            '"text": "Parent 1",' +
            '"nodes": [' +
              '{' +
                '"text": "Child 1",' +
                '"nodes": [' +
                  '{' +
                    '"text": "Grandchild 1"' +
                  '},' +
                  '{' +
                    '"text": "Grandchild 2"' +
                  '}' +
                ']' +
              '},' +
              '{' +
                '"text": "Child 2"' +
              '}' +
            ']' +
          '},' +
          '{' +
            '"text": "Parent 2"' +
          '},' +
          '{' +
            '"text": "Parent 3"' +
          '},' +
          '{' +
            '"text": "Parent 4"' +
          '},' +
          '{' +
            '"text": "Parent 5"' +
          '}' +
        ']';


        $('#treeview1').treeview({
          data: defaultData
        });

        $('#treeview2').treeview({
          levels: 1,
          data: defaultData
        });

        $('#treeview3').treeview({
          levels: 99,
          data: defaultData
        });

        $('#treeview4').treeview({

          color: "#428bca",
          data: defaultData
        });

        $('#treeview5').treeview({
          color: "#428bca",
          expandIcon: 'glyphicon glyphicon-chevron-right',
          collapseIcon: 'glyphicon glyphicon-chevron-down',
          nodeIcon: 'glyphicon glyphicon-bookmark',
          data: defaultData
        });

        $('#treeview6').treeview({
          color: "#428bca",
          expandIcon: "glyphicon glyphicon-stop",
          collapseIcon: "glyphicon glyphicon-unchecked",
          nodeIcon: "glyphicon glyphicon-user",
          showTags: true,
          data: defaultData
        });

        $('#treeview7').treeview({
          color: "#428bca",
          showBorder: false,
          data: defaultData
        });

        $('#treeview8').treeview({
          expandIcon: "glyphicon glyphicon-stop",
          collapseIcon: "glyphicon glyphicon-unchecked",
          nodeIcon: "glyphicon glyphicon-user",
          color: "yellow",
          backColor: "purple",
          onhoverColor: "orange",
          borderColor: "red",
          showBorder: false,
          showTags: true,
          highlightSelected: true,
          selectedColor: "yellow",
          selectedBackColor: "darkorange",
          data: defaultData
        });

        $('#treeview9').treeview({
          expandIcon: "glyphicon glyphicon-stop",
          collapseIcon: "glyphicon glyphicon-unchecked",
          nodeIcon: "glyphicon glyphicon-user",
          color: "yellow",
          backColor: "purple",
          onhoverColor: "orange",
          borderColor: "red",
          showBorder: false,
          showTags: true,
          highlightSelected: true,
          selectedColor: "yellow",
          selectedBackColor: "darkorange",
          data: alternateData
        });

        $('#treeview10').treeview({
          color: "#428bca",
          enableLinks: true,
          data: defaultData
        });



        var $searchableTree = $('#treeview-searchable').treeview({
          data: defaultData,
        });

        var search = function(e) {
          var pattern = $('#input-search').val();
          var options = {
            ignoreCase: $('#chk-ignore-case').is(':checked'),
            exactMatch: $('#chk-exact-match').is(':checked'),
            revealResults: $('#chk-reveal-results').is(':checked')
          };
          var results = $searchableTree.treeview('search', [ pattern, options ]);

          var output = '<p>' + results.length + ' matches found</p>';
          $.each(results, function (index, result) {
            output += '<p>- ' + result.text + '</p>';
          });
          $('#search-output').html(output);
        }

        $('#btn-search').on('click', search);
        $('#input-search').on('keyup', search);

        $('#btn-clear-search').on('click', function (e) {
          $searchableTree.treeview('clearSearch');
          $('#input-search').val('');
          $('#search-output').html('');
        });


        var initSelectableTree = function() {
          return $('#treeview-selectable').treeview({
            data: defaultData,
            multiSelect: $('#chk-select-multi').is(':checked'),
            onNodeSelected: function(event, node) {
              $('#selectable-output').prepend('<p>' + node.text + ' was selected</p>');
            },
            onNodeUnselected: function (event, node) {
              $('#selectable-output').prepend('<p>' + node.text + ' was unselected</p>');
            }
          });
        };
        var $selectableTree = initSelectableTree();

        var findSelectableNodes = function() {
          return $selectableTree.treeview('search', [ $('#input-select-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var selectableNodes = findSelectableNodes();

        $('#chk-select-multi:checkbox').on('change', function () {
          console.log('multi-select change');
          $selectableTree = initSelectableTree();
          selectableNodes = findSelectableNodes();
        });

        // Select/unselect/toggle nodes
        $('#input-select-node').on('keyup', function (e) {
          selectableNodes = findSelectableNodes();
          $('.select-node').prop('disabled', !(selectableNodes.length >= 1));
        });

        $('#btn-select-node.select-node').on('click', function (e) {
          $selectableTree.treeview('selectNode', [ selectableNodes, { silent: $('#chk-select-silent').is(':checked') }]);
        });

        $('#btn-unselect-node.select-node').on('click', function (e) {
          $selectableTree.treeview('unselectNode', [ selectableNodes, { silent: $('#chk-select-silent').is(':checked') }]);
        });

        $('#btn-toggle-selected.select-node').on('click', function (e) {
          $selectableTree.treeview('toggleNodeSelected', [ selectableNodes, { silent: $('#chk-select-silent').is(':checked') }]);
        });



        var $expandibleTree = $('#treeview-expandible').treeview({
          data: defaultData,
          onNodeCollapsed: function(event, node) {
            $('#expandible-output').prepend('<p>' + node.text + ' was collapsed</p>');
          },
          onNodeExpanded: function (event, node) {
            $('#expandible-output').prepend('<p>' + node.text + ' was expanded</p>');
          }
        });

        var findExpandibleNodess = function() {
          return $expandibleTree.treeview('search', [ $('#input-expand-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var expandibleNodes = findExpandibleNodess();

        // Expand/collapse/toggle nodes
        $('#input-expand-node').on('keyup', function (e) {
          expandibleNodes = findExpandibleNodess();
          $('.expand-node').prop('disabled', !(expandibleNodes.length >= 1));
        });

        $('#btn-expand-node.expand-node').on('click', function (e) {
          var levels = $('#select-expand-node-levels').val();
          $expandibleTree.treeview('expandNode', [ expandibleNodes, { levels: levels, silent: $('#chk-expand-silent').is(':checked') }]);
        });

        $('#btn-collapse-node.expand-node').on('click', function (e) {
          $expandibleTree.treeview('collapseNode', [ expandibleNodes, { silent: $('#chk-expand-silent').is(':checked') }]);
        });

        $('#btn-toggle-expanded.expand-node').on('click', function (e) {
          $expandibleTree.treeview('toggleNodeExpanded', [ expandibleNodes, { silent: $('#chk-expand-silent').is(':checked') }]);
        });

        // Expand/collapse all
        $('#btn-expand-all').on('click', function (e) {
          var levels = $('#select-expand-all-levels').val();
          $expandibleTree.treeview('expandAll', { levels: levels, silent: $('#chk-expand-silent').is(':checked') });
        });

        $('#btn-collapse-all').on('click', function (e) {
          $expandibleTree.treeview('collapseAll', { silent: $('#chk-expand-silent').is(':checked') });
        });



        var $checkableTree = $('#treeview-checkable').treeview({
          data: defaultData,
          showIcon: false,
          showCheckbox: true,
          onNodeChecked: function(event, node) {
            $('#checkable-output').prepend('<p>' + node.text + ' was checked</p>');
          },
          onNodeUnchecked: function (event, node) {
            $('#checkable-output').prepend('<p>' + node.text + ' was unchecked</p>');
          }
        });

        var findCheckableNodess = function() {
          return $checkableTree.treeview('search', [ $('#input-check-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var checkableNodes = findCheckableNodess();

        // Check/uncheck/toggle nodes
        $('#input-check-node').on('keyup', function (e) {
          checkableNodes = findCheckableNodess();
          $('.check-node').prop('disabled', !(checkableNodes.length >= 1));
        });

        $('#btn-check-node.check-node').on('click', function (e) {
          $checkableTree.treeview('checkNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        $('#btn-uncheck-node.check-node').on('click', function (e) {
          $checkableTree.treeview('uncheckNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        $('#btn-toggle-checked.check-node').on('click', function (e) {
          $checkableTree.treeview('toggleNodeChecked', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        // Check/uncheck all
        $('#btn-check-all').on('click', function (e) {
          $checkableTree.treeview('checkAll', { silent: $('#chk-check-silent').is(':checked') });
        });

        $('#btn-uncheck-all').on('click', function (e) {
          $checkableTree.treeview('uncheckAll', { silent: $('#chk-check-silent').is(':checked') });
        });



        var $disabledTree = $('#treeview-disabled').treeview({
          data: defaultData,
          onNodeDisabled: function(event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was disabled</p>');
          },
          onNodeEnabled: function (event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was enabled</p>');
          },
          onNodeCollapsed: function(event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was collapsed</p>');
          },
          onNodeUnchecked: function (event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was unchecked</p>');
          },
          onNodeUnselected: function (event, node) {
            $('#disabled-output').prepend('<p>' + node.text + ' was unselected</p>');
          }
        });

        var findDisabledNodes = function() {
          return $disabledTree.treeview('search', [ $('#input-disable-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var disabledNodes = findDisabledNodes();

        // Expand/collapse/toggle nodes
        $('#input-disable-node').on('keyup', function (e) {
          disabledNodes = findDisabledNodes();
          $('.disable-node').prop('disabled', !(disabledNodes.length >= 1));
        });

        $('#btn-disable-node.disable-node').on('click', function (e) {
          $disabledTree.treeview('disableNode', [ disabledNodes, { silent: $('#chk-disable-silent').is(':checked') }]);
        });

        $('#btn-enable-node.disable-node').on('click', function (e) {
          $disabledTree.treeview('enableNode', [ disabledNodes, { silent: $('#chk-disable-silent').is(':checked') }]);
        });

        $('#btn-toggle-disabled.disable-node').on('click', function (e) {
          $disabledTree.treeview('toggleNodeDisabled', [ disabledNodes, { silent: $('#chk-disable-silent').is(':checked') }]);
        });

        // Expand/collapse all
        $('#btn-disable-all').on('click', function (e) {
          $disabledTree.treeview('disableAll', { silent: $('#chk-disable-silent').is(':checked') });
        });

        $('#btn-enable-all').on('click', function (e) {
          $disabledTree.treeview('enableAll', { silent: $('#chk-disable-silent').is(':checked') });
        });



        var $tree = $('#treeview12').treeview({
          data: json
        });
  		});
  	</script><script async src="https://www.googletagmanager.com/gtag/js?id=G-1VDDWMRSTH"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-1VDDWMRSTH');
</script><script>
try {
  fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
    return true;
  }).catch(function(e) {
    var carbonScript = document.createElement("script");
    carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CK7DKKQU&placement=wwwjqueryscriptnet";
    carbonScript.id = "_carbonads_js";
    document.getElementById("carbon-block").appendChild(carbonScript);
  });
} catch (error) {
  console.log(error);
}
</script>
  </body>
</html>
