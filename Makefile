EMAIL ?= support@pixhigh.com

.PHONY: all pages cname

all: pages cname

pages: index.html smartportrait/index.html privacy/index.html terms/index.html

index.html:
	@cat > index.html <<EOF
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Pixhigh Support</title>
  <style>
    :root {
      --bg: #f7f4ef;
      --ink: #1d1a16;
      --accent: #3f5c5a;
      --muted: #6b625a;
      --card: #ffffff;
      --border: #e3dbd1;
    }

    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.6;
    }

    a {
      color: var(--accent);
      text-decoration: none;
    }

    a:hover { text-decoration: underline; }

    .container {
      max-width: 860px;
      margin: 0 auto;
      padding: 48px 24px 64px;
    }

    header {
      margin-bottom: 32px;
    }

    h1 {
      margin: 0 0 8px;
      font-size: 2.4rem;
    }

    h2 {
      margin: 28px 0 12px;
      font-size: 1.4rem;
    }

    p { margin: 0 0 16px; }

    .cards {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 16px;
    }

    .card {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 12px;
      padding: 18px;
      min-height: 120px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .card h3 {
      margin: 0 0 8px;
      font-size: 1.1rem;
    }

    .list {
      padding-left: 18px;
      margin: 8px 0 0;
    }

    footer {
      margin-top: 48px;
      font-size: 0.9rem;
      color: var(--muted);
    }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <h1>Pixhigh Support</h1>
      <p>Help, policies, and contact details for Pixhigh apps.</p>
    </header>

    <section>
      <h2>Apps</h2>
      <div class="cards">
        <a class="card" href="/smartportrait/">
          <div>
            <h3>SmartPortrait</h3>
            <p>AI portrait enhancement and studio-style edits.</p>
          </div>
          <span>View support</span>
        </a>
      </div>
    </section>

    <section>
      <h2>Policies</h2>
      <ul class="list">
        <li><a href="/privacy/">Privacy Policy</a></li>
        <li><a href="/terms/">Terms of Service</a></li>
      </ul>
    </section>

    <section>
      <h2>Contact</h2>
      <p>Email <a href="mailto:$(EMAIL)">$(EMAIL)</a> for help, feedback, or account questions.</p>
    </section>

    <footer>
      © 2025 Pixhigh. All rights reserved.
    </footer>
  </div>
</body>
</html>
EOF

smartportrait/index.html:
	@mkdir -p smartportrait
	@cat > smartportrait/index.html <<EOF
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SmartPortrait Support</title>
  <style>
    :root {
      --bg: #f7f4ef;
      --ink: #1d1a16;
      --accent: #3f5c5a;
      --muted: #6b625a;
      --card: #ffffff;
      --border: #e3dbd1;
    }

    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.6;
    }

    a {
      color: var(--accent);
      text-decoration: none;
    }

    a:hover { text-decoration: underline; }

    .container {
      max-width: 860px;
      margin: 0 auto;
      padding: 48px 24px 64px;
    }

    header {
      margin-bottom: 24px;
    }

    h1 {
      margin: 0 0 8px;
      font-size: 2.2rem;
    }

    h2 {
      margin: 28px 0 12px;
      font-size: 1.3rem;
    }

    p { margin: 0 0 16px; }

    .card {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 12px;
      padding: 20px;
    }

    .list {
      padding-left: 18px;
      margin: 8px 0 0;
    }

    footer {
      margin-top: 48px;
      font-size: 0.9rem;
      color: var(--muted);
    }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <a href="/">← Back to Pixhigh Support</a>
      <h1>SmartPortrait Support</h1>
      <p>We are here to help with SmartPortrait editing, exports, and subscriptions.</p>
    </header>

    <section class="card">
      <h2>Quick Help</h2>
      <ul class="list">
        <li>For export issues, confirm you have the latest iOS update and enough storage.</li>
        <li>For subscription billing questions, include your Apple ID email in your support request.</li>
        <li>For feature requests, share a short example of the style you want.</li>
      </ul>
    </section>

    <section>
      <h2>Policies</h2>
      <ul class="list">
        <li><a href="/privacy/">Privacy Policy</a></li>
        <li><a href="/terms/">Terms of Service</a></li>
      </ul>
    </section>

    <section>
      <h2>Contact</h2>
      <p>Email <a href="mailto:$(EMAIL)">$(EMAIL)</a> with your device model, iOS version, and a short description of the issue.</p>
    </section>

    <footer>
      © 2025 Pixhigh. All rights reserved.
    </footer>
  </div>
</body>
</html>
EOF

