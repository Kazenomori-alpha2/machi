# 街 -運命の交差点- 한국어 패치 적용기
# original/ (또는 이 폴더)에 넣어 둔 일본판 원본 BIN 을 크기로 찾아 BPS 를 적용한다.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$ver  = 'v1.0'

# 지원 원본 (크기로 판별)
$sizes = @{ '700305648' = 'Disc1'; '610224048' = 'Disc2' }

$found = @{}
$dirs = @((Join-Path $root 'original'), $root)
foreach ($dir in $dirs) {
  if (-not (Test-Path $dir)) { continue }
  Get-ChildItem $dir -File | ForEach-Object {
    $len = [string]$_.Length
    if ($sizes.ContainsKey($len) -and -not $found.ContainsKey($sizes[$len])) {
      $found[$sizes[$len]] = $_.FullName
    }
  }
}
if ($found.Count -eq 0) {
  Write-Host ''
  Write-Host '  일본판 원본 BIN 을 찾지 못했습니다.'
  Write-Host '  Disc1 (700,305,648 B) / Disc2 (610,224,048 B) 를'
  Write-Host '  original 폴더(또는 이 폴더)에 넣고 다시 실행하세요.'
  Write-Host ''
  exit 1
}

$out = Join-Path $root 'patched'
New-Item -ItemType Directory -Force $out | Out-Null
$flips = Join-Path (Join-Path $root 'tools') 'flips.exe'

foreach ($d in @('Disc1','Disc2')) {
  if (-not $found[$d]) { Write-Host "  $d 원본 없음 - 건너뜁니다"; continue }
  $bps = Join-Path $root ("Machi_KO_{0}_{1}.bps" -f $ver, $d)
  $dst = Join-Path $out  ("Machi_KO_{0}_{1}.bin" -f $ver, $d)
  Write-Host "  $d 패치 적용 중..."
  $args2 = ('--apply', ('"{0}"' -f $bps), ('"{0}"' -f $found[$d]), ('"{0}"' -f $dst))
  $proc = Start-Process -FilePath $flips -ArgumentList $args2 -Wait -PassThru -WindowStyle Hidden
  if ($proc.ExitCode -ne 0) {
    Write-Host "  $d 실패 - 원본이 지원 목록과 같은지 확인하세요 (README 참고)"
    exit 1
  }
  Copy-Item (Join-Path $root ("Machi_KO_{0}_{1}.cue" -f $ver, $d)) $out -Force
  Write-Host "  $d 완료 -> $dst"
}
Write-Host ''
Write-Host '  전부 완료. patched 폴더의 .cue 파일로 실행하세요.'
Write-Host ''
