export const refreshFrequency = false;

export const render = ({ output }) => (
    <div>
        <h2>Netrw Cheatsheet</h2>
    	<h3>Navigation</h3>
	    <ul>
	        <li><code>enter</code> - Open files/directories</li>
            <li><code>-</code> - Go up one directory</li>
            <li><code>u</code> - Go back to previously visited directory</li>
            <li><code>U</code> - Go forward to subsequently visited directory</li>
            <li><code>o</code> - Open file/directory in new horizontal split</li>
            <li><code>v</code> - Open file/directory in new vertical split</li>
            <li><code>t</code> - Open file/directory in new tab</li>
            <li><code>p</code> - Preview file without (moving the cursor from netrw)</li>
	    </ul>
        <h3>File Operations</h3>
        <ul>
            <li><code>%</code> - Create a new file</li>
            <li><code>d</code> - Create a new directory</li>
            <li><code>D</code> - Delete the file/directory under the cursor (or marked files/dirs)</li>
            <li><code>R</code> - Rename/move file/directory</li>
        </ul>
        <h3>Appearance and Behaviour</h3>
        <ul>
            <li>
                <code>i</code> - Cycle between different listing modes
                <ul>
                    <li>In normal mode, <code>enter</code> will move into and show the given file/directory</li>
                </ul>
            </li>
        </ul>
    </div>
)

export const className = `
    left: 560px;
    top: 20px;
    color: #fff;
    font-family: Avenir Next;
    font-size: 10px;
    background: rgba(255, 255, 255, 0.2);
    padding: 10px 30px 15px;
    text-shadow: 1px 1px 2px black;
`
