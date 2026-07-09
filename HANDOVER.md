# BULLROCK EXPRESS — Handover Document (v2)

> อัปเดตล่าสุด: 2026-07-09
> สำหรับแชทใหม่ / ทีมที่รับงานต่อ — เอกสารนี้แทนที่ `Todo.md` เดิม (เก็บ `Todo.md` ไว้เป็นประวัติการตัดสินใจ ไม่ต้องลบ)

---

## 1. ภาพรวมโปรเจค

- **ชื่อบริษัท:** BULLROCK EXPRESS (ใน BULLROCK GROUP)
- **ประเภทธุรกิจ:** โลจิสติกส์ครบวงจร (ขนส่ง, คลังสินค้า, Cold Chain, เช่ารถ, TMS)
- **เว็บไซต์:** bullrock-group.com
- **GitHub Repo:** https://github.com/tanawat35/bullrock-group.git (deploy จาก branch `main`, push ผ่าน `DO-GIT-PUSH.bat`)
- **โฟลเดอร์งานจริงบนเครื่อง:** `C:\Users\Dell G15\Downloads\เว็บไซต์บริษัท\`
- **ไฟล์หน้าเว็บ:** `index.html` (หน้าแรก), `about.html`, `services.html`, `contact.html` — ไม่มี framework, ไม่มี build step, แต่ละไฟล์มี CSS/JS ของตัวเองใน `<style>`/`<script>` ภายในไฟล์

---

## 2. Tech Stack

- Pure HTML + CSS + JavaScript (ไม่มี React/Vue/Next.js/Tailwind)
- Google Fonts: **Prompt** (หัวข้อ) + **Sarabun** (เนื้อหา)
- Hosting: GitHub Pages + Custom Domain (CNAME)
- Deploy: ดับเบิลคลิก `DO-GIT-PUSH.bat` ที่โฟลเดอร์โปรเจค (แก้ commit message ในไฟล์ก่อน push ทุกครั้ง)
- ไม่มี CSS ไฟล์กลาง — สีต้องแก้ทีละไฟล์ทั้ง 4 หน้า (ใช้ CSS variables ใน `:root` ของแต่ละไฟล์)

---

## 3. Color Scheme ปัจจุบัน (ม่วงเข้ม-ดำ + ทอง) — เปลี่ยนจาก Navy+Gold เดิมแล้ว

```css
--navy:        #3B2560   /* ม่วงหลัก (เดิมชื่อ navy แต่ค่าเปลี่ยนเป็นม่วง — ไม่ได้เปลี่ยนชื่อ var เพื่อลดจุดแก้) */
--navy-dark:   #160B24   /* ม่วง-ดำเข้มสุด พื้นหลัง hero/footer/section เข้ม */
--navy-mid:    #1F1029
--navy-light:  #4A2F73
--gold:        #D4AF37   /* ทอง accent หลัก */
--gold-dark:   #A6841F
--gold-light:  #E8C766
--text:        #241335   /* ข้อความเข้มบนพื้นขาว */
--text-mid:    #5A4E68
--text-muted:  #948BA0
--off-white:   #F7F8FC / #F8F9FC
--border:      #E8E3ED
--green:       #16A34A   /* คงเดิม ใช้กับ OneGo brand เท่านั้น ไม่แตะ */
```

**Hero background gradient stops:** `#0d0714 → #1a0f2a → #241335 → #0c0712`
**หมายเหตุ:** ตัวแปรสีอยู่ใน `:root` ของแต่ละไฟล์ (ไม่ shared) — ชื่อตัวแปร `--navy*` ยังใช้ชื่อเดิมแต่ค่า hex เปลี่ยนเป็นม่วงแล้วทั้งหมด อย่าสับสนว่าเป็น navy จริง

---

## 4. โลโก้

