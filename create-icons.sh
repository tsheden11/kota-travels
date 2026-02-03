
#!/usr/bin/env bash
# Creates optimized SVG icons and commits them locally.
# Usage:
#   git checkout -b feature/redesign/icons   # or checkout your existing branch
#   chmod +x create-icons.sh
#   ./create-icons.sh
set -euo pipefail

mkdir -p src/images/icons

cat > src/images/icons/icon-calendar.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M3 8.66667H21M3 8.66667V18.4447C3 19.6892 3 20.3112 3.24524 20.7865C3.46095 21.2047 3.80491 21.545 4.22827 21.758C4.7091 22 5.33887 22 6.59652 22H17.4035C18.6611 22 19.29 22 19.7708 21.758C20.1942 21.545 20.5393 21.2047 20.755 20.7865C21 20.3116 21 19.6905 21 18.4484V8.66667M3 8.66667V7.778C3 6.53343 3 5.91069 3.24524 5.43533C3.46095 5.01719 3.80491 4.67748 4.22827 4.46443C4.70957 4.22222 5.3401 4.22222 6.60022 4.22222H7.5M21 8.66667V7.77434C21 6.53222 21 5.91022 20.755 5.43533C20.5393 5.01719 20.1942 4.67748 19.7708 4.46443C19.2895 4.22222 18.6603 4.22222 17.4002 4.22222H16.5M16.5 2V4.22222M16.5 4.22222H7.5M7.5 2V4.22222" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-checked.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M16.0003 9L10.667 15L8 12" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
  <path d="M3 17.8002V6.2002C3 5.08009 3 4.51962 3.21799 4.0918C3.40973 3.71547 3.71547 3.40973 4.0918 3.21799C4.51962 3 5.08009 3 6.2002 3H17.8002C18.9203 3 19.4796 3 19.9074 3.21799C20.2837 3.40973 20.5905 3.71547 20.7822 4.0918C21 4.5192 21 5.07899 21 6.19691V17.8036C21 18.9215 21 19.4805 20.7822 19.9079C20.5905 20.2842 20.2837 20.5905 19.9074 20.7822C19.48 21 18.921 21 17.8031 21H6.19691C5.07899 21 4.5192 21 4.0918 20.7822C3.71547 20.5905 3.40973 20.2842 3.21799 19.9079C3 19.4801 3 18.9203 3 17.8002Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-down.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M19 10L12 17L5 10" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-exclude.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M9.5 14.5001L12.0001 12M12.0001 12L14.5001 9.5M12.0001 12L9.50006 9.5M12.0001 12L14.5001 14.5001" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
  <path d="M3 12C3 16.9706 7.02944 21 12 21C16.9706 21 21 16.9706 21 12C21 7.02944 16.9706 3 12 3C7.02944 3 3 7.02944 3 12Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-full-right.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M6 12H18M18 12L12.8571 6M18 12L12.8571 18" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-help.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M8.51237 8.42331C8.72112 7.78006 9.10352 7.20762 9.61762 6.76826C10.1317 6.3289 10.758 6.04018 11.4259 5.93421C12.0938 5.82824 12.7776 5.90893 13.4025 6.16759C14.0273 6.42625 14.5684 6.85291 14.966 7.39996C15.3636 7.947 15.6017 8.59313 15.6549 9.26731C15.708 9.94149 15.5736 10.6174 15.2666 11.22C14.9597 11.8226 14.4926 12.3282 13.916 12.6815C13.3394 13.0349 12.6763 13.2219 12 13.2219V14.4447" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
  <path d="M12 23C5.92487 23 1 18.0751 1 12C1 5.92487 5.92487 1 12 1C18.0751 1 23 5.92487 23 12C23 18.0751 18.0751 23 12 23ZM12.0609 18.1111V18.2333L11.9391 18.2336V18.1111H12.0609Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-highlight.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M4 12.6567L8.94975 17.6065L19.5572 7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-highlight-1.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M2.16113 10.6429C1.84788 10.3532 2.01804 9.82955 2.44174 9.77931L8.44531 9.06722C8.61799 9.04674 8.76799 8.93831 8.84082 8.7804L11.373 3.29061C11.5518 2.90318 12.1025 2.9031 12.2812 3.29054L14.8135 8.78029C14.8863 8.93819 15.0353 9.04692 15.208 9.0674L21.2119 9.77931C21.6356 9.82955 21.8053 10.3534 21.492 10.6431L17.0539 14.7481C16.9263 14.8661 16.8694 15.0419 16.9033 15.2124L18.0812 21.1421C18.1643 21.5606 17.719 21.8848 17.3467 21.6764L12.0713 18.7228C11.9196 18.6378 11.7352 18.6382 11.5835 18.7232L6.30761 21.6757C5.9353 21.8841 5.48911 21.5606 5.57227 21.1421L6.75032 15.2128C6.7842 15.0422 6.72751 14.8661 6.59984 14.748L2.16113 10.6429Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-include.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M15 10L11 14L9 12M12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12C21 16.9706 16.9706 21 12 21Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-instagram.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
  <path d="M12 2.5C14.7124 2.5 15.0432 2.51131 16.1016 2.56152L16.1025 2.5625C17.1157 2.6072 17.7884 2.76935 18.3701 2.99414C18.9654 3.22445 19.4642 3.53065 19.9668 4.0332L19.9678 4.03418C20.4721 4.53493 20.7738 5.03112 20.9961 5.63086L20.999 5.63867C21.1952 6.14324 21.3441 6.72381 21.4082 7.54004L21.4297 7.90527C21.4761 8.96044 21.4883 9.29208 21.4883 12.0039C21.4883 14.7157 21.4761 15.0474 21.4297 16.1025C21.385 17.1157 21.2228 17.7884 20.998 18.3701C20.7677 18.9654 20.4615 19.4642 19.959 19.9668C19.4564 20.4693 18.9576 20.7756 18.3623 21.0059L18.3613 21.0068C17.7847 21.231 17.1083 21.3928 16.0947 21.4375C15.0396 21.4839 14.7079 21.4961 11.9961 21.4961C9.28385 21.4961 8.95203 21.4839 7.89648 21.4375H7.89746C6.88434 21.3928 6.21155 21.2307 5.62988 21.0059C5.03462 20.7756 4.53576 20.4693 4.0332 19.9668L4.03223 19.9658L3.85156 19.7773C3.50963 19.4012 3.27165 19.0189 3.08105 18.5859L2.98926 18.3652C2.79308 17.8607 2.64416 17.2801 2.58008 16.4639L2.55859 16.0986C2.51221 15.0435 2.5 14.7118 2.5 12C2.5 9.28827 2.51221 8.95653 2.55859 7.89746C2.6033 6.88422 2.76442 6.21062 2.98926 5.62891C3.22423 5.03168 3.52857 4.53431 4.03223 4.03418L4.03418 4.03223C4.47238 3.59094 4.90872 3.3035 5.41406 3.08105L5.63477 2.98926C6.21144 2.76505 6.88782 2.60331 7.90137 2.55859L7.90039 2.55762C8.95593 2.51122 9.28776 2.5 12 2.5ZM16.0605 3.35938C14.9995 3.31204 14.674 3.30078 12 3.30078C9.32536 3.30078 9.00021 3.31201 7.93848 3.35938C6.91075 3.40481 6.32582 3.58044 5.9248 3.73633C5.39597 3.94078 5.00497 4.19425 4.60352 4.5957C4.20628 4.99294 3.94875 5.38774 3.74414 5.91699C3.58835 6.31775 3.41264 6.89878 3.36719 7.93066C3.31982 8.9924 3.30859 9.31755 3.30859 11.9922C3.30859 14.6623 3.31986 14.9878 3.36719 16.0527V16.0537C3.41259 17.0807 3.58834 17.6654 3.74414 18.0664V18.0674C3.94859 18.5962 4.20206 18.9872 4.60352 19.3887C5.00067 19.7858 5.39572 20.0425 5.9248 20.2471C6.32558 20.4029 6.90631 20.5795 7.93848 20.625V20.624C9.00021 20.6714 9.32536 20.6836 12 20.6836C14.6708 20.6836 14.996 20.6714 16.0615 20.624V20.625C17.0888 20.5796 17.6732 20.4029 18.0742 20.2471L18.0752 20.248C18.604 20.0436 18.995 19.7901 19.3965 19.3887C19.7938 18.9914 20.0503 18.5958 20.2549 18.0664C20.4106 17.6657 20.5874 17.0852 20.6328 16.0537L20.6318 16.0527C20.6792 14.9916 20.6914 14.6662 20.6914 11.9922C20.6914 9.32141 20.6792 8.99624 20.6318 7.93066H20.6328C20.5874 6.90265 20.4108 6.31802 20.2549 5.91699H20.2559C20.0514 5.38815 19.7979 4.99716 19.3965 4.5957C18.9992 4.19842 18.6036 3.94095 18.0742 3.73633C17.6735 3.58062 17.0927 3.40479 16.0615 3.35938H16.0605Z" fill="currentColor"/>
  <path d="M12 6.86328C9.16406 6.86328 6.86328 9.16406 6.86328 12C6.86328 14.8359 9.16406 17.1367 12 17.1367C14.8359 17.1367 17.1367 14.8359 17.1367 12C17.1367 9.16406 14.8359 6.86328 12 6.86328ZM12 15.332C10.1602 15.332 8.66797 13.8398 8.66797 12C8.66797 10.1602 10.1602 8.66797 12 8.66797C13.8398 8.66797 15.332 10.1602 15.332 12C15.332 13.8398 13.8398 15.332 12 15.332Z" fill="currentColor"/>
  <path d="M18.5391 6.66013C18.5391 7.32419 18 7.85935 17.3398 7.85935C16.6758 7.85935 16.1406 7.32028 16.1406 6.66013C16.1406 5.99606 16.6797 5.46091 17.3398 5.46091C18 5.46091 18.5391 5.99997 18.5391 6.66013Z" fill="currentColor"/>
