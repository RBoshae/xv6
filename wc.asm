
_wc:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "%d %d %d %s\n", l, w, c, name);
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	bb 01 00 00 00       	mov    $0x1,%ebx
  16:	83 ec 18             	sub    $0x18,%esp
  19:	8b 01                	mov    (%ecx),%eax
  1b:	8b 71 04             	mov    0x4(%ecx),%esi
  int fd, i;

  if(argc <= 1){
  1e:	83 f8 01             	cmp    $0x1,%eax
  printf(1, "%d %d %d %s\n", l, w, c, name);
}

int
main(int argc, char *argv[])
{
  21:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;

  if(argc <= 1){
  24:	7f 29                	jg     4f <main+0x4f>
  26:	eb 60                	jmp    88 <main+0x88>
  28:	90                   	nop
  29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "wc: cannot open %s\n", argv[i]);
      exit(0);
    }
    wc(fd, argv[i]);
  30:	83 ec 08             	sub    $0x8,%esp
  33:	ff 34 9e             	pushl  (%esi,%ebx,4)
  if(argc <= 1){
    wc(0, "");
    exit(0);
  }

  for(i = 1; i < argc; i++){
  36:	83 c3 01             	add    $0x1,%ebx
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "wc: cannot open %s\n", argv[i]);
      exit(0);
    }
    wc(fd, argv[i]);
  39:	57                   	push   %edi
  3a:	e8 81 00 00 00       	call   c0 <wc>
    close(fd);
  3f:	89 3c 24             	mov    %edi,(%esp)
  42:	e8 d3 03 00 00       	call   41a <close>
  if(argc <= 1){
    wc(0, "");
    exit(0);
  }

  for(i = 1; i < argc; i++){
  47:	83 c4 10             	add    $0x10,%esp
  4a:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  4d:	74 56                	je     a5 <main+0xa5>
    if((fd = open(argv[i], 0)) < 0){
  4f:	83 ec 08             	sub    $0x8,%esp
  52:	6a 00                	push   $0x0
  54:	ff 34 9e             	pushl  (%esi,%ebx,4)
  57:	e8 d6 03 00 00       	call   432 <open>
  5c:	83 c4 10             	add    $0x10,%esp
  5f:	85 c0                	test   %eax,%eax
  61:	89 c7                	mov    %eax,%edi
  63:	79 cb                	jns    30 <main+0x30>
      printf(1, "wc: cannot open %s\n", argv[i]);
  65:	83 ec 04             	sub    $0x4,%esp
  68:	ff 34 9e             	pushl  (%esi,%ebx,4)
  6b:	68 83 08 00 00       	push   $0x883
  70:	6a 01                	push   $0x1
  72:	e8 c9 04 00 00       	call   540 <printf>
      exit(0);
  77:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  7e:	e8 6f 03 00 00       	call   3f2 <exit>
  83:	83 c4 10             	add    $0x10,%esp
  86:	eb a8                	jmp    30 <main+0x30>
main(int argc, char *argv[])
{
  int fd, i;

  if(argc <= 1){
    wc(0, "");
  88:	50                   	push   %eax
  89:	50                   	push   %eax
  8a:	68 75 08 00 00       	push   $0x875
  8f:	6a 00                	push   $0x0
  91:	e8 2a 00 00 00       	call   c0 <wc>
    exit(0);
  96:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  9d:	e8 50 03 00 00       	call   3f2 <exit>
  a2:	83 c4 10             	add    $0x10,%esp
      exit(0);
    }
    wc(fd, argv[i]);
    close(fd);
  }
  exit(0);
  a5:	83 ec 0c             	sub    $0xc,%esp
  a8:	6a 00                	push   $0x0
  aa:	e8 43 03 00 00       	call   3f2 <exit>
}
  af:	8d 65 f0             	lea    -0x10(%ebp),%esp
  b2:	31 c0                	xor    %eax,%eax
  b4:	59                   	pop    %ecx
  b5:	5b                   	pop    %ebx
  b6:	5e                   	pop    %esi
  b7:	5f                   	pop    %edi
  b8:	5d                   	pop    %ebp
  b9:	8d 61 fc             	lea    -0x4(%ecx),%esp
  bc:	c3                   	ret    
  bd:	66 90                	xchg   %ax,%ax
  bf:	90                   	nop

000000c0 <wc>:

char buf[512];

void
wc(int fd, char *name)
{
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	57                   	push   %edi
  c4:	56                   	push   %esi
  c5:	53                   	push   %ebx
  int i, n;
  int l, w, c, inword;

  l = w = c = 0;
  inword = 0;
  c6:	31 f6                	xor    %esi,%esi
wc(int fd, char *name)
{
  int i, n;
  int l, w, c, inword;

  l = w = c = 0;
  c8:	31 db                	xor    %ebx,%ebx

char buf[512];

void
wc(int fd, char *name)
{
  ca:	83 ec 1c             	sub    $0x1c,%esp
  int i, n;
  int l, w, c, inword;

  l = w = c = 0;
  cd:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  d4:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  db:	90                   	nop
  dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
  e0:	83 ec 04             	sub    $0x4,%esp
  e3:	68 00 02 00 00       	push   $0x200
  e8:	68 c0 0b 00 00       	push   $0xbc0
  ed:	ff 75 08             	pushl  0x8(%ebp)
  f0:	e8 15 03 00 00       	call   40a <read>
  f5:	83 c4 10             	add    $0x10,%esp
  f8:	83 f8 00             	cmp    $0x0,%eax
  fb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  fe:	7e 5f                	jle    15f <wc+0x9f>
 100:	31 ff                	xor    %edi,%edi
 102:	eb 0e                	jmp    112 <wc+0x52>
 104:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for(i=0; i<n; i++){
      c++;
      if(buf[i] == '\n')
        l++;
      if(strchr(" \r\t\n\v", buf[i]))
        inword = 0;
 108:	31 f6                	xor    %esi,%esi
  int l, w, c, inword;

  l = w = c = 0;
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i=0; i<n; i++){
 10a:	83 c7 01             	add    $0x1,%edi
 10d:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 110:	74 3a                	je     14c <wc+0x8c>
      c++;
      if(buf[i] == '\n')
 112:	0f be 87 c0 0b 00 00 	movsbl 0xbc0(%edi),%eax
        l++;
 119:	31 c9                	xor    %ecx,%ecx
 11b:	3c 0a                	cmp    $0xa,%al
 11d:	0f 94 c1             	sete   %cl
      if(strchr(" \r\t\n\v", buf[i]))
 120:	83 ec 08             	sub    $0x8,%esp
 123:	50                   	push   %eax
 124:	68 60 08 00 00       	push   $0x860
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i=0; i<n; i++){
      c++;
      if(buf[i] == '\n')
        l++;
 129:	01 cb                	add    %ecx,%ebx
      if(strchr(" \r\t\n\v", buf[i]))
 12b:	e8 50 01 00 00       	call   280 <strchr>
 130:	83 c4 10             	add    $0x10,%esp
 133:	85 c0                	test   %eax,%eax
 135:	75 d1                	jne    108 <wc+0x48>
        inword = 0;
      else if(!inword){
 137:	85 f6                	test   %esi,%esi
 139:	75 1d                	jne    158 <wc+0x98>
        w++;
 13b:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
  int l, w, c, inword;

  l = w = c = 0;
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i=0; i<n; i++){
 13f:	83 c7 01             	add    $0x1,%edi
 142:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
        l++;
      if(strchr(" \r\t\n\v", buf[i]))
        inword = 0;
      else if(!inword){
        w++;
        inword = 1;
 145:	be 01 00 00 00       	mov    $0x1,%esi
  int l, w, c, inword;

  l = w = c = 0;
  inword = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i=0; i<n; i++){
 14a:	75 c6                	jne    112 <wc+0x52>
 14c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 14f:	01 55 dc             	add    %edx,-0x24(%ebp)
 152:	eb 8c                	jmp    e0 <wc+0x20>
 154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 158:	be 01 00 00 00       	mov    $0x1,%esi
 15d:	eb ab                	jmp    10a <wc+0x4a>
        w++;
        inword = 1;
      }
    }
  }
  if(n < 0){
 15f:	75 24                	jne    185 <wc+0xc5>
    printf(1, "wc: read error\n");
    exit(0);
  }
  printf(1, "%d %d %d %s\n", l, w, c, name);
 161:	83 ec 08             	sub    $0x8,%esp
 164:	ff 75 0c             	pushl  0xc(%ebp)
 167:	ff 75 dc             	pushl  -0x24(%ebp)
 16a:	ff 75 e0             	pushl  -0x20(%ebp)
 16d:	53                   	push   %ebx
 16e:	68 76 08 00 00       	push   $0x876
 173:	6a 01                	push   $0x1
 175:	e8 c6 03 00 00       	call   540 <printf>
}
 17a:	83 c4 20             	add    $0x20,%esp
 17d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 180:	5b                   	pop    %ebx
 181:	5e                   	pop    %esi
 182:	5f                   	pop    %edi
 183:	5d                   	pop    %ebp
 184:	c3                   	ret    
        inword = 1;
      }
    }
  }
  if(n < 0){
    printf(1, "wc: read error\n");
 185:	83 ec 08             	sub    $0x8,%esp
 188:	68 66 08 00 00       	push   $0x866
 18d:	6a 01                	push   $0x1
 18f:	e8 ac 03 00 00       	call   540 <printf>
    exit(0);
 194:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 19b:	e8 52 02 00 00       	call   3f2 <exit>
 1a0:	83 c4 10             	add    $0x10,%esp
 1a3:	eb bc                	jmp    161 <wc+0xa1>
 1a5:	66 90                	xchg   %ax,%ax
 1a7:	66 90                	xchg   %ax,%ax
 1a9:	66 90                	xchg   %ax,%ax
 1ab:	66 90                	xchg   %ax,%ax
 1ad:	66 90                	xchg   %ax,%ax
 1af:	90                   	nop

000001b0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	8b 45 08             	mov    0x8(%ebp),%eax
 1b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1ba:	89 c2                	mov    %eax,%edx
 1bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1c0:	83 c1 01             	add    $0x1,%ecx
 1c3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1c7:	83 c2 01             	add    $0x1,%edx
 1ca:	84 db                	test   %bl,%bl
 1cc:	88 5a ff             	mov    %bl,-0x1(%edx)
 1cf:	75 ef                	jne    1c0 <strcpy+0x10>
    ;
  return os;
}
 1d1:	5b                   	pop    %ebx
 1d2:	5d                   	pop    %ebp
 1d3:	c3                   	ret    
 1d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001e0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	56                   	push   %esi
 1e4:	53                   	push   %ebx
 1e5:	8b 55 08             	mov    0x8(%ebp),%edx
 1e8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1eb:	0f b6 02             	movzbl (%edx),%eax
 1ee:	0f b6 19             	movzbl (%ecx),%ebx
 1f1:	84 c0                	test   %al,%al
 1f3:	75 1e                	jne    213 <strcmp+0x33>
 1f5:	eb 29                	jmp    220 <strcmp+0x40>
 1f7:	89 f6                	mov    %esi,%esi
 1f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 200:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 203:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 206:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 209:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 20d:	84 c0                	test   %al,%al
 20f:	74 0f                	je     220 <strcmp+0x40>
 211:	89 f1                	mov    %esi,%ecx
 213:	38 d8                	cmp    %bl,%al
 215:	74 e9                	je     200 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 217:	29 d8                	sub    %ebx,%eax
}
 219:	5b                   	pop    %ebx
 21a:	5e                   	pop    %esi
 21b:	5d                   	pop    %ebp
 21c:	c3                   	ret    
 21d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 220:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 222:	29 d8                	sub    %ebx,%eax
}
 224:	5b                   	pop    %ebx
 225:	5e                   	pop    %esi
 226:	5d                   	pop    %ebp
 227:	c3                   	ret    
 228:	90                   	nop
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000230 <strlen>:

uint
strlen(char *s)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 236:	80 39 00             	cmpb   $0x0,(%ecx)
 239:	74 12                	je     24d <strlen+0x1d>
 23b:	31 d2                	xor    %edx,%edx
 23d:	8d 76 00             	lea    0x0(%esi),%esi
 240:	83 c2 01             	add    $0x1,%edx
 243:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 247:	89 d0                	mov    %edx,%eax
 249:	75 f5                	jne    240 <strlen+0x10>
    ;
  return n;
}
 24b:	5d                   	pop    %ebp
 24c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 24d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 24f:	5d                   	pop    %ebp
 250:	c3                   	ret    
 251:	eb 0d                	jmp    260 <memset>
 253:	90                   	nop
 254:	90                   	nop
 255:	90                   	nop
 256:	90                   	nop
 257:	90                   	nop
 258:	90                   	nop
 259:	90                   	nop
 25a:	90                   	nop
 25b:	90                   	nop
 25c:	90                   	nop
 25d:	90                   	nop
 25e:	90                   	nop
 25f:	90                   	nop

00000260 <memset>:

void*
memset(void *dst, int c, uint n)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 267:	8b 4d 10             	mov    0x10(%ebp),%ecx
 26a:	8b 45 0c             	mov    0xc(%ebp),%eax
 26d:	89 d7                	mov    %edx,%edi
 26f:	fc                   	cld    
 270:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 272:	89 d0                	mov    %edx,%eax
 274:	5f                   	pop    %edi
 275:	5d                   	pop    %ebp
 276:	c3                   	ret    
 277:	89 f6                	mov    %esi,%esi
 279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000280 <strchr>:

char*
strchr(const char *s, char c)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	53                   	push   %ebx
 284:	8b 45 08             	mov    0x8(%ebp),%eax
 287:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 28a:	0f b6 10             	movzbl (%eax),%edx
 28d:	84 d2                	test   %dl,%dl
 28f:	74 1d                	je     2ae <strchr+0x2e>
    if(*s == c)
 291:	38 d3                	cmp    %dl,%bl
 293:	89 d9                	mov    %ebx,%ecx
 295:	75 0d                	jne    2a4 <strchr+0x24>
 297:	eb 17                	jmp    2b0 <strchr+0x30>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a0:	38 ca                	cmp    %cl,%dl
 2a2:	74 0c                	je     2b0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 2a4:	83 c0 01             	add    $0x1,%eax
 2a7:	0f b6 10             	movzbl (%eax),%edx
 2aa:	84 d2                	test   %dl,%dl
 2ac:	75 f2                	jne    2a0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 2ae:	31 c0                	xor    %eax,%eax
}
 2b0:	5b                   	pop    %ebx
 2b1:	5d                   	pop    %ebp
 2b2:	c3                   	ret    
 2b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002c0 <gets>:

char*
gets(char *buf, int max)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	57                   	push   %edi
 2c4:	56                   	push   %esi
 2c5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2c6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 2c8:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 2cb:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2ce:	eb 29                	jmp    2f9 <gets+0x39>
    cc = read(0, &c, 1);
 2d0:	83 ec 04             	sub    $0x4,%esp
 2d3:	6a 01                	push   $0x1
 2d5:	57                   	push   %edi
 2d6:	6a 00                	push   $0x0
 2d8:	e8 2d 01 00 00       	call   40a <read>
    if(cc < 1)
 2dd:	83 c4 10             	add    $0x10,%esp
 2e0:	85 c0                	test   %eax,%eax
 2e2:	7e 1d                	jle    301 <gets+0x41>
      break;
    buf[i++] = c;
 2e4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2e8:	8b 55 08             	mov    0x8(%ebp),%edx
 2eb:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 2ed:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 2ef:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2f3:	74 1b                	je     310 <gets+0x50>
 2f5:	3c 0d                	cmp    $0xd,%al
 2f7:	74 17                	je     310 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2f9:	8d 5e 01             	lea    0x1(%esi),%ebx
 2fc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2ff:	7c cf                	jl     2d0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 301:	8b 45 08             	mov    0x8(%ebp),%eax
 304:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 308:	8d 65 f4             	lea    -0xc(%ebp),%esp
 30b:	5b                   	pop    %ebx
 30c:	5e                   	pop    %esi
 30d:	5f                   	pop    %edi
 30e:	5d                   	pop    %ebp
 30f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 310:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 313:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 315:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 319:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31c:	5b                   	pop    %ebx
 31d:	5e                   	pop    %esi
 31e:	5f                   	pop    %edi
 31f:	5d                   	pop    %ebp
 320:	c3                   	ret    
 321:	eb 0d                	jmp    330 <stat>
 323:	90                   	nop
 324:	90                   	nop
 325:	90                   	nop
 326:	90                   	nop
 327:	90                   	nop
 328:	90                   	nop
 329:	90                   	nop
 32a:	90                   	nop
 32b:	90                   	nop
 32c:	90                   	nop
 32d:	90                   	nop
 32e:	90                   	nop
 32f:	90                   	nop