- **ไฟล์ใช้งานจริงทุกหน้า:** `assets/logo-2026.png` (900×456px, PNG โปร่งใส, ~107KB — ย่อจากไฟล์ต้นฉบับ 4929×2497px/580KB ที่ Bas ส่งมาล่าสุด)
- ใช้แทนโลโก้เดิมทั้งหมดแล้ว (navbar, page loader, hero 3D scene, footer) ในทั้ง 4 หน้า — เวอร์ชันล่าสุด wordmark เขียน **"BULL ROCK EXPRESS"** ครบคำ (เวอร์ชันก่อนหน้าเขียนแค่ "BULL ROCK")
- โลโก้เป็น mark ทองล้วน (ตัว "BR" + คำว่า "BULL ROCK") ไม่มีสีส้ม ไม่มีคำว่า EXPRESS ในภาพ — แต่ชื่อแบรนด์ในเนื้อหา/`<title>`/SEO/footer ยังคงเป็น **BULLROCK EXPRESS** ตามเดิม (ตั้งใจให้ต่างกัน)
- ไฟล์โลโก้เก่า (`logo-bullrock.png`, `logo-bullrock-glow-white.png` ฯลฯ) ยังอยู่ใน `assets/` เป็น backup ไม่ได้ลบ แต่ไม่มีหน้าไหนอ้างถึงแล้ว

---

## 5. งานที่ทำไปแล้วในรอบนี้ (2026-07-08 ถึง 07-09)