privacy/index.html:
	@mkdir -p privacy
	@cat > privacy/index.html <<EOF
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Pixhigh Privacy Policy</title>
  <style>
    :root {
      --bg: #f7f4ef;
      --ink: #1d1a16;
      --accent: #3f5c5a;
      --muted: #6b625a;
      --card: #ffffff;
      --border: #e3dbd1;
    }

    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.6;
    }

    a {
      color: var(--accent);
      text-decoration: none;
    }

    a:hover { text-decoration: underline; }

    .container {
      max-width: 860px;
      margin: 0 auto;
      padding: 48px 24px 64px;
    }

    header {
      margin-bottom: 24px;
    }

    h1 {
      margin: 0 0 8px;
      font-size: 2.2rem;
    }

    h2 {
      margin: 28px 0 12px;
      font-size: 1.3rem;
    }

    p { margin: 0 0 16px; }

    .card {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 12px;
      padding: 20px;
    }

    footer {
      margin-top: 48px;
      font-size: 0.9rem;
      color: var(--muted);
    }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <a href="/">← Back to Pixhigh Support</a>
      <h1>Privacy Policy</h1>
      <p>Effective date: March 1, 2025</p>
    </header>

    <section class="card">
      <h2>Summary</h2>
      <p>Pixhigh apps process photos locally on your device. We do not sell personal data. We only collect the minimum information needed to operate the apps and provide support.</p>
    </section>

    <section>
      <h2>Information We Collect</h2>
      <p>We may receive app analytics (such as device model, OS version, and crash logs) and support emails you send to us. If you contact support, we keep your message and email address to resolve your request.</p>
    </section>

    <section>
      <h2>How We Use Information</h2>
      <p>We use data to improve stability, fix bugs, and respond to support requests. We do not use your data for advertising.</p>
    </section>

    <section>
      <h2>Data Retention</h2>
      <p>Support emails are retained as long as needed to resolve issues and maintain records. Diagnostic data is retained for a reasonable period for troubleshooting.</p>
    </section>

    <section>
      <h2>Contact</h2>
      <p>If you have questions about this policy, email <a href="mailto:$(EMAIL)">$(EMAIL)</a>.</p>
    </section>

    <footer>
      © 2025 Pixhigh. All rights reserved.
    </footer>
  </div>
</body>
</html>
EOF

terms/index.html:
	@mkdir -p terms
	@cat > terms/index.html <<EOF
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Pixhigh Terms of Service</title>
  <style>
    :root {
      --bg: #f7f4ef;
      --ink: #1d1a16;
      --accent: #3f5c5a;
      --muted: #6b625a;
      --card: #ffffff;
      --border: #e3dbd1;
    }

    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.6;
    }

    a {
      color: var(--accent);
      text-decoration: none;
    }

    a:hover { text-decoration: underline; }

    .container {
      max-width: 860px;
      margin: 0 auto;
      padding: 48px 24px 64px;
    }

    header {
      margin-bottom: 24px;
    }

    h1 {
      margin: 0 0 8px;
      font-size: 2.2rem;
    }

    h2 {
      margin: 28px 0 12px;
      font-size: 1.3rem;
    }

    p { margin: 0 0 16px; }

    .card {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 12px;
      padding: 20px;
    }

    footer {
      margin-top: 48px;
      font-size: 0.9rem;
      color: var(--muted);
    }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <a href="/">← Back to Pixhigh Support</a>
      <h1>Terms of Service</h1>
      <p>Effective date: March 1, 2025</p>
    </header>

    <section class="card">
      <h2>Use of the Apps</h2>
      <p>Pixhigh apps are provided for personal use. You agree not to misuse the services, reverse engineer the software, or use the apps in a way that violates applicable laws.</p>
    </section>

    <section>
      <h2>Subscriptions and Purchases</h2>
      <p>In-app purchases are processed by Apple. Subscriptions renew automatically unless canceled at least 24 hours before the end of the current period. Manage subscriptions in your Apple ID settings.</p>
    </section>

    <section>
      <h2>Content Responsibility</h2>
      <p>You are responsible for the content you edit or share using Pixhigh apps. Do not upload or process content you do not have rights to use.</p>
    </section>

    <section>
      <h2>Changes to These Terms</h2>
      <p>We may update these terms from time to time. Continued use of the apps means you accept the latest terms.</p>
    </section>

    <section>
      <h2>Contact</h2>
      <p>If you have questions about these terms, email <a href="mailto:$(EMAIL)">$(EMAIL)</a>.</p>
    </section>

    <footer>
      © 2025 Pixhigh. All rights reserved.
    </footer>
  </div>
</body>
</html>
EOF

cname:
	@echo "pixhigh.com" > CNAME