00000330 <stat>:

int
stat(char *n, struct stat *st)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	56                   	push   %esi
 334:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 335:	83 ec 08             	sub    $0x8,%esp
 338:	6a 00                	push   $0x0
 33a:	ff 75 08             	pushl  0x8(%ebp)
 33d:	e8 f0 00 00 00       	call   432 <open>
  if(fd < 0)
 342:	83 c4 10             	add    $0x10,%esp
 345:	85 c0                	test   %eax,%eax
 347:	78 27                	js     370 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 349:	83 ec 08             	sub    $0x8,%esp
 34c:	ff 75 0c             	pushl  0xc(%ebp)
 34f:	89 c3                	mov    %eax,%ebx
 351:	50                   	push   %eax
 352:	e8 f3 00 00 00       	call   44a <fstat>
 357:	89 c6                	mov    %eax,%esi
  close(fd);
 359:	89 1c 24             	mov    %ebx,(%esp)
 35c:	e8 b9 00 00 00       	call   41a <close>
  return r;
 361:	83 c4 10             	add    $0x10,%esp
 364:	89 f0                	mov    %esi,%eax
}
 366:	8d 65 f8             	lea    -0x8(%ebp),%esp
 369:	5b                   	pop    %ebx
 36a:	5e                   	pop    %esi
 36b:	5d                   	pop    %ebp
 36c:	c3                   	ret    
 36d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 370:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 375:	eb ef                	jmp    366 <stat+0x36>
 377:	89 f6                	mov    %esi,%esi
 379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000380 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	53                   	push   %ebx
 384:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 387:	0f be 11             	movsbl (%ecx),%edx
 38a:	8d 42 d0             	lea    -0x30(%edx),%eax
 38d:	3c 09                	cmp    $0x9,%al
 38f:	b8 00 00 00 00       	mov    $0x0,%eax
 394:	77 1f                	ja     3b5 <atoi+0x35>
 396:	8d 76 00             	lea    0x0(%esi),%esi
 399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 3a0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 3a3:	83 c1 01             	add    $0x1,%ecx
 3a6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3aa:	0f be 11             	movsbl (%ecx),%edx
 3ad:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3b0:	80 fb 09             	cmp    $0x9,%bl
 3b3:	76 eb                	jbe    3a0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 3b5:	5b                   	pop    %ebx
 3b6:	5d                   	pop    %ebp
 3b7:	c3                   	ret    
 3b8:	90                   	nop
 3b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003c0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	56                   	push   %esi
 3c4:	53                   	push   %ebx
 3c5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3c8:	8b 45 08             	mov    0x8(%ebp),%eax
 3cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ce:	85 db                	test   %ebx,%ebx
 3d0:	7e 14                	jle    3e6 <memmove+0x26>
 3d2:	31 d2                	xor    %edx,%edx
 3d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3d8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3dc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3df:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3e2:	39 da                	cmp    %ebx,%edx
 3e4:	75 f2                	jne    3d8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 3e6:	5b                   	pop    %ebx
 3e7:	5e                   	pop    %esi
 3e8:	5d                   	pop    %ebp
 3e9:	c3                   	ret    