### 5.1 เปลี่ยนสีทั้งเว็บ + สลับโลโก้ (ครบ 4 หน้า)
แทนที่ hex/rgba สีเดิม (navy #1B2D6B, gold #F5A900 และตัวแปรอื่นๆ) ด้วยชุดสีม่วง-ทองใหม่ทั้งหมด ไม่แตะ layout/animation เดิม

### 5.2 เพิ่มเนื้อหาจาก Company Profile เก่า (Bull Rock PTTE-06.pdf)
ใช้เฉพาะ **รูปภาพและเนื้อหา** จากไฟล์ (เบอร์โทร/ที่อยู่ยึดตามเว็บใหม่ ไม่ใช้ของ deck เก่า):
- **about.html:** เพิ่มย่อหน้าประสบการณ์ทีมงาน 15+ ปี, การ์ดมาตรฐาน "ประกันภัยขนส่ง" ระบุวงเงิน (4 ล้อ 500,000 / 6 ล้อ 1,000,000 บาท), การ์ดใหม่ "อุปกรณ์เซฟตี้ประจำรถ" (ถังดับเพลิง, เครื่องวัดอุณหภูมิ, ผู้ประสานงาน 24 ชม.) — certs-grid เปลี่ยนจาก 3 เป็น 4 คอลัมน์
- **services.html:** เพิ่ม section "กองรถของเรา" แบ่ง 2 กลุ่ม (ดูข้อ 5.4)
- **index.html:** เพิ่ม section โลโก้ลูกค้า 16 แบรนด์ (ดูข้อ 5.3) — ครอปมาจากหน้า "CUSTOMERS" ในไฟล์ PDF ด้วยสคริปต์ (ไม่ใช่ AI สร้าง)

### 5.3 Section "ลูกค้าของเรา" (index.html)
- ตำแหน่ง: อยู่หลัง section "Why Us" ก่อน "OneGo" (ย้ายตามคำขอผู้ใช้ — เดิมอยู่หลัง Services)
- รูปแบบ: **marquee เลื่อนซ้ายต่อเนื่อง 1 แถว สีเต็ม (ไม่ grayscale)** หยุดเลื่อนเมื่อ hover — ไฟล์โลโก้อยู่ที่ `assets/customers/*.png` (16 ไฟล์: lotuss, big-c, shopee, kerry-express, jt-express, flash-express, ptt-global-chemical, starbucks, sp, thai-agri-foods, jfe, inter-express-logistics, all-now, foodworks, siam-food-services, dynamic-logistics)
- โลโก้เหล่านี้เป็นเครื่องหมายการค้าของบริษัทลูกค้าจริง — ถ้าจะ deploy ขึ้นเว็บจริง ควรเช็คกับ Bas ว่าได้รับอนุญาตให้ขึ้นโลโก้หรือยัง (มาจาก company profile เก่าที่มีลูกค้ากลุ่มนี้)

### 5.4 กองรถ (services.html) — ข้อมูลจริงจาก Bas (อัปเดต 2026-07-09 แทนตัวเลขจาก PDF เก่าแล้ว)

**กองรถของบริษัท:**
| ประเภท | จำนวน |
|---|---|
| 4W | 12 |
| 4W Frozen | 24 |
| 4WJ | 5 |
| 4WJ Frozen | 4 |
| 6W | 2 |

**เครือข่ายพันธมิตร (Outsource):**
| ประเภท | จำนวน |
|---|---|
| 4W | 30 |
| 4W Frozen | 30 |
| 4WJ | 8 |
| 4WJ Frozen | 6 |
| 6W | 20–30 |
| 10W | 2 |
| 14W | 5 |

### 5.5 ตัวเลขสถิติ (stat) — สลับค่าแล้วตามคำขอ
- **คันรถในกองรถ = 100+** (เดิม 50+)
- **ลูกค้าองค์กร = 50+** (เดิม 100+)
อัปเดตครบทุกจุดที่มีตัวเลขนี้: index.html (stats bar), about.html (page-hero stat, numbers section, story paragraph, BULLROCK GROUP card), services.html (page-hero stat, svc-feat bullet)

### 5.6 Liquid Glass UI (เฉพาะ index.html — หน้าอื่นยังไม่ทำ)
- **Navbar:** ปรับเป็น floating glass pill (backdrop-blur + border ทองบางๆ + inset highlight) ตลอดเวลา ไม่ใช่แค่ตอน scroll แล้ว
- **Stats bar:** การ์ดสถิติ 4 ใบ เปลี่ยนเป็น glass card ลอยทับขอบล่างของ hero (margin-top ติดลบ) — ปรับให้เป็นกระจกสีม่วงเข้ม (ไม่ใช่กระจกขาว) เพื่อไม่ให้ดูจมกับพื้นหลังตอนพาดผ่านรอยต่อ hero เข้าสู่ section ถัดไป — ตัวเลข/label มี inline color ทอง/ขาวชัดเจน

### 5.7 Hero motion (index.html เท่านั้น)
- **ยกเลิกการลอยขึ้นลงอัตโนมัติของโลโก้ใน hero** — เหลือแค่ tilt ตามเมาส์เท่านั้น (ไม่มี float loop ตอนอยู่เฉยๆ)
- **Canvas particle animation** (`#heroCanvas`) — เส้นแสงทองไหลเป็น route + particle วิ่งซ้าย→ขวา โค้งเข้าหาเมาส์เวลาขยับ (ไม่มีค่าใช้จ่าย ทำงานได้เลยไม่ต้องรอวิดีโอ)
- **Video scrub scaffold พร้อมไว้แล้ว** — มี `<video id="heroVideo">` วางเป็น background layer, ผูก JS ให้ currentTime scrub ตามตำแหน่งเมาส์ X แนวนอนในกล่อง hero แล้ว แต่ **ยังไม่มีไฟล์วิดีโอจริง** (source ชี้ไป `assets/hero-higgsfield.mp4` ซึ่งยังไม่มีไฟล์ — จะ 404 เงียบๆ ไม่กระทบอะไรเพราะ canvas layer อยู่ด้านบนอยู่แล้ว)
- ผู้ใช้มีไฟล์ stock video อยู่ใน `assets/` ของโฟลเดอร์เครื่อง (5 ไฟล์) แต่ 3 ไฟล์ใหญ่กว่า 30MB ดึงเข้ามาตรวจไม่ได้, 1 ไฟล์อ่านไม่ขึ้น (0 byte ตอนคัดลอก), อีก 1 ไฟล์เป็น **iStock watermark preview ที่ยังไม่ได้ซื้อไลเซนส์** (ห้ามใช้จริง) — **ยังไม่ตัดสินใจว่าจะใช้ไฟล์ไหน** รอ Bas ตรวจสอบ/ส่งไฟล์ใหม่ หรือจะ generate จาก Higgsfield (มี prompt พร้อมแล้ว ดูหัวข้อ 5.8) — ระหว่างนี้ใช้ canvas fallback ไปก่อน

### 5.8 Higgsfield prompt (เตรียมไว้ กรณีจะสร้างวิดีโอ hero)
```
Cinematic wide shot, dark purple-black and warm gold color palette (#160B24 background
tones, #D4AF37 gold light). A sleek delivery box truck drives along a glowing gold
light-trail route through a minimal, moody isometric-style warehouse and port district
at night. Gold particle light streaks trail behind the truck. Slow, smooth camera dolly
following the truck's motion from left to right across frame. Volumetric gold
rim-lighting on architecture, soft purple ambient fog, subtle bokeh. Premium, futuristic,
high-end corporate logistics brand feel — no text, no logos, no people. Consistent, even
motion speed throughout (video will be scrubbed frame-by-frame by mouse position).
Seamless loop, 16:9, 1920×1080, 8–10 second duration, 24–30fps.
```
ตั้งค่า: อัตราส่วน 16:9, 8s, 1080p, โมเดล Kling 3.0 (ต้องแพ็กเกจ paid — ถ้าไม่จ่ายใช้ Seedance 2.0 แทนได้)

---

## 6. สิ่งที่ยังไม่ได้ทำ / รอตัดสินใจ

- [ ] **วิดีโอ hero จริง** — รอไฟล์จาก Bas (ดูข้อ 5.7–5.8)
- [ ] **FAQ section** — คุยกันว่าจะย้ายจาก contact.html มาไว้หน้าแรกไหม ยังไม่ได้ข้อสรุป (ตัวเลือก: ย้ายมาเลย / คัดลอกแบบสั้น 3-4 ข้อไว้หน้าแรก+ลิงก์ไป contact)
- [ ] **Glass UI บนหน้า about/services/contact** — ตอนนี้ทำแค่ index.html ตามสโคปที่เลือกไว้ (เฉพาะหน้าแรกก่อน)
- [ ] **โลโก้ลูกค้า 16 แบรนด์** — เช็คสิทธิ์การใช้งานกับ Bas ก่อน deploy จริง (ดูข้อ 5.3)
- [ ] **Scroll-triggered animation แบบเต็มรูปแบบ (GSAP ScrollTrigger), parallax เพิ่มเติมนอก hero** — ยังไม่ได้ทำ (อยู่ใน priority list ที่ผู้ใช้ยังไม่เลือกทำตอนนี้)

---

## 7. สิ่งที่ตัดสินใจไว้แล้ว (ห้ามเปลี่ยนโดยไม่ถาม — สืบทอดจาก Todo.md เดิม)

- ไม่มี Team Section ใน about.html
- ไม่มี LINE OA (เป็นของ OneGo ไม่ใช่ Bullrock)
- ไม่มี Google Maps embed
- ข้อมูลติดต่อยึดชุดเว็บปัจจุบัน (โทร 083-596-2828 / 02-123-3628, ที่อยู่ปทุมธานี 12000, info@bullrock.co.th) — ไม่ใช้เบอร์/ที่อยู่จาก company profile เก่า (ห้วยขวาง/099-249-2838)
- Deploy — Bas ดับเบิลคลิก `DO-GIT-PUSH.bat` เอง

---

## 8. โครงสร้างหน้าเว็บปัจจุบัน (หลังอัปเดต)

**index.html:** Page Loader → Navbar (glass) → Hero (canvas+video scrub) → Stats (glass, 100+/5+/B2B/24ชม.) → Services → About teaser → Why us → **ลูกค้าของเรา (ใหม่)** → OneGo → Contact → Footer → Lightbox

**about.html:** Navbar → Page Hero (50+/100+ stat สลับแล้ว) → Story → Numbers → Mission/Vision → Core Values (เลข 01-04 ถูกลบออกจากการ์ดแล้ว) → Certifications (4 การ์ดแล้ว) → BULLROCK GROUP → CTA → Footer

**services.html:** Navbar → Page Hero → Filter chips → Services grid → **กองรถของเรา (ใหม่)** → How it works → Why us mini → Coverage → CTA → Footer

**contact.html:** ไม่มีการเปลี่ยนแปลงเนื้อหา (สีเปลี่ยนแล้ว) — Navbar → Page Hero → Contact form + Info → FAQ → Footer

---

## 9. Favicon / SEO
ไม่เปลี่ยนจากเดิม — ดู `Todo.md` ต้นฉบับหัวข้อ 10 สำหรับ favicon tags และ meta tags มาตรฐานที่ใช้ทุกหน้า
