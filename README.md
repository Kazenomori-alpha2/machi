# 『街 ～運命の交差点～』 PS1 한국어 패치 v1.0

대상: **Sound Novel Evolution 3 - Machi - Unmei no Kousaten** 일본판
(`SLPS-01845` / `SLPS-01846`, Chunsoft 1999)

이 패키지에는 **원본 게임 데이터가 들어 있지 않습니다.** 원본과 한글판의
차이만 담은 BPS 패치 파일이며, 적용하려면 **본인이 소유한 정품 디스크에서
추출한 BIN** 이 필요합니다.

## 내려받기

**[→ 최신 릴리스에서 받기](https://github.com/Kazenomori-alpha2/machi/releases/latest)**

릴리스가 아직 없다면 아래로 받으셔도 됩니다.

- **저장소 전체** — [main.zip](https://github.com/Kazenomori-alpha2/machi/archive/refs/heads/main.zip)
  (`Code` → `Download ZIP` 과 같습니다)
- **패치 파일만** —
  [Disc1.bps](https://github.com/Kazenomori-alpha2/machi/raw/main/Machi_KO_v1.0_Disc1.bps) ·
  [Disc2.bps](https://github.com/Kazenomori-alpha2/machi/raw/main/Machi_KO_v1.0_Disc2.bps)

전체 ZIP 을 받으면 압축을 풀고 그 안의 `original` 폴더에 원본 BIN 을 넣은 뒤
`APPLY_PATCH.bat` 을 실행하면 됩니다. 받은 파일이 온전한지는
`SHA256SUMS.txt` 로 확인할 수 있습니다.

## 적용 방법

1. `original` 폴더에 일본판 원본 Disc 1·2 의 `.bin` 을 넣습니다.
   파일명은 상관없습니다 — 크기로 자동 판별합니다.
2. `APPLY_PATCH.bat` 을 더블클릭합니다.
3. `patched` 폴더에 결과가 생깁니다.
   `Machi_KO_v1.0_Disc1.bin/.cue`, `Machi_KO_v1.0_Disc2.bin/.cue`
4. 에뮬레이터에서 **`.cue` 파일**을 엽니다 (`.bin` 이 아니라 `.cue` 입니다).

디스크 하나만 넣어도 그것만 패치합니다. Windows 가 아니거나 배치 파일을
쓰기 싫으면, [RomPatcher.js](https://www.marcrobledo.com/RomPatcher.js/) 같은
아무 BPS 패처로도 같은 결과가 나옵니다.

## 지원 원본

| 디스크 | 크기 (바이트) | SHA-256 |
|---|---:|---|
| Disc 1 | 700,305,648 | `bc70153c86cdd2f0f09b5479f2ab98788aa4c4a7d54a6d5cf5cb6fe54088443e` |
| Disc 2 | 610,224,048 | `336eaea2c636933ef6989b4b5740af86edf05a7a357174c7f9157787fed1cced` |

크기가 다르면 패치가 실패합니다. 트랙이 분리된 덤프(`.bin` 여러 개)나
`.iso` 는 지원하지 않습니다 — **MODE2/2352 단일 BIN** 이어야 합니다.

## 적용 결과

| 디스크 | 크기 (바이트) | SHA-256 |
|---|---:|---|
| Disc 1 | 703,078,656 | `57474d4c7913d747e23dcd92d64c099f916173cd90a390ab3808781e71c7c177` |
| Disc 2 | 610,675,632 | `0a04984cddec42a5ec4f630504ca2a6e35f64d9c83846baabf02827a8f111209` |

## 번역 범위

- 시나리오 **47편 전체** (본편 + 프롤로그)
- 용어 해설(TIP) 2,287페이지, 배드엔딩 힌트 180곳
- 메뉴·책갈피·게임 설명·캡션
- 재핑 차트 인물 이름, 세이브·메모리카드 화면
- 케이마 편 마지막 퀴즈의 **범인 이름 입력 자판** — 오십음 순 한글 배열,
  `받침`·`변형` 키 포함. 정답 판정도 한글 이름으로 동작합니다.
- 엔딩 카드 「완」·「종」

## 조판

원작 엔진의 창 한계에 맞춰 전 편을 다시 조판했습니다.

- 본문 한 줄 **283px**, 마지막 줄 **240px**, 한 화면 **9줄**
- 용어 해설(TIP) 창은 본문보다 좁은 **276px**
- 줄바꿈은 어절 단위 — 낱말이 줄 중간에서 갈리지 않게 맞췄습니다
- 글꼴은 네오둥근모 16px 정격. 공백·마침표·쉼표·가운뎃점 폭을 줄여
  문장을 깎지 않고 한 줄에 더 담았습니다

## 알려진 제약

- **실기 검증이 전부 끝나지 않았습니다.** 에뮬레이터(DuckStation)에서 주로
  확인했고, 실제 PS1 하드웨어 검증은 진행 중입니다.
- 세이브 데이터의 재핑 차트 진행도 필드는 미해독입니다. 게임 플레이로
  채우는 데는 문제가 없지만, 세이브를 직접 편집해 차트를 여는 것은 안 됩니다.
- 전단지(예언 팩스) 화면은 글자마다 좌표가 박힌 고정 조판이라 원문 배치를
  그대로 따릅니다.
- 오탈자·어색한 문장이 남아 있을 수 있습니다.

## 문제가 생기면

- **패치가 실패한다** — 원본 크기·SHA-256 이 위 표와 같은지 확인하세요.
- **글자가 깨진다** — 옛 버전으로 만든 세이브 스테이트를 불러오면 그렇습니다.
  시나리오 데이터가 세이브 스테이트 안에 통째로 들어 있기 때문입니다.
  시나리오를 다시 진입하거나 메모리카드 세이브를 쓰세요.
- **PowerShell 이 막힌다** — 배치 파일이 `-ExecutionPolicy Bypass` 로 실행하지만,
  회사 PC 등에서 정책이 강제된 경우 실패할 수 있습니다. 이때는 BPS 패처를 쓰세요.

## 사용 도구·라이선스

- 패치 적용: **Flips** (Floating IPS) — GPLv3. `tools/COPYING.gpl3` 참조
- 한글 글꼴: **네오둥근모** — SIL Open Font License 1.1
- 한자·가나 일부: **갈무리14** — SIL Open Font License 1.1

이 패치는 팬 번역이며 Chunsoft / Spike Chunsoft 와 무관합니다.
원작의 저작권은 저작권자에게 있습니다. 패치 파일만 배포하며,
게임 데이터는 포함하지 않습니다.

## Flips 소스

동봉한 `tools/flips.exe` 는 Flips (Floating IPS) 바이너리입니다.
GPLv3 에 따라 소스는 https://github.com/Alcaro/Flips 에서 받을 수 있습니다.