000003ea <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3ea:	b8 01 00 00 00       	mov    $0x1,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <exit>:
SYSCALL(exit)
 3f2:	b8 02 00 00 00       	mov    $0x2,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <wait>:
SYSCALL(wait)
 3fa:	b8 03 00 00 00       	mov    $0x3,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <pipe>:
SYSCALL(pipe)
 402:	b8 04 00 00 00       	mov    $0x4,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <read>:
SYSCALL(read)
 40a:	b8 05 00 00 00       	mov    $0x5,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <write>:
SYSCALL(write)
 412:	b8 10 00 00 00       	mov    $0x10,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <close>:
SYSCALL(close)
 41a:	b8 15 00 00 00       	mov    $0x15,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <kill>:
SYSCALL(kill)
 422:	b8 06 00 00 00       	mov    $0x6,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <exec>:
SYSCALL(exec)
 42a:	b8 07 00 00 00       	mov    $0x7,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <open>:
SYSCALL(open)
 432:	b8 0f 00 00 00       	mov    $0xf,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <mknod>:
SYSCALL(mknod)
 43a:	b8 11 00 00 00       	mov    $0x11,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <unlink>:
SYSCALL(unlink)
 442:	b8 12 00 00 00       	mov    $0x12,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <fstat>:
SYSCALL(fstat)
 44a:	b8 08 00 00 00       	mov    $0x8,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <link>:
SYSCALL(link)
 452:	b8 13 00 00 00       	mov    $0x13,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <mkdir>:
SYSCALL(mkdir)
 45a:	b8 14 00 00 00       	mov    $0x14,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <chdir>:
SYSCALL(chdir)
 462:	b8 09 00 00 00       	mov    $0x9,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <dup>:
SYSCALL(dup)
 46a:	b8 0a 00 00 00       	mov    $0xa,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <getpid>:
SYSCALL(getpid)
 472:	b8 0b 00 00 00       	mov    $0xb,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <sbrk>:
SYSCALL(sbrk)
 47a:	b8 0c 00 00 00       	mov    $0xc,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <sleep>:
SYSCALL(sleep)
 482:	b8 0d 00 00 00       	mov    $0xd,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <uptime>:
SYSCALL(uptime)
 48a:	b8 0e 00 00 00       	mov    $0xe,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <waitpid>:
SYSCALL(waitpid)
 492:	b8 16 00 00 00       	mov    $0x16,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    
 49a:	66 90                	xchg   %ax,%ax
 49c:	66 90                	xchg   %ax,%ax
 49e:	66 90                	xchg   %ax,%ax

