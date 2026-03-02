set -euo pipefail

ROOT="$HOME/Documents/real-estate-portfolio-os/phase-1-foundation"
mkdir -p "$ROOT/00-admin/templates"

# ---------- Templates ----------
cat > "$ROOT/00-admin/templates/owner-intake-questionnaire.md" <<'EOF'
# Owner Intake Questionnaire — A / Residential (Murrieta)

## Listing Basics
- Available date:
- Lease term:
- Rent:
- Deposit:
- Pets (Y/N) + pet rent/deposit:
- Included utilities:
- Parking:
- Smoking:
- Max occupants:

## Showing Plan
- Showing windows:
- Appointment vs open house:
- Who hosts showings:
- Pre-screen required before showing (Y/N):

## Delegation / Approvals
- Who posts listing:
- Who responds to leads:
- Who schedules showings:
- Final tenant approver:
EOF

cat > "$ROOT/00-admin/templates/roles-authorization.md" <<'EOF'
# Roles & Authorization — Listing + Leasing

Who can:
- Post/edit listing:
- Respond to leads:
- Schedule showings:
- Conduct showings:
- Send lease for signature:
- Approve tenant (final):

Owner approval: __________________  Date: ___________
EOF

cat > "$ROOT/00-admin/templates/rental-criteria-one-pager.md" <<'EOF'
# Rental Criteria — One Pager (Residential)

Minimums (fill in):
- Income:
- Credit guideline:
- Employment verification required (Y/N):
- Rental history verification (Y/N):
- Eviction policy:
- Max occupants:
- Pets policy:
- Smoking:

Application processing:
- First-qualified OR batch deadline (date/time):
Owner approval: __________________  Date: ___________
EOF

cat > "$ROOT/00-admin/templates/make-ready-punchlist.md" <<'EOF'
# Make-Ready Punchlist — A / Residential

Safety/Function:
- [ ] Smoke/CO alarms
- [ ] Locks + windows
- [ ] Lights
- [ ] HVAC heat/cool
- [ ] Water heater area dry

Plumbing:
- [ ] Under sinks
- [ ] Toilets
- [ ] Showers/tubs
- [ ] Hose bibs / irrigation

Cleanliness:
- [ ] Floors
- [ ] Baseboards
- [ ] Kitchen appliances clean/working
- [ ] Bathrooms clean

Evidence:
- [ ] Dated photo set pre-showing
EOF

cat > "$ROOT/00-admin/templates/photo-shot-list.md" <<'EOF'
# Photo Shot List — Residential

Exterior:
- [ ] Front wide
- [ ] Entry
- [ ] Backyard/patio
- [ ] Garage/driveway

Interior (wide first):
- [ ] Living (2 angles)
- [ ] Dining
- [ ] Kitchen (2 angles)
- [ ] Primary bed
- [ ] Primary bath
- [ ] Secondary beds
- [ ] Secondary baths
- [ ] Laundry

Optional:
- [ ] Upgrades/features
EOF

cat > "$ROOT/00-admin/templates/pre-screen-questions.md" <<'EOF'
# Pre-Screen Questions (copy/paste)

1) Move-in date?
2) # occupants?
3) Any pets? type/weight?
4) Approx gross monthly household income?
5) Any smoking?
6) Preferred lease term?
EOF

cat > "$ROOT/00-admin/templates/showing-sop.md" <<'EOF'
# Showing SOP

Before confirming:
- Collect pre-screen answers
- Confirm showing slot
- Tell prospect what to bring (ID optional, questions ready)

During:
- Lights on, temp comfortable
- Keep quick attendee log (name/phone/email)

After:
- Send application instructions + deadline/batch policy
EOF

cat > "$ROOT/00-admin/templates/tenant-selection-checklist.md" <<'EOF'
# Tenant Selection Checklist

Application complete:
- [ ] ID
- [ ] Income docs
- [ ] Employment info
- [ ] Rental history contacts (if available)

Verify:
- [ ] Income verified
- [ ] Employment verified
- [ ] References checked

Decision:
- [ ] Approved / Denied
- [ ] Lease sent
- [ ] Move-in funds confirmed
EOF

cat > "$ROOT/00-admin/templates/move-in-kit-checklist.md" <<'EOF'
# Move-In Kit Checklist

