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
      --bg: #f4f2ef;
      --bg-accent: #e7f0ec;
      --ink: #151512;
      --muted: #5c5a56;
      --card: #ffffff;
      --border: #e6e0d7;
      --accent: #1f5f5c;
      --accent-strong: #123b39;
      --shadow: 0 18px 40px rgba(21, 21, 18, 0.08);
    }

    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: "Avenir Next", "Segoe UI", "Helvetica Neue", Arial, sans-serif;
      color: var(--ink);
      background:
        radial-gradient(circle at 10% 10%, rgba(31, 95, 92, 0.12), transparent 45%),
        radial-gradient(circle at 90% 20%, rgba(18, 59, 57, 0.12), transparent 45%),
        linear-gradient(180deg, var(--bg), var(--bg-accent));
      min-height: 100vh;
    }

    a { color: inherit; text-decoration: none; }

    .wrap {
      max-width: 980px;
      margin: 0 auto;
      padding: 56px 24px 72px;
    }

    header {
      display: flex;
      flex-direction: column;
      gap: 12px;
      margin-bottom: 36px;
    }

    .badge {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: rgba(31, 95, 92, 0.1);
      color: var(--accent-strong);
      border-radius: 999px;
      padding: 6px 14px;
      font-size: 0.85rem;
      width: fit-content;
    }

    h1 {
      margin: 0;
      font-size: clamp(2.2rem, 4vw, 3rem);
      letter-spacing: -0.02em;
    }

    p { margin: 0; color: var(--muted); }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 18px;
    }

    .card {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 18px;
      padding: 22px;
      box-shadow: var(--shadow);
      transition: transform 0.2s ease, box-shadow 0.2s ease;
      display: flex;
      flex-direction: column;
      gap: 12px;
      min-height: 170px;
    }

    .card:hover {
      transform: translateY(-4px);
      box-shadow: 0 26px 50px rgba(21, 21, 18, 0.12);
    }

    .card h2 {
      margin: 0;
      font-size: 1.2rem;
    }

    .card span {
      color: var(--accent);
      font-weight: 600;
      font-size: 0.95rem;
    }

    .section {
      margin-top: 36px;
      display: grid;
      gap: 12px;
    }

    .links {
      display: flex;
      flex-wrap: wrap;
      gap: 16px;
    }

    .links a {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 10px 16px;
      border-radius: 999px;
      background: rgba(31, 95, 92, 0.12);
      color: var(--accent-strong);
      font-weight: 600;
    }

    .contact {
      background: rgba(255, 255, 255, 0.75);
      border: 1px solid var(--border);
      border-radius: 16px;
      padding: 18px 20px;
    }

    footer {
      margin-top: 48px;
      color: var(--muted);
      font-size: 0.9rem;
    }
  </style>
</head>
<body>
  <div class="wrap">
    <header>
      <div class="badge">Pixhigh Support</div>
      <h1>Help, policies, and direct support for Pixhigh apps.</h1>
      <p>Everything you need to manage subscriptions, troubleshooting, and official documentation.</p>
    </header>

    <section>
      <div class="grid">
        <a class="card" href="/smartportrait/">
          <div>
            <h2>SmartPortrait</h2>
            <p>AI portrait enhancement and studio-style edits.</p>
          </div>
          <span>Open support →</span>
        </a>
      </div>
    </section>

    <section class="section">
      <h2>Policies</h2>
      <div class="links">
        <a href="/privacy/">Privacy Policy</a>
        <a href="/terms/">Terms of Service</a>
      </div>
    </section>

    <section class="section">
      <h2>Contact</h2>
      <div class="contact">
        <p>Reach us at <a href="mailto:$(EMAIL)">$(EMAIL)</a>. We typically respond within 1-2 business days.</p>
      </div>
    </section>

    <footer>© 2025 Pixhigh. All rights reserved.</footer>
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
      --bg: #f4f2ef;
      --bg-accent: #e7f0ec;
      --ink: #151512;
      --muted: #5c5a56;
      --card: #ffffff;
      --border: #e6e0d7;
      --accent: #1f5f5c;
      --accent-strong: #123b39;
      --shadow: 0 18px 40px rgba(21, 21, 18, 0.08);
    }

    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: "Avenir Next", "Segoe UI", "Helvetica Neue", Arial, sans-serif;
      color: var(--ink);
      background:
        radial-gradient(circle at 10% 10%, rgba(31, 95, 92, 0.12), transparent 45%),
        radial-gradient(circle at 90% 20%, rgba(18, 59, 57, 0.12), transparent 45%),
        linear-gradient(180deg, var(--bg), var(--bg-accent));
      min-height: 100vh;
    }

    a { color: var(--accent); text-decoration: none; }
    a:hover { text-decoration: underline; }

    .wrap {
      max-width: 920px;
      margin: 0 auto;
      padding: 56px 24px 72px;
      display: grid;
      gap: 24px;
    }

    .top {
      display: grid;
      gap: 10px;
    }

    .top a {
      color: var(--accent-strong);
      font-weight: 600;
    }

    h1 {
      margin: 0;
      font-size: clamp(2rem, 3.5vw, 2.6rem);
      letter-spacing: -0.02em;
    }

    p { margin: 0; color: var(--muted); }

    .panel {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 18px;
      padding: 24px;
      box-shadow: var(--shadow);
      display: grid;
      gap: 14px;
    }

    .list {
      margin: 0;
      padding-left: 20px;
      color: var(--muted);
    }

    .pill-row {
      display: flex;
      flex-wrap: wrap;
      gap: 12px;
    }

    .pill {
      background: rgba(31, 95, 92, 0.12);
      color: var(--accent-strong);
      padding: 10px 16px;
      border-radius: 999px;
      font-weight: 600;
    }

    footer {
      color: var(--muted);
      font-size: 0.9rem;
    }
  </style>