000004a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	56                   	push   %esi
 4a5:	53                   	push   %ebx
 4a6:	89 c6                	mov    %eax,%esi
 4a8:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 4ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
 4ae:	85 db                	test   %ebx,%ebx
 4b0:	74 7e                	je     530 <printint+0x90>
 4b2:	89 d0                	mov    %edx,%eax
 4b4:	c1 e8 1f             	shr    $0x1f,%eax
 4b7:	84 c0                	test   %al,%al
 4b9:	74 75                	je     530 <printint+0x90>
    neg = 1;
    x = -xx;
 4bb:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 4bd:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 4c4:	f7 d8                	neg    %eax
 4c6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 4c9:	31 ff                	xor    %edi,%edi
 4cb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 4ce:	89 ce                	mov    %ecx,%esi
 4d0:	eb 08                	jmp    4da <printint+0x3a>
 4d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 4d8:	89 cf                	mov    %ecx,%edi
 4da:	31 d2                	xor    %edx,%edx
 4dc:	8d 4f 01             	lea    0x1(%edi),%ecx
 4df:	f7 f6                	div    %esi
 4e1:	0f b6 92 a0 08 00 00 	movzbl 0x8a0(%edx),%edx
  }while((x /= base) != 0);
 4e8:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 4ea:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 4ed:	75 e9                	jne    4d8 <printint+0x38>
  if(neg)
 4ef:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 4f2:	8b 75 c0             	mov    -0x40(%ebp),%esi
 4f5:	85 c0                	test   %eax,%eax
 4f7:	74 08                	je     501 <printint+0x61>
    buf[i++] = '-';
 4f9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 4fe:	8d 4f 02             	lea    0x2(%edi),%ecx
 501:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 505:	8d 76 00             	lea    0x0(%esi),%esi
 508:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 50b:	83 ec 04             	sub    $0x4,%esp
 50e:	83 ef 01             	sub    $0x1,%edi
 511:	6a 01                	push   $0x1
 513:	53                   	push   %ebx
 514:	56                   	push   %esi
 515:	88 45 d7             	mov    %al,-0x29(%ebp)
 518:	e8 f5 fe ff ff       	call   412 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 51d:	83 c4 10             	add    $0x10,%esp
 520:	39 df                	cmp    %ebx,%edi
 522:	75 e4                	jne    508 <printint+0x68>
    putc(fd, buf[i]);
}
 524:	8d 65 f4             	lea    -0xc(%ebp),%esp
 527:	5b                   	pop    %ebx
 528:	5e                   	pop    %esi
 529:	5f                   	pop    %edi
 52a:	5d                   	pop    %ebp
 52b:	c3                   	ret    
 52c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 530:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 532:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 539:	eb 8b                	jmp    4c6 <printint+0x26>
 53b:	90                   	nop
 53c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000540 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	57                   	push   %edi
 544:	56                   	push   %esi
 545:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 546:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 549:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 54c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 54f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 552:	89 45 d0             	mov    %eax,-0x30(%ebp)
 555:	0f b6 1e             	movzbl (%esi),%ebx
 558:	83 c6 01             	add    $0x1,%esi
 55b:	84 db                	test   %bl,%bl
 55d:	0f 84 b0 00 00 00    	je     613 <printf+0xd3>
 563:	31 d2                	xor    %edx,%edx
 565:	eb 39                	jmp    5a0 <printf+0x60>
 567:	89 f6                	mov    %esi,%esi
 569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 570:	83 f8 25             	cmp    $0x25,%eax
 573:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 576:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 57b:	74 18                	je     595 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 57d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 580:	83 ec 04             	sub    $0x4,%esp
 583:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 586:	6a 01                	push   $0x1
 588:	50                   	push   %eax
 589:	57                   	push   %edi
 58a:	e8 83 fe ff ff       	call   412 <write>
 58f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 592:	83 c4 10             	add    $0x10,%esp
 595:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 598:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 59c:	84 db                	test   %bl,%bl
 59e:	74 73                	je     613 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 5a0:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 5a2:	0f be cb             	movsbl %bl,%ecx
 5a5:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 5a8:	74 c6                	je     570 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 5aa:	83 fa 25             	cmp    $0x25,%edx
 5ad:	75 e6                	jne    595 <printf+0x55>
      if(c == 'd'){
 5af:	83 f8 64             	cmp    $0x64,%eax
 5b2:	0f 84 f8 00 00 00    	je     6b0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 5b8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 5be:	83 f9 70             	cmp    $0x70,%ecx
 5c1:	74 5d                	je     620 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 5c3:	83 f8 73             	cmp    $0x73,%eax
 5c6:	0f 84 84 00 00 00    	je     650 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 5cc:	83 f8 63             	cmp    $0x63,%eax
 5cf:	0f 84 ea 00 00 00    	je     6bf <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 5d5:	83 f8 25             	cmp    $0x25,%eax
 5d8:	0f 84 c2 00 00 00    	je     6a0 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 5de:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5e1:	83 ec 04             	sub    $0x4,%esp
 5e4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5e8:	6a 01                	push   $0x1
 5ea:	50                   	push   %eax
 5eb:	57                   	push   %edi
 5ec:	e8 21 fe ff ff       	call   412 <write>
 5f1:	83 c4 0c             	add    $0xc,%esp
 5f4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 5f7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 5fa:	6a 01                	push   $0x1
 5fc:	50                   	push   %eax
 5fd:	57                   	push   %edi
 5fe:	83 c6 01             	add    $0x1,%esi
 601:	e8 0c fe ff ff       	call   412 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 606:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 60a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 60d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 60f:	84 db                	test   %bl,%bl
 611:	75 8d                	jne    5a0 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 613:	8d 65 f4             	lea    -0xc(%ebp),%esp
 616:	5b                   	pop    %ebx
 617:	5e                   	pop    %esi
 618:	5f                   	pop    %edi
 619:	5d                   	pop    %ebp
 61a:	c3                   	ret    
 61b:	90                   	nop
 61c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 620:	83 ec 0c             	sub    $0xc,%esp
 623:	b9 10 00 00 00       	mov    $0x10,%ecx
 628:	6a 00                	push   $0x0
 62a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 62d:	89 f8                	mov    %edi,%eax
 62f:	8b 13                	mov    (%ebx),%edx
 631:	e8 6a fe ff ff       	call   4a0 <printint>
        ap++;
 636:	89 d8                	mov    %ebx,%eax
 638:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 63b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 63d:	83 c0 04             	add    $0x4,%eax
 640:	89 45 d0             	mov    %eax,-0x30(%ebp)
 643:	e9 4d ff ff ff       	jmp    595 <printf+0x55>
 648:	90                   	nop
 649:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 650:	8b 45 d0             	mov    -0x30(%ebp),%eax
 653:	8b 18                	mov    (%eax),%ebx
        ap++;
 655:	83 c0 04             	add    $0x4,%eax
 658:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 65b:	b8 97 08 00 00       	mov    $0x897,%eax
 660:	85 db                	test   %ebx,%ebx
 662:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 665:	0f b6 03             	movzbl (%ebx),%eax
 668:	84 c0                	test   %al,%al
 66a:	74 23                	je     68f <printf+0x14f>
 66c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 670:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 673:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 676:	83 ec 04             	sub    $0x4,%esp
 679:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 67b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 67e:	50                   	push   %eax
 67f:	57                   	push   %edi
 680:	e8 8d fd ff ff       	call   412 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 685:	0f b6 03             	movzbl (%ebx),%eax
 688:	83 c4 10             	add    $0x10,%esp
 68b:	84 c0                	test   %al,%al
 68d:	75 e1                	jne    670 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 68f:	31 d2                	xor    %edx,%edx
 691:	e9 ff fe ff ff       	jmp    595 <printf+0x55>
 696:	8d 76 00             	lea    0x0(%esi),%esi
 699:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6a0:	83 ec 04             	sub    $0x4,%esp
 6a3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 6a6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 6a9:	6a 01                	push   $0x1
 6ab:	e9 4c ff ff ff       	jmp    5fc <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 6b0:	83 ec 0c             	sub    $0xc,%esp
 6b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6b8:	6a 01                	push   $0x1
 6ba:	e9 6b ff ff ff       	jmp    62a <printf+0xea>
 6bf:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6c2:	83 ec 04             	sub    $0x4,%esp
 6c5:	8b 03                	mov    (%ebx),%eax
 6c7:	6a 01                	push   $0x1
 6c9:	88 45 e4             	mov    %al,-0x1c(%ebp)
 6cc:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 6cf:	50                   	push   %eax
 6d0:	57                   	push   %edi
 6d1:	e8 3c fd ff ff       	call   412 <write>
 6d6:	e9 5b ff ff ff       	jmp    636 <printf+0xf6>
 6db:	66 90                	xchg   %ax,%ax
 6dd:	66 90                	xchg   %ax,%ax
 6df:	90                   	nop

000006e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e1:	a1 a0 0b 00 00       	mov    0xba0,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 6e6:	89 e5                	mov    %esp,%ebp
 6e8:	57                   	push   %edi
 6e9:	56                   	push   %esi
 6ea:	53                   	push   %ebx
 6eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6ee:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 6f0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6f3:	39 c8                	cmp    %ecx,%eax
 6f5:	73 19                	jae    710 <free+0x30>
 6f7:	89 f6                	mov    %esi,%esi
 6f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 700:	39 d1                	cmp    %edx,%ecx
 702:	72 1c                	jb     720 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 704:	39 d0                	cmp    %edx,%eax
 706:	73 18                	jae    720 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 708:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 70a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 70c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 70e:	72 f0                	jb     700 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 710:	39 d0                	cmp    %edx,%eax
 712:	72 f4                	jb     708 <free+0x28>
 714:	39 d1                	cmp    %edx,%ecx
 716:	73 f0                	jae    708 <free+0x28>
 718:	90                   	nop
 719:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 720:	8b 73 fc             	mov    -0x4(%ebx),%esi
 723:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 726:	39 d7                	cmp    %edx,%edi
 728:	74 19                	je     743 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 72a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 72d:	8b 50 04             	mov    0x4(%eax),%edx
 730:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 733:	39 f1                	cmp    %esi,%ecx
 735:	74 23                	je     75a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 737:	89 08                	mov    %ecx,(%eax)
  freep = p;
 739:	a3 a0 0b 00 00       	mov    %eax,0xba0
}
 73e:	5b                   	pop    %ebx
 73f:	5e                   	pop    %esi
 740:	5f                   	pop    %edi
 741:	5d                   	pop    %ebp
 742:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 743:	03 72 04             	add    0x4(%edx),%esi
 746:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 749:	8b 10                	mov    (%eax),%edx
 74b:	8b 12                	mov    (%edx),%edx
 74d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 750:	8b 50 04             	mov    0x4(%eax),%edx
 753:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 756:	39 f1                	cmp    %esi,%ecx
 758:	75 dd                	jne    737 <free+0x57>
    p->s.size += bp->s.size;
 75a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 75d:	a3 a0 0b 00 00       	mov    %eax,0xba0
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 762:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 765:	8b 53 f8             	mov    -0x8(%ebx),%edx
 768:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 76a:	5b                   	pop    %ebx
 76b:	5e                   	pop    %esi
 76c:	5f                   	pop    %edi
 76d:	5d                   	pop    %ebp
 76e:	c3                   	ret    
 76f:	90                   	nop