</svg>
SVG

cat > src/images/icons/icon-leaf.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M6.8291 17.0806C13.9002 21.3232 19.557 15.6663 18.8499 5.0598C8.24352 4.35269 2.58692 10.0097 6.8291 17.0806ZM6.8291 17.0806L5 18.909M6.8291 17.0806L10.6569 13.2522" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-leaf-1.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M6.8291 17.0806C13.9002 21.3232 19.557 15.6663 18.8499 5.0598C8.24352 4.35269 2.58692 10.0097 6.8291 17.0806ZM6.8291 17.0806L5 18.909M6.8291 17.0806L10.6569 13.2522" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-left.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M14 18L9 12L14 6" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-mail.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M4 6L10.1076 10.6123L10.1097 10.614C10.7878 11.1113 11.1271 11.3601 11.4988 11.4562C11.8272 11.5412 12.1725 11.5412 12.501 11.4562C12.8729 11.36 13.2132 11.1105 13.8926 10.6123C13.8926 10.6123 17.8101 7.60594 20 6" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
  <path d="M3 15.8002V8.2002C3 7.08009 3 6.51962 3.21799 6.0918C3.40973 5.71547 3.71547 5.40973 4.0918 5.21799C4.51962 5 5.08009 5 6.2002 5H17.8002C18.9203 5 19.4796 5 19.9074 5.21799C20.2837 5.40973 20.5905 5.71547 20.7822 6.0918C21 6.5192 21 7.07899 21 8.19691V15.8036C21 16.9215 21 17.4805 20.7822 17.9079C20.5905 18.2842 20.2837 18.5905 19.9074 18.7822C19.48 19 18.921 19 17.8031 19H6.19691C5.07899 19 4.5192 19 4.0918 18.7822C3.71547 18.5905 3.40973 18.2842 3.21799 17.9079C3 17.4801 3 16.9203 3 15.8002Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-pin.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M5 9.92285C5 14.7747 9.24448 18.7869 11.1232 20.3252C11.3921 20.5454 11.5281 20.6568 11.7287 20.7132C11.8849 20.7572 12.1148 20.7572 12.271 20.7132C12.472 20.6567 12.6071 20.5463 12.877 20.3254C14.7557 18.7871 18.9999 14.7751 18.9999 9.9233C18.9999 8.08718 18.2625 6.32605 16.9497 5.02772C15.637 3.72939 13.8566 3 12.0001 3C10.1436 3 8.36301 3.7295 7.05025 5.02783C5.7375 6.32616 5 8.08674 5 9.92285Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
  <path d="M10 9C10 10.1046 10.8954 11 12 11C13.1046 11 14 10.1046 14 9C14 7.89543 13.1046 7 12 7C10.8954 7 10 7.89543 10 9Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-quantity-change.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M17 17L12 22L7 17M7 7L12 2L17 7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-right.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M10 6L15 12L10 18" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-unchecked.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M3 6.2002V17.8002C3 18.9203 3 19.4801 3.21799 19.9079C3.40973 20.2842 3.71547 20.5905 4.0918 20.7822C4.5192 21 5.07899 21 6.19691 21H17.8031C18.921 21 19.48 21 19.9074 20.7822C20.2837 20.5905 20.5905 20.2842 20.7822 19.9079C21 19.4805 21 18.9215 21 17.8036V6.19691C21 5.07899 21 4.5192 20.7822 4.0918C20.5905 3.71547 20.2837 3.40973 19.9074 3.21799C19.4796 3 18.9203 3 17.8002 3H6.2002C5.08009 3 4.51962 3 4.0918 3.21799C3.71547 3.40973 3.40973 3.71547 3.21799 4.0918C3 4.51962 3 5.08009 3 6.2002Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-up.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M5 16L12 9L19 16" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-whatsapp.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
  <path d="M1 23L2.54641 17.3506C1.59217 15.6969 1.09075 13.8223 1.09167 11.9001C1.09442 5.89042 5.98482 1 11.9936 1C14.9095 1.00092 17.6466 2.13667 19.7055 4.19733C21.7634 6.258 22.8964 8.997 22.8955 11.9102C22.8927 17.9208 18.0023 22.8112 11.9936 22.8112C10.1694 22.8103 8.37182 22.3528 6.77957 21.4838L1 23Z" fill="currentColor"/>
  <path d="M7.04724 19.5103C8.58357 20.4223 10.0502 20.9687 11.9899 20.9696C16.9839 20.9696 21.052 16.9051 21.0548 11.9083C21.0566 6.9015 17.0077 2.8425 11.9972 2.84067C6.99957 2.84067 2.93416 6.90517 2.93233 11.901C2.93141 13.9406 3.52908 15.4677 4.53283 17.0655L3.61708 20.4095L7.04724 19.5103Z" fill="currentColor"/>
  <path d="M17.4853 14.5016C17.4175 14.3879 17.236 14.3201 16.9628 14.1835C16.6905 14.0469 15.3513 13.3878 15.1011 13.2971C14.8517 13.2063 14.6702 13.1605 14.4878 13.4337C14.3063 13.7059 13.7838 14.3201 13.6252 14.5016C13.4666 14.6831 13.3071 14.706 13.0349 14.5694C12.7626 14.4328 11.8845 14.1459 10.8441 13.2173C10.0346 12.495 9.4874 11.6031 9.32881 11.3299C9.17023 11.0577 9.31231 10.9101 9.44798 10.7744C9.57081 10.6525 9.72023 10.4563 9.85681 10.2968C9.99523 10.1392 10.0401 10.0255 10.1318 9.84308C10.2226 9.66158 10.1776 9.50208 10.1089 9.3655C10.0401 9.22983 9.49565 7.88875 9.26923 7.34333C9.0474 6.81258 8.82282 6.88408 8.65598 6.87583L8.13348 6.86667C7.95198 6.86667 7.65682 6.9345 7.40749 7.20767C7.15815 7.48083 6.45415 8.139 6.45415 9.48008C6.45415 10.8212 7.4304 12.1164 7.56607 12.2979C7.70265 12.4794 9.48648 15.2313 12.2191 16.411C12.869 16.6915 13.3768 16.8593 13.7719 16.9848C14.4246 17.192 15.0186 17.1627 15.4879 17.093C16.0113 17.0151 17.0994 16.4339 17.3267 15.7978C17.554 15.1607 17.554 14.6153 17.4853 14.5016Z" fill="currentColor"/>