</head>
<body>
  <div class="wrap">
    <div class="top">
      <a href="/">← Back to Pixhigh Support</a>
      <h1>SmartPortrait Support</h1>
      <p>Guidance for portrait enhancement, exports, and subscriptions.</p>
    </div>

    <section class="panel">
      <h2>Start Here</h2>
      <ul class="list">
        <li>Check for the latest app version before troubleshooting.</li>
        <li>Large exports need free storage and a stable connection.</li>
        <li>Include your Apple ID email if the issue is subscription-related.</li>
      </ul>
    </section>

    <section class="panel">
      <h2>Policies</h2>
      <div class="pill-row">
        <a class="pill" href="/privacy/">Privacy Policy</a>
        <a class="pill" href="/terms/">Terms of Service</a>
      </div>
    </section>

    <section class="panel">
      <h2>Contact</h2>
      <p>Email <a href="mailto:$(EMAIL)">$(EMAIL)</a> with your device model, iOS version, and a short description of the issue.</p>
    </section>

    <footer>© 2025 Pixhigh. All rights reserved.</footer>
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
      --bg: #f4f2ef;
      --bg-accent: #e7f0ec;
      --ink: #151512;
      --muted: #5c5a56;
      --card: #ffffff;
      --border: #e6e0d7;
      --accent: #1f5f5c;
      --accent-strong: #123b39;
      --shadow: 0 18px 40px rgba(21, 21, 18, 0.08);
    }

    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: "Avenir Next", "Segoe UI", "Helvetica Neue", Arial, sans-serif;
      color: var(--ink);
      background:
        radial-gradient(circle at 10% 10%, rgba(31, 95, 92, 0.12), transparent 45%),
        radial-gradient(circle at 90% 20%, rgba(18, 59, 57, 0.12), transparent 45%),
        linear-gradient(180deg, var(--bg), var(--bg-accent));
      min-height: 100vh;
    }

    a { color: var(--accent); text-decoration: none; }
    a:hover { text-decoration: underline; }

    .wrap {
      max-width: 920px;
      margin: 0 auto;
      padding: 56px 24px 72px;
      display: grid;
      gap: 24px;
    }

    .top {
      display: grid;
      gap: 10px;
    }

    .top a {
      color: var(--accent-strong);
      font-weight: 600;
    }

    h1 {
      margin: 0;
      font-size: clamp(2rem, 3.5vw, 2.6rem);
      letter-spacing: -0.02em;
    }

    p { margin: 0; color: var(--muted); }

    .panel {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 18px;
      padding: 24px;
      box-shadow: var(--shadow);
      display: grid;
      gap: 14px;
    }

    footer {
      color: var(--muted);
      font-size: 0.9rem;
    }
  </style>