00000770 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	57                   	push   %edi
 774:	56                   	push   %esi
 775:	53                   	push   %ebx
 776:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 779:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 77c:	8b 15 a0 0b 00 00    	mov    0xba0,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 782:	8d 78 07             	lea    0x7(%eax),%edi
 785:	c1 ef 03             	shr    $0x3,%edi
 788:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 78b:	85 d2                	test   %edx,%edx
 78d:	0f 84 a3 00 00 00    	je     836 <malloc+0xc6>
 793:	8b 02                	mov    (%edx),%eax
 795:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 798:	39 cf                	cmp    %ecx,%edi
 79a:	76 74                	jbe    810 <malloc+0xa0>
 79c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 7a2:	be 00 10 00 00       	mov    $0x1000,%esi
 7a7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 7ae:	0f 43 f7             	cmovae %edi,%esi
 7b1:	ba 00 80 00 00       	mov    $0x8000,%edx
 7b6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 7bc:	0f 46 da             	cmovbe %edx,%ebx
 7bf:	eb 10                	jmp    7d1 <malloc+0x61>
 7c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7c8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7ca:	8b 48 04             	mov    0x4(%eax),%ecx
 7cd:	39 cf                	cmp    %ecx,%edi
 7cf:	76 3f                	jbe    810 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7d1:	39 05 a0 0b 00 00    	cmp    %eax,0xba0
 7d7:	89 c2                	mov    %eax,%edx
 7d9:	75 ed                	jne    7c8 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 7db:	83 ec 0c             	sub    $0xc,%esp
 7de:	53                   	push   %ebx
 7df:	e8 96 fc ff ff       	call   47a <sbrk>
  if(p == (char*)-1)
 7e4:	83 c4 10             	add    $0x10,%esp
 7e7:	83 f8 ff             	cmp    $0xffffffff,%eax
 7ea:	74 1c                	je     808 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 7ec:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 7ef:	83 ec 0c             	sub    $0xc,%esp
 7f2:	83 c0 08             	add    $0x8,%eax
 7f5:	50                   	push   %eax
 7f6:	e8 e5 fe ff ff       	call   6e0 <free>
  return freep;
 7fb:	8b 15 a0 0b 00 00    	mov    0xba0,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 801:	83 c4 10             	add    $0x10,%esp
 804:	85 d2                	test   %edx,%edx
 806:	75 c0                	jne    7c8 <malloc+0x58>
        return 0;
 808:	31 c0                	xor    %eax,%eax
 80a:	eb 1c                	jmp    828 <malloc+0xb8>
 80c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 810:	39 cf                	cmp    %ecx,%edi
 812:	74 1c                	je     830 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 814:	29 f9                	sub    %edi,%ecx
 816:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 819:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 81c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 81f:	89 15 a0 0b 00 00    	mov    %edx,0xba0
      return (void*)(p + 1);
 825:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 828:	8d 65 f4             	lea    -0xc(%ebp),%esp
 82b:	5b                   	pop    %ebx
 82c:	5e                   	pop    %esi
 82d:	5f                   	pop    %edi
 82e:	5d                   	pop    %ebp
 82f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 830:	8b 08                	mov    (%eax),%ecx
 832:	89 0a                	mov    %ecx,(%edx)
 834:	eb e9                	jmp    81f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 836:	c7 05 a0 0b 00 00 a4 	movl   $0xba4,0xba0
 83d:	0b 00 00 
 840:	c7 05 a4 0b 00 00 a4 	movl   $0xba4,0xba4
 847:	0b 00 00 
    base.s.size = 0;
 84a:	b8 a4 0b 00 00       	mov    $0xba4,%eax
 84f:	c7 05 a8 0b 00 00 00 	movl   $0x0,0xba8
 856:	00 00 00 
 859:	e9 3e ff ff ff       	jmp    79c <malloc+0x2c>
