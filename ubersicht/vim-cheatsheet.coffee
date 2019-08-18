refreshFrequency: false

style: """
    // Align contents of container
    widget-align = left

    // Position of container on desktop
    top 20px
    left 20px

    //.content
    color #fff
    font-family Avenir Next
    font-size 10px
    background rgba(#fff, .2)
    padding 10px 30px 15px
    text-shadow 1px 1px 2px black
"""

render: -> """
<div class='content'>
    <h2>Vim Cheat Sheet</h2>
    <h3>Insert/Appending/Editing Text</h3>
    <ul>
    <li>Results in Insert mode
        <ul>
        <li><code>i / I</code> - start insert mode at cursor / beginning of the line</li>
        <li><code>a / A</code> - append after the cursor / end of the line</li>
        <li><code>o / O</code> - open (append) blank line below/above current line</li>
        <li><code>cc</code> - change (replace) an entire line</li>
        <li><code>c  [movement command]</code> - change (replace) from the cursor to the move-to point.</li>
        </ul>
    </li>
    <li><code>r  [char]</code> - replace a single character with the specified char (does not use Insert mode)</li>
    <li><code>d</code> - delete
        <ul>
        <li><code>d</code> - [movement command] deletes from the cursor to the move-to point.</li>
        </ul>
    </li>
    <li><code>dd</code> - delete the current line</li>
    </ul>

    <h3>Marking text (visual mode)</h3>
    <ul>
    <li><code>v</code> - starts visual mode
    </li>
    <li><code>V</code> - starts linewise visual mode</li>
    <li><code>Ctrl+v</code> - start visual block mode</li>
    </ul>

    <h3>Visual commands</h3>
    <ul>
    <li><code>y</code> - yank (copy) marked text</li>
    <li><code>d</code> - delete marked text</li>
    <li><code>c</code> - delete the marked text and go into insert mode (like c does above)</li>
    </ul>

    <h3>Cut and Paste</h3>
    <ul>
    <li><code>yy</code> - yank (copy) a line</li>
    <li><code>p / P</code> - put (paste) the clipboard after/before cursor</li>
    <li><code>dd</code> - delete (cut) a line</li>
    <li><code>x / X</code> - delete (cut) current/previous character</li>
    </ul>

    <h3 id="searchreplace">Search/Replace</h3>
    <ul>
    <li><code>/pattern</code> - search for pattern</li>
    <li><code>?pattern</code> - search backward for pattern</li>
    <li><code>n / N</code> - repeat search in same/opposite direction</li>
    <li><code>:%s/old/new/g</code> / <code>gc</code> - replace all old with new throughout file / with confirmations</li>
    </ul>

    <h3>Working with multiple files</h3>
    <ul>
    <li><code>:e filename</code> - Edit a file</li>
    <li><code>:tabe</code> - Make a new tab</li>
    <li><code>gt / gT</code> - Go to the next/previous tab</li>
    </ul>

    <h3>Runtime</h3>
    <ul>
    <li><code>&lt;c-p&gt;</code> – invoke CtrlP</li>
    </ul>
</div>
"""