</svg>
SVG

cat > src/images/icons/icon-cycling.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M19 12.5C17.067 12.5 15.5 14.067 15.5 16C15.5 17.933 17.067 19.5 19 19.5C20.933 19.5 22.5 17.933 22.5 16C22.5 14.067 20.933 12.5 19 12.5ZM19 12.5C16.5 12.5 12.9868 10.1233 12.6332 7.64844C8.99999 9 6.49999 10.5 9.49997 12C12.4999 13.5 14 14 10.5 18.5M13.5 10C12 10.5 11.0002 11 10 12M19 6.5C19 7.60457 18.1046 8.5 17 8.5C15.8954 8.5 15 7.60457 15 6.5C15 5.39543 15.8954 4.5 17 4.5C18.1046 4.5 19 5.39543 19 6.5ZM8.5 16C8.5 17.933 6.933 19.5 5 19.5C3.067 19.5 1.5 17.933 1.5 16C1.5 14.067 3.067 12.5 5 12.5C6.933 12.5 8.5 14.067 8.5 16Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-heart.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M12 7.69427C10 2.99983 3 3.49983 3 9.49986C3 15.4999 12 20.5001 12 20.5001C12 20.5001 21 15.4999 21 9.49986C21 3.49983 14 2.99983 12 7.69427Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-walking.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M4.5 13C6 9.74996 12.5 6.99998 13.5 8.99998M13.5 8.99998C14.5 11 9.79999 18.6 6.5 21.5H8.5M13.5 8.99998C14 10.75 18.5 12 20 11M11 8.5C8 14 10.2502 13.8436 12.0001 14.5C13.7499 15.1564 15.5 17.5 15.5 21.5H17.5M15 3.99996C15 5.10453 14.1045 5.99998 13 6C11.8954 6.00002 11 5.10461 11 4.00004C11 2.89547 11.8955 2.00002 13 2C14.1046 1.99998 15 2.89539 15 3.99996Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-clock.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M12 7V12H17M12 21C7.02944 21 3 16.9706 3 12C3 7.02944 7.02944 3 12 3C16.9706 3 21 7.02944 21 12C21 16.9706 16.9706 21 12 21Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-compass.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M3 12C3 16.9706 7.02944 21 12 21C16.9706 21 21 16.9706 21 12C21 7.02944 16.9706 3 12 3C7.02944 3 3 7.02944 3 12Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
  <path d="M10.5 10.5L16 8L13.5 13.5L8 16L10.5 10.5Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-flag.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M4 21V15.6871M4 15.6871C9.81818 11.1377 14.1818 20.2363 20 15.6869V4.31347C14.1818 8.86284 9.81818 -0.236103 4 4.31327V15.6871Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-globe.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M3 12H8M3 12C3 16.9706 7.02944 21 12 21M3 12C3 7.02944 7.02944 3 12 3M8 12H16M8 12C8 16.9706 9.79086 21 12 21M8 12C8 7.02944 9.79086 3 12 3M16 12H21M16 12C16 7.02944 14.2091 3 12 3M16 12C16 16.9706 14.2091 21 12 21M21 12C21 7.02944 16.9706 3 12 3M21 12C21 16.9706 16.9706 21 12 21" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