</head>
<body>
  <div class="wrap">
    <div class="top">
      <a href="/">← Back to Pixhigh Support</a>
      <h1>Privacy Policy</h1>
      <p>Effective date: March 1, 2025</p>
    </div>

    <section class="panel">
      <h2>Summary</h2>
      <p>Pixhigh apps process photos locally on your device. We do not sell personal data. We only collect the minimum information needed to operate the apps and provide support.</p>
    </section>

    <section class="panel">
      <h2>Information We Collect</h2>
      <p>We may receive app analytics (such as device model, OS version, and crash logs) and support emails you send to us. If you contact support, we keep your message and email address to resolve your request.</p>
    </section>

    <section class="panel">
      <h2>How We Use Information</h2>
      <p>We use data to improve stability, fix bugs, and respond to support requests. We do not use your data for advertising.</p>
    </section>

    <section class="panel">
      <h2>Data Retention</h2>
      <p>Support emails are retained as long as needed to resolve issues and maintain records. Diagnostic data is retained for a reasonable period for troubleshooting.</p>
    </section>

    <section class="panel">
      <h2>Contact</h2>
      <p>If you have questions about this policy, email <a href="mailto:$(EMAIL)">$(EMAIL)</a>.</p>
    </section>

    <footer>© 2025 Pixhigh. All rights reserved.</footer>
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
      --bg: #f4f2ef;
      --bg-accent: #e7f0ec;
      --ink: #151512;
      --muted: #5c5a56;
      --card: #ffffff;
      --border: #e6e0d7;
      --accent: #1f5f5c;
      --accent-strong: #123b39;
      --shadow: 0 18px 40px rgba(21, 21, 18, 0.08);
    }

    * { box-sizing: border-box; }

    body {
      margin: 0;
      font-family: "Avenir Next", "Segoe UI", "Helvetica Neue", Arial, sans-serif;
      color: var(--ink);
      background:
        radial-gradient(circle at 10% 10%, rgba(31, 95, 92, 0.12), transparent 45%),
        radial-gradient(circle at 90% 20%, rgba(18, 59, 57, 0.12), transparent 45%),
        linear-gradient(180deg, var(--bg), var(--bg-accent));
      min-height: 100vh;
    }

    a { color: var(--accent); text-decoration: none; }
    a:hover { text-decoration: underline; }

    .wrap {
      max-width: 920px;
      margin: 0 auto;
      padding: 56px 24px 72px;
      display: grid;
      gap: 24px;
    }

    .top {
      display: grid;
      gap: 10px;
    }

    .top a {
      color: var(--accent-strong);
      font-weight: 600;
    }

    h1 {
      margin: 0;
      font-size: clamp(2rem, 3.5vw, 2.6rem);
      letter-spacing: -0.02em;
    }

    p { margin: 0; color: var(--muted); }

    .panel {
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 18px;
      padding: 24px;
      box-shadow: var(--shadow);
      display: grid;
      gap: 14px;
    }

    footer {
      color: var(--muted);
      font-size: 0.9rem;
    }
  </style>
</head>
<body>
  <div class="wrap">
    <div class="top">
      <a href="/">← Back to Pixhigh Support</a>
      <h1>Terms of Service</h1>
      <p>Effective date: March 1, 2025</p>
    </div>

    <section class="panel">
      <h2>Use of the Apps</h2>
      <p>Pixhigh apps are provided for personal use. You agree not to misuse the services, reverse engineer the software, or use the apps in a way that violates applicable laws.</p>
    </section>

    <section class="panel">
      <h2>Subscriptions and Purchases</h2>
      <p>In-app purchases are processed by Apple. Subscriptions renew automatically unless canceled at least 24 hours before the end of the current period. Manage subscriptions in your Apple ID settings.</p>
    </section>

    <section class="panel">
      <h2>Content Responsibility</h2>
      <p>You are responsible for the content you edit or share using Pixhigh apps. Do not upload or process content you do not have rights to use.</p>
    </section>

    <section class="panel">
      <h2>Changes to These Terms</h2>
      <p>We may update these terms from time to time. Continued use of the apps means you accept the latest terms.</p>
    </section>

    <section class="panel">
      <h2>Contact</h2>
      <p>If you have questions about these terms, email <a href="mailto:$(EMAIL)">$(EMAIL)</a>.</p>
    </section>

    <footer>© 2025 Pixhigh. All rights reserved.</footer>
  </div>
</body>
</html>
EOF

cname:
	@echo "pixhigh.com" > CNAME