- [ ] Keys (#)
- [ ] Garage remotes (#)
- [ ] Utilities instructions
- [ ] Trash day/rules
- [ ] Maintenance request method
- [ ] Condition walkthrough completed + photos saved
EOF

cat > "$ROOT/00-admin/templates/condition-walkthrough-template.md" <<'EOF'
# Move-In Condition Walkthrough (Template)

Property:
Tenant:
Date:

Photos: take room-by-room + defects

Notes by room:
- Living:
- Kitchen:
- Beds:
- Baths:
- Garage/Exterior:

Tenant sign: __________  Date: ___
Owner sign: ___________  Date: ___
EOF

# ---------- Updated HTML with substeps ----------
cat > "$ROOT/portfolio-os.html" <<'EOF'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Portfolio OS — Zillow Launch Walkthrough</title>
  <style>
    :root{--bg:#0b0d10;--panel:#12161c;--panel2:#0f1318;--text:#e9eef5;--muted:#a9b4c0;--line:#233041;--good:#22c55e;--warn:#f59e0b;--bad:#ef4444;--link:#7dd3fc;--chip:#1b2430}
    *{box-sizing:border-box} body{margin:0;background:var(--bg);color:var(--text);font-family:system-ui,-apple-system,Segoe UI,Roboto,Helvetica,Arial}
    header{padding:22px 18px;border-bottom:1px solid var(--line)}
    .wrap{max-width:1100px;margin:0 auto}
    h1{margin:0 0 6px;font-size:20px}
    .sub{color:var(--muted);font-size:13px;line-height:1.4}
    .grid{display:grid;gap:12px}
    .g3{grid-template-columns:repeat(3,minmax(0,1fr))}
    @media (max-width:900px){.g3{grid-template-columns:1fr}}
    .card{background:var(--panel);border:1px solid var(--line);border-radius:14px;padding:14px}
    .card h2{margin:0 0 10px;font-size:14px;color:#d6e2f0;text-transform:uppercase}
    .pill{font-size:11px;border:1px solid var(--line);padding:4px 8px;border-radius:999px;color:var(--muted);background:var(--panel2)}
    .pill.good{border-color:rgba(34,197,94,.35);color:#bff3cf}
    .pill.warn{border-color:rgba(245,158,11,.35);color:#ffe0b0}
    .pill.bad{border-color:rgba(239,68,68,.35);color:#ffc3c3}
    .kpi{display:flex;align-items:flex-end;justify-content:space-between;gap:10px}
    .kpi .n{font-size:22px;font-weight:700} .kpi .l{font-size:12px;color:var(--muted)}
    .btnRow{display:flex;gap:8px;flex-wrap:wrap;margin-top:10px}
    button{cursor:pointer;background:var(--chip);border:1px solid var(--line);color:var(--text);padding:8px 10px;border-radius:10px;font-size:12px}
    .list{display:flex;flex-direction:column;gap:8px}
    .task{padding:10px;border:1px solid var(--line);border-radius:12px;background:var(--panel2)}
    .taskTop{display:flex;gap:10px;align-items:flex-start}
    .taskTop input{margin-top:3px}
    .t-main{display:flex;flex-direction:column;gap:2px}
    .t-title{font-size:13px}
    .t-meta{font-size:11px;color:var(--muted)}
    .substeps{margin-top:10px;padding-left:26px;display:flex;flex-direction:column;gap:8px}
    .subtask{display:flex;gap:10px;align-items:flex-start}
    .subtask input{margin-top:3px}
    .small{font-size:12px;color:var(--muted);line-height:1.45}
    .hl{color:var(--text)}
    .mono{font-family:ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,monospace}
    hr{border:none;border-top:1px solid var(--line);margin:12px 0}
  </style>
</head>
<body>
<header>
  <div class="wrap">
    <h1>Portfolio OS — Zillow Launch Walkthrough</h1>
    <div class="sub">Residential-first execution: owner inputs → make-ready → photos → Zillow publish → leads → screening → lease → move-in.</div>
  </div>
</header>

<main class="wrap" style="padding:14px 18px 22px;">
  <section class="grid g3">
    <div class="card">
      <h2>Progress</h2>
      <div class="kpi">
        <div><div class="n" id="pct">0%</div><div class="l">Completion (local)</div></div>
        <span class="pill warn" id="statusPill">In progress</span>
      </div>
      <div class="btnRow">
        <button onclick="exportJSON()">Export progress (JSON)</button>
        <button onclick="resetAll()">Reset</button>
      </div>
      <div class="small" style="margin-top:10px;">Saved in <span class="mono">localStorage</span>.</div>
    </div>

    <div class="card">
      <h2>Owner Docs</h2>
      <div class="small">Fill these first (fast approvals → fast execution):</div>
      <div class="btnRow">
        <button onclick="alert('Open in VS Code: 00-admin/templates/owner-intake-questionnaire.md')">Owner Intake</button>
        <button onclick="alert('Open in VS Code: 00-admin/templates/rental-criteria-one-pager.md')">Rental Criteria</button>
        <button onclick="alert('Open in VS Code: 00-admin/templates/roles-authorization.md')">Authorization</button>
      </div>
    </div>

    <div class="card">
      <h2>Execution Rule</h2>
      <div class="small"><span class="hl">Same-day response</span> to leads + consistent screening beats “perfect” listing tweaks.</div>
      <div class="small" style="margin-top:10px;">Don’t change criteria mid-stream.</div>
    </div>
  </section>

  <section class="card" style="margin-top:12px;">
    <h2>Walkthrough (with substeps)</h2>
    <div class="small">Do steps in order. Substeps are the documents/actions that unblock the next step.</div>
    <hr/>
    <div class="list" id="walkthrough"></div>
  </section>
</main>

<script>
  const SEED = {
    walkthrough: [
      { title:"Owner decisions finalized (rent, deposit, pets, utilities, availability)", owner:"Owner", priority:"High",
        substeps:[
          "Fill: owner-intake-questionnaire.md",
          "Confirm: showing plan (appointment vs open house)",
          "Confirm: who approves tenant (final decision)"
        ]},
      { title:"Rental criteria approved (consistent screening)", owner:"Owner", priority:"High",
        substeps:[
          "Fill: rental-criteria-one-pager.md",
          "Decide: first-qualified vs batch deadline",
          "Set: required docs list (ID + income verification)"
        ]},
      { title:"Roles authorized (posting, lead response, scheduling)", owner:"Owner", priority:"High",
        substeps:[
          "Fill: roles-authorization.md",
          "Confirm: who conducts showings",
          "Confirm: response SLA (same day)"
        ]},
      { title:"Make-ready pass (residential) + evidence photo set", owner:"A", priority:"High",
        substeps:[
          "Use: make-ready-punchlist.md",
          "Take dated pre-showing photos",
          "Log open items in issues.csv"
        ]},
      { title:"Photo run + choose best 20–35 photos", owner:"A", priority:"High",
        substeps:[
          "Use: photo-shot-list.md",
          "Shoot daytime, lights on",
          "Order photos: exterior → living → kitchen → primary → baths → yard/garage"
        ]},
      { title:"Draft listing copy (headline + bullets + rules + fees)", owner:"Owner", priority:"High",
        substeps:[
          "Write 1 headline + 5 highlights",
          "List utilities, pet policy, parking",
          "State availability + lease term clearly"
        ]},
      { title:"Create/publish listing in Zillow Rental Manager", owner:"Owner", priority:"High",
        substeps:[
          "Add property → enter address/type → details → photos → publish",
          "Verify public listing view",
          "Set contact method for leads"
        ]},
      { title:"Lead handling + pre-screen + showing workflow", owner:"Owner", priority:"High",
        substeps:[
          "Use: pre-screen-questions.md",
          "Use: showing-sop.md",
          "Decide application window timing"
        ]},
      { title:"Applications → verification → tenant selection", owner:"Owner", priority:"High",
        substeps:[
          "Use: tenant-selection-checklist.md",
          "Confirm move-in funds BEFORE keys",
          "Notify approve/deny promptly"
        ]},
      { title:"Lease + move-in kit + condition walkthrough", owner:"Owner", priority:"High",
        substeps:[
          "Use: condition-walkthrough-template.md",
          "Use: move-in-kit-checklist.md",
          "Save photos to asset folder"
        ]}
    ]
  };

  const storeKey = "portfolioOS_walkthrough_v4";
  const state = JSON.parse(localStorage.getItem(storeKey) || "{}");

  function keyFor(i){ return `w_${i}`; }
  function keyForSub(i,j){ return `w_${i}_s_${j}`; }

  function toggle(id, val){
    state[id] = val;
    localStorage.setItem(storeKey, JSON.stringify(state));
    updateKPI();
  }

  function render(){
    const el = document.getElementById("walkthrough");
    el.innerHTML = SEED.walkthrough.map((t,i)=>{
      const id = keyFor(i);
      const checked = !!state[id];
      const sub = (t.substeps||[]).map((s,j)=>{
        const sid = keyForSub(i,j);
        const sChecked = !!state[sid];
        return `
          <div class="subtask">
            <input type="checkbox" ${sChecked?"checked":""} onchange="toggle('${sid}', this.checked)" />
            <div class="t-main">
              <div class="t-title">${s}</div>
              <div class="t-meta">Substep</div>
            </div>
          </div>
        `;
      }).join("");

      return `
        <div class="task">
          <div class="taskTop">
            <input type="checkbox" ${checked?"checked":""} onchange="toggle('${id}', this.checked)" />
            <div class="t-main">
              <div class="t-title">${t.title}</div>
              <div class="t-meta">${t.owner} • Priority: ${t.priority}</div>
            </div>
          </div>
          ${sub ? `<div class="substeps">${sub}</div>` : ""}
        </div>
      `;
    }).join("");

    updateKPI();
  }

  function totalCount(){
    let total = 0;
    SEED.walkthrough.forEach(t=>{
      total += 1;
      total += (t.substeps||[]).length;
    });
    return total;
  }

  function updateKPI(){
    const total = totalCount();
    let done = Object.values(state).filter(Boolean).length;
    if(done > total) done = total;

    const pct = Math.round((done/total)*100);
    document.getElementById("pct").textContent = `${pct}%`;

    const pill = document.getElementById("statusPill");
    pill.classList.remove("good","warn","bad");
    if(pct >= 85){ pill.classList.add("good"); pill.textContent="Launch ready"; }
    else if(pct >= 40){ pill.classList.add("warn"); pill.textContent="In progress"; }
    else { pill.classList.add("bad"); pill.textContent="Not started"; }
  }

  function resetAll(){ localStorage.removeItem(storeKey); location.reload(); }
  function exportJSON(){
    const blob = new Blob([JSON.stringify(state, null, 2)], {type:"application/json"});
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = "portfolio-os-progress.json";
    a.click();
    URL.revokeObjectURL(a.href);
  }

  render();
</script>
</body>
</html>
EOF

echo "✅ Updated: templates + portfolio-os.html"
echo "Path: $ROOT"
