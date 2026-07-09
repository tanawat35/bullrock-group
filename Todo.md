# BULLROCK EXPRESS — Project Handover Document

> อัพเดทล่าสุด: 2026-07-08  
> สำหรับแชทใหม่ที่รับงานต่อ — อ่านทั้งหมดก่อนเริ่มทำงาน

---

## 1. ภาพรวมโปรเจค

- **ชื่อบริษัท:** BULLROCK EXPRESS (ใน BULLROCK GROUP)
- **ประเภทธุรกิจ:** โลจิสติกส์ครบวงจร (ขนส่ง, คลังสินค้า, Cold Chain, เช่ารถ, TMS)
- **เว็บไซต์:** [bullrock-group.com](https://bullrock-group.com)
- **GitHub Repo:** https://github.com/tanawat35/bullrock-group.git
- **GitHub Pages:** deploy จาก branch `main`

---

## 2. โฟลเดอร์โปรเจค

```
C:\Users\Dell G15\Downloads\เว็บไซต์บริษัท\
│
├── index.html          ← หน้าแรก (Home)
├── about.html          ← หน้าเกี่ยวกับเรา
├── services.html       ← หน้าบริการ
├── contact.html        ← หน้าติดต่อ
│
├── favicon.ico         ← favicon root (multi-size 16/32/48px)
├── CNAME               ← bullrock-group.com
├── DO-GIT-PUSH.bat     ← ไฟล์ deploy (ดับเบิลคลิกเพื่อ push)
│
└── assets/
    ├── logo-bullrock.png              ← โลโก้มีพื้นหลังดำ + glow ส้ม
    ├── logo-bullrock-glow-white.png   ← โลโก้มีพื้นหลังดำ + glow ขาว (ใช้ใน about.html)
    ├── logo-bullrock-white.png        ← โลโก้สีส้มทั้งหมดเปลี่ยนเป็นขาว (สำรอง)
    ├── logo-square.png                ← โลโก้ square 2084×2084 (ใช้ generate favicon)
    ├── logo-main.png, logo-horizontal.jpg  ← โลโก้ทางเลือก
    ├── favicon-32x32.png              ← favicon PNG 32px
    ├── favicon-192x192.png            ← favicon Android/Google 192px
    ├── apple-touch-icon.png           ← favicon iOS 180px
    ├── hero-bg.jpg, hero-trucks.jpg   ← รูป hero section
    ├── service-cold-chain.png         ← รูป service cards
    ├── service-rental.jpg             ← รูปบริการเช่ารถ (ใช้ใน index + services)
    ├── service-warehouse.png, service-b2b.png, service-tms.png, service-management.png
    └── _source/                       ← ไฟล์ต้นฉบับจาก designer (ไม่ได้ใช้ใน deploy)
        ├── LOGO BULLROCK EXPRESS PNG.png  ← ต้นฉบับโลโก้ 1536×1024 RGBA
        └── ...
```

---

## 3. Tech Stack

- **Pure HTML + CSS + JavaScript** — ไม่มี framework (ไม่ใช้ React, Vue, Next.js)
- **Google Fonts:** `Prompt` (headings) + `Sarabun` (body) — โหลดจาก CDN
- **Tailwind:** ไม่ได้ใช้
- **Hosting:** GitHub Pages + Custom Domain via CNAME
- **Deploy:** ดับเบิลคลิก `DO-GIT-PUSH.bat` ที่โฟลเดอร์โปรเจค (Bas ทำเอง)

---

## 4. Color Scheme ปัจจุบัน (Navy + Gold)

```css
--navy:       #1B2D6B   /* พื้นหลังหลัก */
--navy-dark:  #0F1B4A   /* พื้นหลังเข้ม */
--navy-mid:   #162358
--navy-light: #243980
--gold:       #F5A900   /* สีทอง accent */
--gold-dark:  #C68D00
--gold-light: #FFD000
--white:      #ffffff
--off-white:  #F7F8FC
--surface:    #EEF1FA
--text:       #1C2340
--text-mid:   #4B5572
--text-muted: #8892AA
```

---

## 5. งานที่ต้องทำต่อ (PENDING)

### 🔴 งานสำคัญ — รอดำเนินการ

#### 5.1 เปลี่ยน Color Scheme เป็น ม่วงดำ + ทอง พร้อม Redesign หน้าแรกด้วย Scroll Storytelling (Boss Request — อัปเดต 2026-07-08)
- หัวหน้าบอกเว็บไม่สวย ต้องการเปลี่ยน palette เดิม (Navy #1B2D6B + Gold #F5A900) — ตกลงทิศทางสุดท้ายเป็น **ม่วงดำเข้ม + ทอง** (ไม่ใช่ดำล้วนตามที่ตั้งไว้แต่แรก)
- สถานะ: **ออกแบบเคาะครบแล้ว (2026-07-08) รอลงมือสร้าง index.html** — ยังไม่ได้แก้โค้ดจริงในไฟล์ HTML

**✅ DECISIONS LOCKED (คุยกับ Bas 2026-07-08):**
- **แบรนด์:** ชื่อในเนื้อหา/`<title>`/SEO/footer = **BULLROCK EXPRESS** (คงเดิม) — แต่ **โลโก้ใหม่** เป็น visual mark เขียน "BULL ROCK" (แยก 2 คำ) ทองล้วน ไม่มี EXPRESS/ไม่มีส้ม → โลโก้ = ภาพ, ชื่อแบรนด์ในข้อความ = BULLROCK EXPRESS (ตั้งใจให้ต่างกัน)
- **Navbar:** ใช้โลโก้รูปเดียวทั้งก้อน (หัววัว+BR+wordmark) — โลโก้เป็น stacked พอย่อ navbar อาจเล็ก ต้อง balance ความสูง navbar ให้พอดี
- **โลโก้ใหม่:** `Logo Bull Rock new.png` (root, PNG โปร่งใส 4107×2695, 603KB) ทองล้วนเข้ากับพื้นม่วงเข้มเป๊ะ
  - ⚠️ **ต้องย่อ+optimize ก่อนใช้จริงในเว็บ** — 603KB/4107px ใหญ่เกินไป: export navbar ~ความสูง 96–120px (เผื่อ retina 2x), hero ใช้ขนาดเหมาะกับ layout, บีบเป็น PNG optimized หรือ WebP ให้เหลือหลักสิบ KB
- **อารมณ์รวม:** premium เป็นฐาน + dynamic accent 2 จุด (รถวิ่งใน hero + GPS/TMS section) — ไม่ flashy ทั้งหน้า
- **Motion primitives (ใช้ซ้ำทั้งหน้า):** Reveal (`expo.out` fade-slide 40px) · Mockup-in (`power3.out` scale 0.94→1) · Stagger 100ms · Gold-glow hover (เรืองทอง+ยก 2px) — **pin+scrub เฉพาะ Hero เท่านั้น**
- **Hero concept:** ฉาก isometric มีชีวิต (คลัง+ท่าเรือโทนม่วง) **รถบรรทุกวิ่งตามเส้น route ทอง** ตอน scroll (pinned+scrub) + headline swap → subline+CTA
- **Section 4 (GPS/TMS):** ใช้รูปเดิม `service-tms.png` ไปก่อน ทำ mockup-in — ค่อยเปลี่ยนรูปจริงทีหลัง
- **Stack:** GSAP + ScrollTrigger (+Lenis smooth scroll) โหลดจาก CDN
- ⚠️ ยังต้องเทสต์ contrast **ทองที่เป็น body text/ปุ่ม** บนม่วงเข้ม (WCAG AA) ก่อน apply — ตัวโลโก้ทองไม่มีปัญหาแล้ว

**✅ PTTE deck reconciliation (Bas ยืนยัน 2026-07-08):** — Bas ส่ง `Bull Rock PTTE-06.pdf` (company profile "Bull Rock Logistics" 13 หน้า) มาให้ ตัดสินใจดังนี้:
- **ข้อมูลติดต่อ: คงชุดเว็บเดิม** (โทร 083-596-2828 / 02-123-3628, ที่อยู่ปทุมธานี 12000, info@bullrock.co.th) — **ไม่ใช้** ชุดใน deck (ห้วยขวาง/099-249-2838) เพราะ deck เก่า/คนละบริบท
- **subtitle: คง EXPRESS** (แม้ logo/deck เขียน LOGISTICS) → เว็บใช้ BULLROCK EXPRESS
- **➕ เพิ่ม Customers/trust section** ในหน้าแรก (โลโก้ลูกค้า social proof) — เสริมกับ section Proof/Stats
  - **ลูกค้า 16 แบรนด์จาก deck (หน้า 11):** Lotus's, Big C, Shopee, Kerry Express, J&T Express, Flash Express, PTT Global Chemical, Starbucks, S&P, Thai Agri Foods, JFE, Inter Express Logistics, All Now, Foodworks, Siam Food Services, Dynamic Logistics
  - ⚠️ ตอนสร้าง: ต้องเตรียมไฟล์โลโก้ลูกค้า (crop จาก deck ได้แต่ res ต่ำ — ถ้าได้ไฟล์คลีนกว่าจะดีกว่า) วางเป็นแถบ grayscale→hover สี
- **ข้อมูล deck อื่นที่ "ใช้ได้ถ้าต้องการ"** (ยังไม่ยืนยันว่าจะใส่ — ถาม Bas ตอนทำ Proof/Stats): tagline "Service mind and specialized", ประสบการณ์ 15+ ปี, Fleet 7 ประเภท (4W/4W-Frozen/4WJ/6W/6W+Tail Lift/10W ตู้ทึบ/10W แม่ลูก), ประกันสินค้า (4W 500k / 6W 1M), มาตรฐานเซฟตี้+ประสานงาน 24 ชม.

**Blueprint หน้าแรกอัปเดต → 7 section:** Hero (pinned+scrub รถวิ่ง) → Statement → Services (stagger) → GPS/TMS Dashboard (mockup-in) → **Customers trust bar (โลโก้ลูกค้า)** → Proof/Stats (count-up) → CTA finale

**ต้องมี (ยังไม่ได้สร้าง)
Motion/scroll/3D
Parallax Effect
Fade-in / Slide-in
ใช้ Higgsfield สร้างวิดีโอแอนิเมชันแล้วเอามาผูกกับการเลื่อนเมาส์


⚠️ ต้องเช็ค contrast ทอง-บน-ม่วงเข้มจริงก่อนใช้ (บางเฉดทองจมกับม่วงเข้ม)
## 6. ข้อมูลบริษัทที่ใช้ในเว็บ

| ข้อมูล | ค่า |
|---|---|
| เบอร์โทร | 083-596-2828 / 02-123-3628 |
| อีเมล | info@bullrock.co.th |
| ที่อยู่ | 123/7 ถ.เลียบคลองเปรมประชา ต.สวนพริกไทย อ.เมือง จ.ปทุมธานี 12000 |
| LINE OA | **ไม่มี** (LINE OA เป็นของ OneGo ไม่ใช่ Bullrock) |
| Google Maps | **ไม่ใส่** ในเว็บ (รอใส่) |

---

## 7. Services ในหน้า services.html

| Chip Label | ชื่อบริการ | ไฟล์รูป |
|---|---|---|
| Cold Chain | คลังสินค้าควบคุมอุณหภูมิ | service-cold-chain.png |
| คลังสินค้า | บริการคลังสินค้าให้เช่า (แห้ง) | service-warehouse.png |
| ขนส่ง | ขนส่งสินค้า B2B & องค์กร | service-b2b.png |
| เช่ารถ | บริการให้เช่ารถขนส่งพร้อมคนขับ | service-rental.jpg |
| TMS & GPS | ระบบบริหารขนส่ง TMS & GPS | service-tms.png |
| บริหารองค์กร | ดูแลระบบบริหารจัดการองค์กร | service-management.png |

---

## 8. สิ่งที่ตัดสินใจไว้แล้ว (ห้ามเปลี่ยนโดยไม่ถาม)

- **ไม่มี Team Section** ใน about.html — ไม่เปิดเผยข้อมูลทีมงาน
- **ไม่มี LINE OA** — LINE OA เป็นของ OneGo ไม่ใช่ Bullrock
- **ไม่มี Google Maps embed** — ลบออกไปแล้ว
- **Favicon** generate จาก `logo-square.png` (2084×2084 square) ไม่ใช่ `logo-bullrock.png` (เพราะ logo-bullrock ไม่ square)
- **about.html** ใช้ `logo-bullrock-glow-white.png` (glow ขาว, EXPRESS text ยังส้ม)
- **Deploy** — Bas ดับเบิลคลิก DO-GIT-PUSH.bat เอง ไม่ต้องให้ Claude ควบคุมคอมพิวเตอร์

---

## 9. โครงสร้างแต่ละหน้า

### index.html
- Hero → Services grid → About teaser → Why us → OneGo section → Contact → Footer

### about.html  
- Hero → Story (โลโก้ + เนื้อหาประวัติ) → Mission/Vision → Values → OneGo intro → Contact → Footer
- โลโก้ใน story section: `assets/logo-bullrock-glow-white.png`

### services.html
- Hero → Filter chips (All/Cold Chain/คลังสินค้า/ขนส่ง/เช่ารถ/TMS/บริหาร) → Service cards grid → CTA → Footer

### contact.html
- Hero → Quick contact bar → Info cards (โทร/อีเมล/ที่อยู่) → Contact form → Footer
- ไม่มี LINE OA, ไม่มี Google Maps

---

## 10. Favicon Tags (ทุกหน้า)

ทุก HTML ไฟล์มี favicon tags นี้ใน `<head>`:

```html
<link rel="icon" type="image/x-icon" href="/favicon.ico">
<link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="192x192" href="assets/favicon-192x192.png">
<link rel="apple-touch-icon" href="assets/apple-touch-icon.png">
```

> หมายเหตุ: Google Search อาจใช้เวลา 2-3 วันกว่าจะแสดง favicon ใหม่

---

## 11. วิธี Deploy

1. แก้ไขไฟล์ HTML ที่ต้องการ
2. ดับเบิลคลิก `DO-GIT-PUSH.bat` ในโฟลเดอร์โปรเจค
3. รอ 1-2 นาที GitHub Pages จะ deploy อัตโนมัติ
4. ตรวจสอบ: https://github.com/tanawat35/bullrock-group/deployments

> ก่อน deploy ต้องแก้ commit message ใน DO-GIT-PUSH.bat ให้ตรงกับงานที่ทำ

---

## 12. Git Branch Structure

- `master` — working branch (push ที่นี่)
- `main` — production branch (GitHub Pages deploy จาก main)
- DO-GIT-PUSH.bat push ไป master แล้ว force push master→main อัตโนมัติ

---

## 13. CSS Architecture

- **ไม่มี shared CSS file** — CSS ของแต่ละหน้าอยู่ใน `<style>` block ภายใน HTML นั้นเอง
- **CSS Variables** อยู่ใน `:root {}` ต้นไฟล์ — เปลี่ยนที่นี่จะเปลี่ยนทั้งหน้า
- **Mobile hamburger menu** — มีในทุกหน้า (HTML drawer + CSS + JS toggle)
- **Reveal animation** — ใช้ `IntersectionObserver` class `reveal` + `d1/d2/d3` delay

---

## 14. สิ่งที่ต้องระวัง

- CSS ของแต่ละหน้าไม่ได้ share กัน — แก้สีต้องแก้ทีละไฟล์ทั้ง 4 ไฟล์
- `echo` ใน DO-GIT-PUSH.bat ต้องเป็น ASCII เท่านั้น (ไม่ใส่ภาษาไทยใน echo)
- `favicon.ico` ต้องอยู่ที่ root (ไม่ใส่ใน assets/) เพราะ GitHub Pages serve จาก root
- รูปโลโก้ที่ใช้แสดงใน about.html และ hero ต้องเป็น PNG มี transparency — ไม่ใช่ JPG
- **ก่อนใส่รูป/โลโก้ลงเว็บทุกครั้ง ต้องย่อขนาด+optimize ก่อนเสมอ** — ห้าม embed ไฟล์ต้นฉบับความละเอียดสูง (เช่น `Logo Bull Rock new.png` 4107px/603KB) ตรงๆ ให้ export ตามขนาดที่ใช้จริง (navbar/hero) + บีบเป็น PNG optimized หรือ WebP เพื่อโหลดเร็ว