cat > src/images/icons/icon-home.svg <<'SVG'
<svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" fill="none">
  <path d="M20 17.0002V11.4522C20 10.9179 19.9995 10.6506 19.9346 10.4019C19.877 10.1816 19.7825 9.97307 19.6546 9.78464C19.5102 9.57201 19.3096 9.39569 18.9074 9.04383L14.1074 4.84383C13.3608 4.19054 12.9875 3.86406 12.5674 3.73982C12.1972 3.63035 11.8026 3.63035 11.4324 3.73982C11.0126 3.86397 10.6398 4.19014 9.89436 4.84244L5.09277 9.04383C4.69064 9.39569 4.49004 9.57201 4.3457 9.78464C4.21779 9.97307 4.12255 10.1816 4.06497 10.4019C4 10.6506 4 10.9179 4 11.4522V17.0002C4 17.932 4 18.3978 4.15224 18.7654C4.35523 19.2554 4.74432 19.6452 5.23438 19.8482C5.60192 20.0005 6.06786 20.0005 6.99974 20.0005C7.93163 20.0005 8.39808 20.0005 8.76562 19.8482C9.25568 19.6452 9.64467 19.2555 9.84766 18.7654C9.9999 18.3979 10 17.932 10 17.0001V16.0001C10 14.8955 10.8954 14.0001 12 14.0001C13.1046 14.0001 14 14.8955 14 16.0001V17.0001C14 17.932 14 18.3979 14.1522 18.7654C14.3552 19.2555 14.7443 19.6452 15.2344 19.8482C15.6019 20.0005 16.0679 20.0005 16.9997 20.0005C17.9316 20.0005 18.3981 20.0005 18.7656 19.8482C19.2557 19.6452 19.6447 19.2554 19.8477 18.7654C19.9999 18.3978 20 17.932 20 17.0002Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
</svg>
SVG

git add src/images/icons/*.svg
git commit -m "chore: add optimized SVG icon set (currentColor, aria-hidden)"

echo "Created and committed SVG icons locally in src/images/icons/"
echo "Branch: $(git rev-parse --abbrev-ref HEAD)"
echo "No push performed. Run 'git push' when you're ready."