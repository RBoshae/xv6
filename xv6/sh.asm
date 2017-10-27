
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	53                   	push   %ebx
       e:	51                   	push   %ecx
       f:	83 ec 10             	sub    $0x10,%esp
  static char buf[100];
  int fd;
  int status;            // Lab 1 Part 1b -RB

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      12:	eb 0d                	jmp    21 <main+0x21>
      14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f ed 00 00 00    	jg     10e <main+0x10e>
  static char buf[100];
  int fd;
  int status;            // Lab 1 Part 1b -RB

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 31 14 00 00       	push   $0x1431
      2b:	e8 32 0f 00 00       	call   f62 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }
    if(fork1() == 0)
      runcmd(parsecmd(buf));
    wait(&status);
      37:	8d 5d f4             	lea    -0xc(%ebp),%ebx
      3a:	eb 3a                	jmp    76 <main+0x76>
      3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      40:	e8 d5 0e 00 00       	call   f1a <fork>
  if(pid == -1)
      45:	83 f8 ff             	cmp    $0xffffffff,%eax
      48:	0f 84 9a 00 00 00    	je     e8 <main+0xe8>
      buf[strlen(buf)-1] = 0;  // chop \n
      if(chdir(buf+3) < 0)
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }
    if(fork1() == 0)
      4e:	85 c0                	test   %eax,%eax
      50:	75 18                	jne    6a <main+0x6a>
      runcmd(parsecmd(buf));
      52:	83 ec 0c             	sub    $0xc,%esp
      55:	68 a0 1a 00 00       	push   $0x1aa0
      5a:	e8 f1 0b 00 00       	call   c50 <parsecmd>
      5f:	89 04 24             	mov    %eax,(%esp)
      62:	e8 e9 00 00 00       	call   150 <runcmd>
      67:	83 c4 10             	add    $0x10,%esp
    wait(&status);
      6a:	83 ec 0c             	sub    $0xc,%esp
      6d:	53                   	push   %ebx
      6e:	e8 b7 0e 00 00       	call   f2a <wait>
      73:	83 c4 10             	add    $0x10,%esp
      break;
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
      76:	83 ec 08             	sub    $0x8,%esp
      79:	6a 64                	push   $0x64
      7b:	68 a0 1a 00 00       	push   $0x1aa0
      80:	e8 6b 03 00 00       	call   3f0 <getcmd>
      85:	83 c4 10             	add    $0x10,%esp
      88:	85 c0                	test   %eax,%eax
      8a:	78 6c                	js     f8 <main+0xf8>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      8c:	80 3d a0 1a 00 00 63 	cmpb   $0x63,0x1aa0
      93:	75 ab                	jne    40 <main+0x40>
      95:	80 3d a1 1a 00 00 64 	cmpb   $0x64,0x1aa1
      9c:	75 a2                	jne    40 <main+0x40>
      9e:	80 3d a2 1a 00 00 20 	cmpb   $0x20,0x1aa2
      a5:	75 99                	jne    40 <main+0x40>
      // Chdir must be called by the parent, not the child.
      buf[strlen(buf)-1] = 0;  // chop \n
      a7:	83 ec 0c             	sub    $0xc,%esp
      aa:	68 a0 1a 00 00       	push   $0x1aa0
      af:	e8 ac 0c 00 00       	call   d60 <strlen>
      if(chdir(buf+3) < 0)
      b4:	c7 04 24 a3 1a 00 00 	movl   $0x1aa3,(%esp)

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      // Chdir must be called by the parent, not the child.
      buf[strlen(buf)-1] = 0;  // chop \n
      bb:	c6 80 9f 1a 00 00 00 	movb   $0x0,0x1a9f(%eax)
      if(chdir(buf+3) < 0)
      c2:	e8 cb 0e 00 00       	call   f92 <chdir>
      c7:	83 c4 10             	add    $0x10,%esp
      ca:	85 c0                	test   %eax,%eax
      cc:	79 a8                	jns    76 <main+0x76>
        printf(2, "cannot cd %s\n", buf+3);
      ce:	50                   	push   %eax
      cf:	68 a3 1a 00 00       	push   $0x1aa3
      d4:	68 39 14 00 00       	push   $0x1439
      d9:	6a 02                	push   $0x2
      db:	e8 90 0f 00 00       	call   1070 <printf>
      e0:	83 c4 10             	add    $0x10,%esp
      e3:	eb 91                	jmp    76 <main+0x76>
      e5:	8d 76 00             	lea    0x0(%esi),%esi
      e8:	e8 33 00 00 00       	call   120 <fork1.part.0>
      ed:	e9 78 ff ff ff       	jmp    6a <main+0x6a>
      f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    }
    if(fork1() == 0)
      runcmd(parsecmd(buf));
    wait(&status);
  }
  exit(0);
      f8:	83 ec 0c             	sub    $0xc,%esp
      fb:	6a 00                	push   $0x0
      fd:	e8 20 0e 00 00       	call   f22 <exit>
}
     102:	8d 65 f8             	lea    -0x8(%ebp),%esp
     105:	31 c0                	xor    %eax,%eax
     107:	59                   	pop    %ecx
     108:	5b                   	pop    %ebx
     109:	5d                   	pop    %ebp
     10a:	8d 61 fc             	lea    -0x4(%ecx),%esp
     10d:	c3                   	ret    
  int status;            // Lab 1 Part 1b -RB

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
    if(fd >= 3){
      close(fd);
     10e:	83 ec 0c             	sub    $0xc,%esp
     111:	50                   	push   %eax
     112:	e8 33 0e 00 00       	call   f4a <close>
      break;
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 18 ff ff ff       	jmp    37 <main+0x37>
     11f:	90                   	nop

00000120 <fork1.part.0>:
  printf(2, "%s\n", s);
  exit(0);
}

int
fork1(void)
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 0c             	sub    $0xc,%esp
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     126:	68 90 13 00 00       	push   $0x1390
     12b:	68 2d 14 00 00       	push   $0x142d
     130:	6a 02                	push   $0x2
     132:	e8 39 0f 00 00       	call   1070 <printf>
  exit(0);
     137:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     13e:	e8 df 0d 00 00       	call   f22 <exit>
     143:	83 c4 10             	add    $0x10,%esp

  pid = fork();
  if(pid == -1)
    panic("fork");
  return pid;
}
     146:	c9                   	leave  
     147:	c3                   	ret    
     148:	90                   	nop
     149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000150 <runcmd>:
struct cmd *parsecmd(char*);

// Execute cmd.  Never returns.
void
runcmd(struct cmd *cmd)
{
     150:	55                   	push   %ebp
     151:	89 e5                	mov    %esp,%ebp
     153:	53                   	push   %ebx
     154:	83 ec 14             	sub    $0x14,%esp
     157:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;
 
  int status;             // Lab 1 Part 1b -RB
  if(cmd == 0)
     15a:	85 db                	test   %ebx,%ebx
     15c:	0f 84 ee 01 00 00    	je     350 <runcmd+0x200>
    exit(0);

  switch(cmd->type){
     162:	83 3b 05             	cmpl   $0x5,(%ebx)
     165:	77 09                	ja     170 <runcmd+0x20>
     167:	8b 03                	mov    (%ebx),%eax
     169:	ff 24 85 48 14 00 00 	jmp    *0x1448(,%eax,4)
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     170:	83 ec 04             	sub    $0x4,%esp
     173:	68 95 13 00 00       	push   $0x1395
     178:	68 2d 14 00 00       	push   $0x142d
     17d:	6a 02                	push   $0x2
     17f:	e8 ec 0e 00 00       	call   1070 <printf>
  exit(0);
     184:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     18b:	e8 92 0d 00 00       	call   f22 <exit>
     190:	83 c4 10             	add    $0x10,%esp
  default:
    panic("runcmd");

  case EXEC:
    ecmd = (struct execcmd*)cmd;
    if(ecmd->argv[0] == 0)
     193:	8b 43 04             	mov    0x4(%ebx),%eax
     196:	85 c0                	test   %eax,%eax
     198:	0f 84 ca 01 00 00    	je     368 <runcmd+0x218>
      exit(0);
    exec(ecmd->argv[0], ecmd->argv);
     19e:	8d 53 04             	lea    0x4(%ebx),%edx
     1a1:	83 ec 08             	sub    $0x8,%esp
     1a4:	52                   	push   %edx
     1a5:	50                   	push   %eax
     1a6:	e8 af 0d 00 00       	call   f5a <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1ab:	83 c4 0c             	add    $0xc,%esp
     1ae:	ff 73 04             	pushl  0x4(%ebx)
     1b1:	68 9c 13 00 00       	push   $0x139c
     1b6:	6a 02                	push   $0x2
     1b8:	e8 b3 0e 00 00       	call   1070 <printf>
    break;
     1bd:	83 c4 10             	add    $0x10,%esp
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
      runcmd(bcmd->cmd);
    break;
  }
  exit(0);
     1c0:	83 ec 0c             	sub    $0xc,%esp
     1c3:	6a 00                	push   $0x0
     1c5:	e8 58 0d 00 00       	call   f22 <exit>
}
     1ca:	83 c4 10             	add    $0x10,%esp
     1cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     1d0:	c9                   	leave  
     1d1:	c3                   	ret    
     1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
     1d8:	e8 3d 0d 00 00       	call   f1a <fork>
  if(pid == -1)
     1dd:	83 f8 ff             	cmp    $0xffffffff,%eax
     1e0:	0f 84 9a 01 00 00    	je     380 <runcmd+0x230>
    wait(&status);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    if(fork1() == 0)
     1e6:	85 c0                	test   %eax,%eax
     1e8:	75 d6                	jne    1c0 <runcmd+0x70>
      runcmd(bcmd->cmd);
     1ea:	83 ec 0c             	sub    $0xc,%esp
     1ed:	ff 73 04             	pushl  0x4(%ebx)
     1f0:	e8 5b ff ff ff       	call   150 <runcmd>
     1f5:	83 c4 10             	add    $0x10,%esp
     1f8:	eb c6                	jmp    1c0 <runcmd+0x70>
     1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(2, "exec %s failed\n", ecmd->argv[0]);
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    close(rcmd->fd);
     200:	83 ec 0c             	sub    $0xc,%esp
     203:	ff 73 14             	pushl  0x14(%ebx)
     206:	e8 3f 0d 00 00       	call   f4a <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     20b:	59                   	pop    %ecx
     20c:	58                   	pop    %eax
     20d:	ff 73 10             	pushl  0x10(%ebx)
     210:	ff 73 08             	pushl  0x8(%ebx)
     213:	e8 4a 0d 00 00       	call   f62 <open>
     218:	83 c4 10             	add    $0x10,%esp
     21b:	85 c0                	test   %eax,%eax
     21d:	79 cb                	jns    1ea <runcmd+0x9a>
      printf(2, "open %s failed\n", rcmd->file);
     21f:	83 ec 04             	sub    $0x4,%esp
     222:	ff 73 08             	pushl  0x8(%ebx)
     225:	68 ac 13 00 00       	push   $0x13ac
     22a:	6a 02                	push   $0x2
     22c:	e8 3f 0e 00 00       	call   1070 <printf>
      exit(0);
     231:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     238:	e8 e5 0c 00 00       	call   f22 <exit>
     23d:	83 c4 10             	add    $0x10,%esp
     240:	eb a8                	jmp    1ea <runcmd+0x9a>
     242:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    runcmd(lcmd->right);
    break;

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
     248:	8d 45 f0             	lea    -0x10(%ebp),%eax
     24b:	83 ec 0c             	sub    $0xc,%esp
     24e:	50                   	push   %eax
     24f:	e8 de 0c 00 00       	call   f32 <pipe>
     254:	83 c4 10             	add    $0x10,%esp
     257:	85 c0                	test   %eax,%eax
     259:	0f 88 61 01 00 00    	js     3c0 <runcmd+0x270>
int
fork1(void)
{
  int pid;

  pid = fork();
     25f:	e8 b6 0c 00 00       	call   f1a <fork>
  if(pid == -1)
     264:	83 f8 ff             	cmp    $0xffffffff,%eax
     267:	0f 84 23 01 00 00    	je     390 <runcmd+0x240>

  case PIPE:
    pcmd = (struct pipecmd*)cmd;
    if(pipe(p) < 0)
      panic("pipe");
    if(fork1() == 0){
     26d:	85 c0                	test   %eax,%eax
     26f:	75 31                	jne    2a2 <runcmd+0x152>
      close(1);
     271:	83 ec 0c             	sub    $0xc,%esp
     274:	6a 01                	push   $0x1
     276:	e8 cf 0c 00 00       	call   f4a <close>
      dup(p[1]);
     27b:	58                   	pop    %eax
     27c:	ff 75 f4             	pushl  -0xc(%ebp)
     27f:	e8 16 0d 00 00       	call   f9a <dup>
      close(p[0]);
     284:	58                   	pop    %eax
     285:	ff 75 f0             	pushl  -0x10(%ebp)
     288:	e8 bd 0c 00 00       	call   f4a <close>
      close(p[1]);
     28d:	58                   	pop    %eax
     28e:	ff 75 f4             	pushl  -0xc(%ebp)
     291:	e8 b4 0c 00 00       	call   f4a <close>
      runcmd(pcmd->left);
     296:	58                   	pop    %eax
     297:	ff 73 04             	pushl  0x4(%ebx)
     29a:	e8 b1 fe ff ff       	call   150 <runcmd>
     29f:	83 c4 10             	add    $0x10,%esp
int
fork1(void)
{
  int pid;

  pid = fork();
     2a2:	e8 73 0c 00 00       	call   f1a <fork>
  if(pid == -1)
     2a7:	83 f8 ff             	cmp    $0xffffffff,%eax
     2aa:	0f 84 00 01 00 00    	je     3b0 <runcmd+0x260>
      dup(p[1]);
      close(p[0]);
      close(p[1]);
      runcmd(pcmd->left);
    }
    if(fork1() == 0){
     2b0:	85 c0                	test   %eax,%eax
     2b2:	75 31                	jne    2e5 <runcmd+0x195>
      close(0);
     2b4:	83 ec 0c             	sub    $0xc,%esp
     2b7:	6a 00                	push   $0x0
     2b9:	e8 8c 0c 00 00       	call   f4a <close>
      dup(p[0]);
     2be:	5a                   	pop    %edx
     2bf:	ff 75 f0             	pushl  -0x10(%ebp)
     2c2:	e8 d3 0c 00 00       	call   f9a <dup>
      close(p[0]);
     2c7:	59                   	pop    %ecx
     2c8:	ff 75 f0             	pushl  -0x10(%ebp)
     2cb:	e8 7a 0c 00 00       	call   f4a <close>
      close(p[1]);
     2d0:	58                   	pop    %eax
     2d1:	ff 75 f4             	pushl  -0xc(%ebp)
     2d4:	e8 71 0c 00 00       	call   f4a <close>
      runcmd(pcmd->right);
     2d9:	58                   	pop    %eax
     2da:	ff 73 08             	pushl  0x8(%ebx)
     2dd:	e8 6e fe ff ff       	call   150 <runcmd>
     2e2:	83 c4 10             	add    $0x10,%esp
    }
    close(p[0]);
     2e5:	83 ec 0c             	sub    $0xc,%esp
     2e8:	ff 75 f0             	pushl  -0x10(%ebp)
     2eb:	e8 5a 0c 00 00       	call   f4a <close>
    close(p[1]);
     2f0:	58                   	pop    %eax
     2f1:	ff 75 f4             	pushl  -0xc(%ebp)
     2f4:	e8 51 0c 00 00       	call   f4a <close>
    wait(&status);
     2f9:	8d 45 ec             	lea    -0x14(%ebp),%eax
     2fc:	89 04 24             	mov    %eax,(%esp)
     2ff:	e8 26 0c 00 00       	call   f2a <wait>
    break;
     304:	83 c4 10             	add    $0x10,%esp
     307:	e9 b4 fe ff ff       	jmp    1c0 <runcmd+0x70>
     30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
     310:	e8 05 0c 00 00       	call   f1a <fork>
  if(pid == -1)
     315:	83 f8 ff             	cmp    $0xffffffff,%eax
     318:	0f 84 82 00 00 00    	je     3a0 <runcmd+0x250>
    runcmd(rcmd->cmd);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    if(fork1() == 0)
     31e:	85 c0                	test   %eax,%eax
     320:	75 0e                	jne    330 <runcmd+0x1e0>
      runcmd(lcmd->left);
     322:	83 ec 0c             	sub    $0xc,%esp
     325:	ff 73 04             	pushl  0x4(%ebx)
     328:	e8 23 fe ff ff       	call   150 <runcmd>
     32d:	83 c4 10             	add    $0x10,%esp
    wait(&status);
     330:	8d 45 ec             	lea    -0x14(%ebp),%eax
     333:	83 ec 0c             	sub    $0xc,%esp
     336:	50                   	push   %eax
     337:	e8 ee 0b 00 00       	call   f2a <wait>
    runcmd(lcmd->right);
     33c:	5a                   	pop    %edx
     33d:	ff 73 08             	pushl  0x8(%ebx)
     340:	e8 0b fe ff ff       	call   150 <runcmd>
    break;
     345:	83 c4 10             	add    $0x10,%esp
     348:	e9 73 fe ff ff       	jmp    1c0 <runcmd+0x70>
     34d:	8d 76 00             	lea    0x0(%esi),%esi
  struct pipecmd *pcmd;
  struct redircmd *rcmd;
 
  int status;             // Lab 1 Part 1b -RB
  if(cmd == 0)
    exit(0);
     350:	83 ec 0c             	sub    $0xc,%esp
     353:	6a 00                	push   $0x0
     355:	e8 c8 0b 00 00       	call   f22 <exit>
     35a:	83 c4 10             	add    $0x10,%esp
     35d:	e9 00 fe ff ff       	jmp    162 <runcmd+0x12>
     362:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    panic("runcmd");

  case EXEC:
    ecmd = (struct execcmd*)cmd;
    if(ecmd->argv[0] == 0)
      exit(0);
     368:	83 ec 0c             	sub    $0xc,%esp
     36b:	6a 00                	push   $0x0
     36d:	e8 b0 0b 00 00       	call   f22 <exit>
     372:	8b 43 04             	mov    0x4(%ebx),%eax
     375:	83 c4 10             	add    $0x10,%esp
     378:	e9 21 fe ff ff       	jmp    19e <runcmd+0x4e>
     37d:	8d 76 00             	lea    0x0(%esi),%esi
     380:	e8 9b fd ff ff       	call   120 <fork1.part.0>
     385:	e9 36 fe ff ff       	jmp    1c0 <runcmd+0x70>
     38a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     390:	e8 8b fd ff ff       	call   120 <fork1.part.0>
     395:	e9 08 ff ff ff       	jmp    2a2 <runcmd+0x152>
     39a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     3a0:	e8 7b fd ff ff       	call   120 <fork1.part.0>
     3a5:	eb 89                	jmp    330 <runcmd+0x1e0>
     3a7:	89 f6                	mov    %esi,%esi
     3a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     3b0:	e8 6b fd ff ff       	call   120 <fork1.part.0>
     3b5:	e9 2b ff ff ff       	jmp    2e5 <runcmd+0x195>
     3ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     3c0:	83 ec 04             	sub    $0x4,%esp
     3c3:	68 bc 13 00 00       	push   $0x13bc
     3c8:	68 2d 14 00 00       	push   $0x142d
     3cd:	6a 02                	push   $0x2
     3cf:	e8 9c 0c 00 00       	call   1070 <printf>
  exit(0);
     3d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3db:	e8 42 0b 00 00       	call   f22 <exit>
     3e0:	83 c4 10             	add    $0x10,%esp
     3e3:	e9 77 fe ff ff       	jmp    25f <runcmd+0x10f>
     3e8:	90                   	nop
     3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003f0 <getcmd>:
  exit(0);
}

int
getcmd(char *buf, int nbuf)
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	56                   	push   %esi
     3f4:	53                   	push   %ebx
     3f5:	8b 75 0c             	mov    0xc(%ebp),%esi
     3f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     3fb:	83 ec 08             	sub    $0x8,%esp
     3fe:	68 c1 13 00 00       	push   $0x13c1
     403:	6a 02                	push   $0x2
     405:	e8 66 0c 00 00       	call   1070 <printf>
  memset(buf, 0, nbuf);
     40a:	83 c4 0c             	add    $0xc,%esp
     40d:	56                   	push   %esi
     40e:	6a 00                	push   $0x0
     410:	53                   	push   %ebx
     411:	e8 7a 09 00 00       	call   d90 <memset>
  gets(buf, nbuf);
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	56                   	push   %esi
     419:	53                   	push   %ebx
     41a:	e8 d1 09 00 00       	call   df0 <gets>
     41f:	83 c4 10             	add    $0x10,%esp
     422:	31 c0                	xor    %eax,%eax
     424:	80 3b 00             	cmpb   $0x0,(%ebx)
     427:	0f 94 c0             	sete   %al
  if(buf[0] == 0) // EOF
    return -1;
  return 0;
}
     42a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     42d:	f7 d8                	neg    %eax
     42f:	5b                   	pop    %ebx
     430:	5e                   	pop    %esi
     431:	5d                   	pop    %ebp
     432:	c3                   	ret    
     433:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000440 <panic>:
  exit(0);
}

void
panic(char *s)
{
     440:	55                   	push   %ebp
     441:	89 e5                	mov    %esp,%ebp
     443:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     446:	ff 75 08             	pushl  0x8(%ebp)
     449:	68 2d 14 00 00       	push   $0x142d
     44e:	6a 02                	push   $0x2
     450:	e8 1b 0c 00 00       	call   1070 <printf>
  exit(0);
     455:	83 c4 10             	add    $0x10,%esp
     458:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
}
     45f:	c9                   	leave  

void
panic(char *s)
{
  printf(2, "%s\n", s);
  exit(0);
     460:	e9 bd 0a 00 00       	jmp    f22 <exit>
     465:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000470 <fork1>:
}

int
fork1(void)
{
     470:	55                   	push   %ebp
     471:	89 e5                	mov    %esp,%ebp
     473:	53                   	push   %ebx
     474:	83 ec 04             	sub    $0x4,%esp
  int pid;

  pid = fork();
     477:	e8 9e 0a 00 00       	call   f1a <fork>
  if(pid == -1)
     47c:	83 f8 ff             	cmp    $0xffffffff,%eax
int
fork1(void)
{
  int pid;

  pid = fork();
     47f:	89 c3                	mov    %eax,%ebx
  if(pid == -1)
     481:	74 0d                	je     490 <fork1+0x20>
    panic("fork");
  return pid;
}
     483:	83 c4 04             	add    $0x4,%esp
     486:	89 d8                	mov    %ebx,%eax
     488:	5b                   	pop    %ebx
     489:	5d                   	pop    %ebp
     48a:	c3                   	ret    
     48b:	90                   	nop
     48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     490:	e8 8b fc ff ff       	call   120 <fork1.part.0>
     495:	83 c4 04             	add    $0x4,%esp
     498:	89 d8                	mov    %ebx,%eax
     49a:	5b                   	pop    %ebx
     49b:	5d                   	pop    %ebp
     49c:	c3                   	ret    
     49d:	8d 76 00             	lea    0x0(%esi),%esi

000004a0 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     4a0:	55                   	push   %ebp
     4a1:	89 e5                	mov    %esp,%ebp
     4a3:	53                   	push   %ebx
     4a4:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4a7:	6a 54                	push   $0x54
     4a9:	e8 f2 0d 00 00       	call   12a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4ae:	83 c4 0c             	add    $0xc,%esp
struct cmd*
execcmd(void)
{
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4b1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4b3:	6a 54                	push   $0x54
     4b5:	6a 00                	push   $0x0
     4b7:	50                   	push   %eax
     4b8:	e8 d3 08 00 00       	call   d90 <memset>
  cmd->type = EXEC;
     4bd:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     4c3:	89 d8                	mov    %ebx,%eax
     4c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4c8:	c9                   	leave  
     4c9:	c3                   	ret    
     4ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004d0 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     4d0:	55                   	push   %ebp
     4d1:	89 e5                	mov    %esp,%ebp
     4d3:	53                   	push   %ebx
     4d4:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4d7:	6a 18                	push   $0x18
     4d9:	e8 c2 0d 00 00       	call   12a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4de:	83 c4 0c             	add    $0xc,%esp
struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4e1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4e3:	6a 18                	push   $0x18
     4e5:	6a 00                	push   $0x0
     4e7:	50                   	push   %eax
     4e8:	e8 a3 08 00 00       	call   d90 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     4ed:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = REDIR;
     4f0:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     4f6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     4f9:	8b 45 0c             	mov    0xc(%ebp),%eax
     4fc:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     4ff:	8b 45 10             	mov    0x10(%ebp),%eax
     502:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     505:	8b 45 14             	mov    0x14(%ebp),%eax
     508:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     50b:	8b 45 18             	mov    0x18(%ebp),%eax
     50e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     511:	89 d8                	mov    %ebx,%eax
     513:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     516:	c9                   	leave  
     517:	c3                   	ret    
     518:	90                   	nop
     519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000520 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     520:	55                   	push   %ebp
     521:	89 e5                	mov    %esp,%ebp
     523:	53                   	push   %ebx
     524:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     527:	6a 0c                	push   $0xc
     529:	e8 72 0d 00 00       	call   12a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     52e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     531:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     533:	6a 0c                	push   $0xc
     535:	6a 00                	push   $0x0
     537:	50                   	push   %eax
     538:	e8 53 08 00 00       	call   d90 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     53d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = PIPE;
     540:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     546:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     549:	8b 45 0c             	mov    0xc(%ebp),%eax
     54c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     54f:	89 d8                	mov    %ebx,%eax
     551:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     554:	c9                   	leave  
     555:	c3                   	ret    
     556:	8d 76 00             	lea    0x0(%esi),%esi
     559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000560 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     560:	55                   	push   %ebp
     561:	89 e5                	mov    %esp,%ebp
     563:	53                   	push   %ebx
     564:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     567:	6a 0c                	push   $0xc
     569:	e8 32 0d 00 00       	call   12a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     56e:	83 c4 0c             	add    $0xc,%esp
struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     571:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     573:	6a 0c                	push   $0xc
     575:	6a 00                	push   $0x0
     577:	50                   	push   %eax
     578:	e8 13 08 00 00       	call   d90 <memset>
  cmd->type = LIST;
  cmd->left = left;
     57d:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = LIST;
     580:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     586:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     589:	8b 45 0c             	mov    0xc(%ebp),%eax
     58c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     58f:	89 d8                	mov    %ebx,%eax
     591:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     594:	c9                   	leave  
     595:	c3                   	ret    
     596:	8d 76 00             	lea    0x0(%esi),%esi
     599:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005a0 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     5a0:	55                   	push   %ebp
     5a1:	89 e5                	mov    %esp,%ebp
     5a3:	53                   	push   %ebx
     5a4:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5a7:	6a 08                	push   $0x8
     5a9:	e8 f2 0c 00 00       	call   12a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     5ae:	83 c4 0c             	add    $0xc,%esp
struct cmd*
backcmd(struct cmd *subcmd)
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5b1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     5b3:	6a 08                	push   $0x8
     5b5:	6a 00                	push   $0x0
     5b7:	50                   	push   %eax
     5b8:	e8 d3 07 00 00       	call   d90 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     5bd:	8b 45 08             	mov    0x8(%ebp),%eax
{
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
  memset(cmd, 0, sizeof(*cmd));
  cmd->type = BACK;
     5c0:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     5c6:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     5c9:	89 d8                	mov    %ebx,%eax
     5cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     5ce:	c9                   	leave  
     5cf:	c3                   	ret    

000005d0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	57                   	push   %edi
     5d4:	56                   	push   %esi
     5d5:	53                   	push   %ebx
     5d6:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     5d9:	8b 45 08             	mov    0x8(%ebp),%eax
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     5dc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     5df:	8b 75 10             	mov    0x10(%ebp),%esi
  char *s;
  int ret;

  s = *ps;
     5e2:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     5e4:	39 df                	cmp    %ebx,%edi
     5e6:	72 13                	jb     5fb <gettoken+0x2b>
     5e8:	eb 29                	jmp    613 <gettoken+0x43>
     5ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     5f0:	83 c7 01             	add    $0x1,%edi
{
  char *s;
  int ret;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     5f3:	39 fb                	cmp    %edi,%ebx
     5f5:	0f 84 ed 00 00 00    	je     6e8 <gettoken+0x118>
     5fb:	0f be 07             	movsbl (%edi),%eax
     5fe:	83 ec 08             	sub    $0x8,%esp
     601:	50                   	push   %eax
     602:	68 7c 1a 00 00       	push   $0x1a7c
     607:	e8 a4 07 00 00       	call   db0 <strchr>
     60c:	83 c4 10             	add    $0x10,%esp
     60f:	85 c0                	test   %eax,%eax
     611:	75 dd                	jne    5f0 <gettoken+0x20>
    s++;
  if(q)
     613:	85 f6                	test   %esi,%esi
     615:	74 02                	je     619 <gettoken+0x49>
    *q = s;
     617:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     619:	0f be 37             	movsbl (%edi),%esi
     61c:	89 f1                	mov    %esi,%ecx
     61e:	89 f0                	mov    %esi,%eax
  switch(*s){
     620:	80 f9 29             	cmp    $0x29,%cl
     623:	7f 5b                	jg     680 <gettoken+0xb0>
     625:	80 f9 28             	cmp    $0x28,%cl
     628:	7d 61                	jge    68b <gettoken+0xbb>
     62a:	84 c9                	test   %cl,%cl
     62c:	0f 85 de 00 00 00    	jne    710 <gettoken+0x140>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     632:	8b 55 14             	mov    0x14(%ebp),%edx
     635:	85 d2                	test   %edx,%edx
     637:	74 05                	je     63e <gettoken+0x6e>
    *eq = s;
     639:	8b 45 14             	mov    0x14(%ebp),%eax
     63c:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     63e:	39 fb                	cmp    %edi,%ebx
     640:	77 0d                	ja     64f <gettoken+0x7f>
     642:	eb 23                	jmp    667 <gettoken+0x97>
     644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    s++;
     648:	83 c7 01             	add    $0x1,%edi
    break;
  }
  if(eq)
    *eq = s;

  while(s < es && strchr(whitespace, *s))
     64b:	39 fb                	cmp    %edi,%ebx
     64d:	74 18                	je     667 <gettoken+0x97>
     64f:	0f be 07             	movsbl (%edi),%eax
     652:	83 ec 08             	sub    $0x8,%esp
     655:	50                   	push   %eax
     656:	68 7c 1a 00 00       	push   $0x1a7c
     65b:	e8 50 07 00 00       	call   db0 <strchr>
     660:	83 c4 10             	add    $0x10,%esp
     663:	85 c0                	test   %eax,%eax
     665:	75 e1                	jne    648 <gettoken+0x78>
    s++;
  *ps = s;
     667:	8b 45 08             	mov    0x8(%ebp),%eax
     66a:	89 38                	mov    %edi,(%eax)
  return ret;
}
     66c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     66f:	89 f0                	mov    %esi,%eax
     671:	5b                   	pop    %ebx
     672:	5e                   	pop    %esi
     673:	5f                   	pop    %edi
     674:	5d                   	pop    %ebp
     675:	c3                   	ret    
     676:	8d 76 00             	lea    0x0(%esi),%esi
     679:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     680:	80 f9 3e             	cmp    $0x3e,%cl
     683:	75 0b                	jne    690 <gettoken+0xc0>
  case '<':
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
     685:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     689:	74 75                	je     700 <gettoken+0x130>
  case '&':
  case '<':
    s++;
    break;
  case '>':
    s++;
     68b:	83 c7 01             	add    $0x1,%edi
     68e:	eb a2                	jmp    632 <gettoken+0x62>
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     690:	7f 5e                	jg     6f0 <gettoken+0x120>
     692:	83 e9 3b             	sub    $0x3b,%ecx
     695:	80 f9 01             	cmp    $0x1,%cl
     698:	76 f1                	jbe    68b <gettoken+0xbb>
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     69a:	39 fb                	cmp    %edi,%ebx
     69c:	77 24                	ja     6c2 <gettoken+0xf2>
     69e:	eb 7c                	jmp    71c <gettoken+0x14c>
     6a0:	0f be 07             	movsbl (%edi),%eax
     6a3:	83 ec 08             	sub    $0x8,%esp
     6a6:	50                   	push   %eax
     6a7:	68 74 1a 00 00       	push   $0x1a74
     6ac:	e8 ff 06 00 00       	call   db0 <strchr>
     6b1:	83 c4 10             	add    $0x10,%esp
     6b4:	85 c0                	test   %eax,%eax
     6b6:	75 1f                	jne    6d7 <gettoken+0x107>
      s++;
     6b8:	83 c7 01             	add    $0x1,%edi
      s++;
    }
    break;
  default:
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     6bb:	39 fb                	cmp    %edi,%ebx
     6bd:	74 5b                	je     71a <gettoken+0x14a>
     6bf:	0f be 07             	movsbl (%edi),%eax
     6c2:	83 ec 08             	sub    $0x8,%esp
     6c5:	50                   	push   %eax
     6c6:	68 7c 1a 00 00       	push   $0x1a7c
     6cb:	e8 e0 06 00 00       	call   db0 <strchr>
     6d0:	83 c4 10             	add    $0x10,%esp
     6d3:	85 c0                	test   %eax,%eax
     6d5:	74 c9                	je     6a0 <gettoken+0xd0>
      ret = '+';
      s++;
    }
    break;
  default:
    ret = 'a';
     6d7:	be 61 00 00 00       	mov    $0x61,%esi
     6dc:	e9 51 ff ff ff       	jmp    632 <gettoken+0x62>
     6e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6e8:	89 df                	mov    %ebx,%edi
     6ea:	e9 24 ff ff ff       	jmp    613 <gettoken+0x43>
     6ef:	90                   	nop
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     6f0:	80 f9 7c             	cmp    $0x7c,%cl
     6f3:	74 96                	je     68b <gettoken+0xbb>
     6f5:	eb a3                	jmp    69a <gettoken+0xca>
     6f7:	89 f6                	mov    %esi,%esi
     6f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
      s++;
     700:	83 c7 02             	add    $0x2,%edi
    s++;
    break;
  case '>':
    s++;
    if(*s == '>'){
      ret = '+';
     703:	be 2b 00 00 00       	mov    $0x2b,%esi
     708:	e9 25 ff ff ff       	jmp    632 <gettoken+0x62>
     70d:	8d 76 00             	lea    0x0(%esi),%esi
  while(s < es && strchr(whitespace, *s))
    s++;
  if(q)
    *q = s;
  ret = *s;
  switch(*s){
     710:	80 f9 26             	cmp    $0x26,%cl
     713:	75 85                	jne    69a <gettoken+0xca>
     715:	e9 71 ff ff ff       	jmp    68b <gettoken+0xbb>
     71a:	89 df                	mov    %ebx,%edi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     71c:	8b 45 14             	mov    0x14(%ebp),%eax
     71f:	be 61 00 00 00       	mov    $0x61,%esi
     724:	85 c0                	test   %eax,%eax
     726:	0f 85 0d ff ff ff    	jne    639 <gettoken+0x69>
     72c:	e9 36 ff ff ff       	jmp    667 <gettoken+0x97>
     731:	eb 0d                	jmp    740 <peek>
     733:	90                   	nop
     734:	90                   	nop
     735:	90                   	nop
     736:	90                   	nop
     737:	90                   	nop
     738:	90                   	nop
     739:	90                   	nop
     73a:	90                   	nop
     73b:	90                   	nop
     73c:	90                   	nop
     73d:	90                   	nop
     73e:	90                   	nop
     73f:	90                   	nop

00000740 <peek>:
  return ret;
}

int
peek(char **ps, char *es, char *toks)
{
     740:	55                   	push   %ebp
     741:	89 e5                	mov    %esp,%ebp
     743:	57                   	push   %edi
     744:	56                   	push   %esi
     745:	53                   	push   %ebx
     746:	83 ec 0c             	sub    $0xc,%esp
     749:	8b 7d 08             	mov    0x8(%ebp),%edi
     74c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     74f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     751:	39 f3                	cmp    %esi,%ebx
     753:	72 12                	jb     767 <peek+0x27>
     755:	eb 28                	jmp    77f <peek+0x3f>
     757:	89 f6                	mov    %esi,%esi
     759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    s++;
     760:	83 c3 01             	add    $0x1,%ebx
peek(char **ps, char *es, char *toks)
{
  char *s;

  s = *ps;
  while(s < es && strchr(whitespace, *s))
     763:	39 de                	cmp    %ebx,%esi
     765:	74 18                	je     77f <peek+0x3f>
     767:	0f be 03             	movsbl (%ebx),%eax
     76a:	83 ec 08             	sub    $0x8,%esp
     76d:	50                   	push   %eax
     76e:	68 7c 1a 00 00       	push   $0x1a7c
     773:	e8 38 06 00 00       	call   db0 <strchr>
     778:	83 c4 10             	add    $0x10,%esp
     77b:	85 c0                	test   %eax,%eax
     77d:	75 e1                	jne    760 <peek+0x20>
    s++;
  *ps = s;
     77f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     781:	0f be 13             	movsbl (%ebx),%edx
     784:	31 c0                	xor    %eax,%eax
     786:	84 d2                	test   %dl,%dl
     788:	74 17                	je     7a1 <peek+0x61>
     78a:	83 ec 08             	sub    $0x8,%esp
     78d:	52                   	push   %edx
     78e:	ff 75 10             	pushl  0x10(%ebp)
     791:	e8 1a 06 00 00       	call   db0 <strchr>
     796:	83 c4 10             	add    $0x10,%esp
     799:	85 c0                	test   %eax,%eax
     79b:	0f 95 c0             	setne  %al
     79e:	0f b6 c0             	movzbl %al,%eax
}
     7a1:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7a4:	5b                   	pop    %ebx
     7a5:	5e                   	pop    %esi
     7a6:	5f                   	pop    %edi
     7a7:	5d                   	pop    %ebp
     7a8:	c3                   	ret    
     7a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000007b0 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     7b0:	55                   	push   %ebp
     7b1:	89 e5                	mov    %esp,%ebp
     7b3:	57                   	push   %edi
     7b4:	56                   	push   %esi
     7b5:	53                   	push   %ebx
     7b6:	83 ec 1c             	sub    $0x1c,%esp
     7b9:	8b 7d 0c             	mov    0xc(%ebp),%edi
     7bc:	8b 75 10             	mov    0x10(%ebp),%esi
     7bf:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     7c0:	83 ec 04             	sub    $0x4,%esp
     7c3:	68 e1 13 00 00       	push   $0x13e1
     7c8:	56                   	push   %esi
     7c9:	57                   	push   %edi
     7ca:	e8 71 ff ff ff       	call   740 <peek>
     7cf:	83 c4 10             	add    $0x10,%esp
     7d2:	85 c0                	test   %eax,%eax
     7d4:	0f 84 8e 00 00 00    	je     868 <parseredirs+0xb8>
    tok = gettoken(ps, es, 0, 0);
     7da:	6a 00                	push   $0x0
     7dc:	6a 00                	push   $0x0
     7de:	56                   	push   %esi
     7df:	57                   	push   %edi
     7e0:	e8 eb fd ff ff       	call   5d0 <gettoken>
     7e5:	89 c3                	mov    %eax,%ebx
    if(gettoken(ps, es, &q, &eq) != 'a')
     7e7:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     7ea:	50                   	push   %eax
     7eb:	8d 45 e0             	lea    -0x20(%ebp),%eax
     7ee:	50                   	push   %eax
     7ef:	56                   	push   %esi
     7f0:	57                   	push   %edi
     7f1:	e8 da fd ff ff       	call   5d0 <gettoken>
     7f6:	83 c4 20             	add    $0x20,%esp
     7f9:	83 f8 61             	cmp    $0x61,%eax
     7fc:	74 23                	je     821 <parseredirs+0x71>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     7fe:	83 ec 04             	sub    $0x4,%esp
     801:	68 c4 13 00 00       	push   $0x13c4
     806:	68 2d 14 00 00       	push   $0x142d
     80b:	6a 02                	push   $0x2
     80d:	e8 5e 08 00 00       	call   1070 <printf>
  exit(0);
     812:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     819:	e8 04 07 00 00       	call   f22 <exit>
     81e:	83 c4 10             	add    $0x10,%esp

  while(peek(ps, es, "<>")){
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
    switch(tok){
     821:	83 fb 3c             	cmp    $0x3c,%ebx
     824:	74 32                	je     858 <parseredirs+0xa8>
     826:	83 fb 3e             	cmp    $0x3e,%ebx
     829:	74 05                	je     830 <parseredirs+0x80>
     82b:	83 fb 2b             	cmp    $0x2b,%ebx
     82e:	75 90                	jne    7c0 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     830:	83 ec 0c             	sub    $0xc,%esp
     833:	6a 01                	push   $0x1
     835:	68 01 02 00 00       	push   $0x201
     83a:	ff 75 e4             	pushl  -0x1c(%ebp)
     83d:	ff 75 e0             	pushl  -0x20(%ebp)
     840:	ff 75 08             	pushl  0x8(%ebp)
     843:	e8 88 fc ff ff       	call   4d0 <redircmd>
      break;
     848:	83 c4 20             	add    $0x20,%esp
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     84b:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     84e:	e9 6d ff ff ff       	jmp    7c0 <parseredirs+0x10>
     853:	90                   	nop
     854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    tok = gettoken(ps, es, 0, 0);
    if(gettoken(ps, es, &q, &eq) != 'a')
      panic("missing file for redirection");
    switch(tok){
    case '<':
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     858:	83 ec 0c             	sub    $0xc,%esp
     85b:	6a 00                	push   $0x0
     85d:	6a 00                	push   $0x0
     85f:	eb d9                	jmp    83a <parseredirs+0x8a>
     861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    }
  }
  return cmd;
}
     868:	8b 45 08             	mov    0x8(%ebp),%eax
     86b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     86e:	5b                   	pop    %ebx
     86f:	5e                   	pop    %esi
     870:	5f                   	pop    %edi
     871:	5d                   	pop    %ebp
     872:	c3                   	ret    
     873:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     879:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000880 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     880:	55                   	push   %ebp
     881:	89 e5                	mov    %esp,%ebp
     883:	57                   	push   %edi
     884:	56                   	push   %esi
     885:	53                   	push   %ebx
     886:	83 ec 30             	sub    $0x30,%esp
     889:	8b 75 08             	mov    0x8(%ebp),%esi
     88c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     88f:	68 e4 13 00 00       	push   $0x13e4
     894:	57                   	push   %edi
     895:	56                   	push   %esi
     896:	e8 a5 fe ff ff       	call   740 <peek>
     89b:	83 c4 10             	add    $0x10,%esp
     89e:	85 c0                	test   %eax,%eax
     8a0:	0f 85 0a 01 00 00    	jne    9b0 <parseexec+0x130>
    return parseblock(ps, es);

  ret = execcmd();
     8a6:	e8 f5 fb ff ff       	call   4a0 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     8ab:	83 ec 04             	sub    $0x4,%esp
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);

  ret = execcmd();
     8ae:	89 c3                	mov    %eax,%ebx
     8b0:	89 45 cc             	mov    %eax,-0x34(%ebp)
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     8b3:	57                   	push   %edi
     8b4:	56                   	push   %esi
     8b5:	8d 5b 04             	lea    0x4(%ebx),%ebx
     8b8:	50                   	push   %eax
     8b9:	e8 f2 fe ff ff       	call   7b0 <parseredirs>
     8be:	83 c4 10             	add    $0x10,%esp
     8c1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    return parseblock(ps, es);

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
     8c4:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     8cb:	eb 19                	jmp    8e6 <parseexec+0x66>
     8cd:	8d 76 00             	lea    0x0(%esi),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     8d0:	83 ec 04             	sub    $0x4,%esp
     8d3:	83 c3 04             	add    $0x4,%ebx
     8d6:	57                   	push   %edi
     8d7:	56                   	push   %esi
     8d8:	ff 75 d0             	pushl  -0x30(%ebp)
     8db:	e8 d0 fe ff ff       	call   7b0 <parseredirs>
     8e0:	83 c4 10             	add    $0x10,%esp
     8e3:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
  while(!peek(ps, es, "|)&;")){
     8e6:	83 ec 04             	sub    $0x4,%esp
     8e9:	68 fb 13 00 00       	push   $0x13fb
     8ee:	57                   	push   %edi
     8ef:	56                   	push   %esi
     8f0:	e8 4b fe ff ff       	call   740 <peek>
     8f5:	83 c4 10             	add    $0x10,%esp
     8f8:	85 c0                	test   %eax,%eax
     8fa:	0f 85 88 00 00 00    	jne    988 <parseexec+0x108>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     900:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     903:	50                   	push   %eax
     904:	8d 45 e0             	lea    -0x20(%ebp),%eax
     907:	50                   	push   %eax
     908:	57                   	push   %edi
     909:	56                   	push   %esi
     90a:	e8 c1 fc ff ff       	call   5d0 <gettoken>
     90f:	83 c4 10             	add    $0x10,%esp
     912:	85 c0                	test   %eax,%eax
     914:	74 72                	je     988 <parseexec+0x108>
      break;
    if(tok != 'a')
     916:	83 f8 61             	cmp    $0x61,%eax
     919:	74 23                	je     93e <parseexec+0xbe>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     91b:	83 ec 04             	sub    $0x4,%esp
     91e:	68 e6 13 00 00       	push   $0x13e6
     923:	68 2d 14 00 00       	push   $0x142d
     928:	6a 02                	push   $0x2
     92a:	e8 41 07 00 00       	call   1070 <printf>
  exit(0);
     92f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     936:	e8 e7 05 00 00       	call   f22 <exit>
     93b:	83 c4 10             	add    $0x10,%esp
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
    cmd->argv[argc] = q;
     93e:	8b 45 e0             	mov    -0x20(%ebp),%eax
    cmd->eargv[argc] = eq;
    argc++;
     941:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
      break;
    if(tok != 'a')
      panic("syntax");
    cmd->argv[argc] = q;
     945:	89 03                	mov    %eax,(%ebx)
    cmd->eargv[argc] = eq;
     947:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     94a:	89 43 28             	mov    %eax,0x28(%ebx)
    argc++;
     94d:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    if(argc >= MAXARGS)
     950:	83 f8 09             	cmp    $0x9,%eax
     953:	0f 8e 77 ff ff ff    	jle    8d0 <parseexec+0x50>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     959:	83 ec 04             	sub    $0x4,%esp
     95c:	68 ed 13 00 00       	push   $0x13ed
     961:	68 2d 14 00 00       	push   $0x142d
     966:	6a 02                	push   $0x2
     968:	e8 03 07 00 00       	call   1070 <printf>
  exit(0);
     96d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     974:	e8 a9 05 00 00       	call   f22 <exit>
     979:	83 c4 10             	add    $0x10,%esp
     97c:	e9 4f ff ff ff       	jmp    8d0 <parseexec+0x50>
     981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     988:	8b 45 cc             	mov    -0x34(%ebp),%eax
     98b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     98e:	8d 04 90             	lea    (%eax,%edx,4),%eax
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
     991:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     998:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
     99f:	8b 45 d0             	mov    -0x30(%ebp),%eax
  return ret;
}
     9a2:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9a5:	5b                   	pop    %ebx
     9a6:	5e                   	pop    %esi
     9a7:	5f                   	pop    %edi
     9a8:	5d                   	pop    %ebp
     9a9:	c3                   	ret    
     9aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
    return parseblock(ps, es);
     9b0:	83 ec 08             	sub    $0x8,%esp
     9b3:	57                   	push   %edi
     9b4:	56                   	push   %esi
     9b5:	e8 26 01 00 00       	call   ae0 <parseblock>
     9ba:	83 c4 10             	add    $0x10,%esp
    ret = parseredirs(ret, ps, es);
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     9bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9c0:	5b                   	pop    %ebx
     9c1:	5e                   	pop    %esi
     9c2:	5f                   	pop    %edi
     9c3:	5d                   	pop    %ebp
     9c4:	c3                   	ret    
     9c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     9c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000009d0 <parsepipe>:
  return cmd;
}

struct cmd*
parsepipe(char **ps, char *es)
{
     9d0:	55                   	push   %ebp
     9d1:	89 e5                	mov    %esp,%ebp
     9d3:	57                   	push   %edi
     9d4:	56                   	push   %esi
     9d5:	53                   	push   %ebx
     9d6:	83 ec 14             	sub    $0x14,%esp
     9d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     9dc:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     9df:	56                   	push   %esi
     9e0:	53                   	push   %ebx
     9e1:	e8 9a fe ff ff       	call   880 <parseexec>
  if(peek(ps, es, "|")){
     9e6:	83 c4 0c             	add    $0xc,%esp
struct cmd*
parsepipe(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
     9e9:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     9eb:	68 00 14 00 00       	push   $0x1400
     9f0:	56                   	push   %esi
     9f1:	53                   	push   %ebx
     9f2:	e8 49 fd ff ff       	call   740 <peek>
     9f7:	83 c4 10             	add    $0x10,%esp
     9fa:	85 c0                	test   %eax,%eax
     9fc:	75 12                	jne    a10 <parsepipe+0x40>
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
  }
  return cmd;
}
     9fe:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a01:	89 f8                	mov    %edi,%eax
     a03:	5b                   	pop    %ebx
     a04:	5e                   	pop    %esi
     a05:	5f                   	pop    %edi
     a06:	5d                   	pop    %ebp
     a07:	c3                   	ret    
     a08:	90                   	nop
     a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
{
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
     a10:	6a 00                	push   $0x0
     a12:	6a 00                	push   $0x0
     a14:	56                   	push   %esi
     a15:	53                   	push   %ebx
     a16:	e8 b5 fb ff ff       	call   5d0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     a1b:	58                   	pop    %eax
     a1c:	5a                   	pop    %edx
     a1d:	56                   	push   %esi
     a1e:	53                   	push   %ebx
     a1f:	e8 ac ff ff ff       	call   9d0 <parsepipe>
     a24:	89 7d 08             	mov    %edi,0x8(%ebp)
     a27:	89 45 0c             	mov    %eax,0xc(%ebp)
     a2a:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     a2d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a30:	5b                   	pop    %ebx
     a31:	5e                   	pop    %esi
     a32:	5f                   	pop    %edi
     a33:	5d                   	pop    %ebp
  struct cmd *cmd;

  cmd = parseexec(ps, es);
  if(peek(ps, es, "|")){
    gettoken(ps, es, 0, 0);
    cmd = pipecmd(cmd, parsepipe(ps, es));
     a34:	e9 e7 fa ff ff       	jmp    520 <pipecmd>
     a39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000a40 <parseline>:
  return cmd;
}

struct cmd*
parseline(char **ps, char *es)
{
     a40:	55                   	push   %ebp
     a41:	89 e5                	mov    %esp,%ebp
     a43:	57                   	push   %edi
     a44:	56                   	push   %esi
     a45:	53                   	push   %ebx
     a46:	83 ec 14             	sub    $0x14,%esp
     a49:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a4c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     a4f:	56                   	push   %esi
     a50:	53                   	push   %ebx
     a51:	e8 7a ff ff ff       	call   9d0 <parsepipe>
  while(peek(ps, es, "&")){
     a56:	83 c4 10             	add    $0x10,%esp
struct cmd*
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
     a59:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     a5b:	eb 1b                	jmp    a78 <parseline+0x38>
     a5d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     a60:	6a 00                	push   $0x0
     a62:	6a 00                	push   $0x0
     a64:	56                   	push   %esi
     a65:	53                   	push   %ebx
     a66:	e8 65 fb ff ff       	call   5d0 <gettoken>
    cmd = backcmd(cmd);
     a6b:	89 3c 24             	mov    %edi,(%esp)
     a6e:	e8 2d fb ff ff       	call   5a0 <backcmd>
     a73:	83 c4 10             	add    $0x10,%esp
     a76:	89 c7                	mov    %eax,%edi
parseline(char **ps, char *es)
{
  struct cmd *cmd;

  cmd = parsepipe(ps, es);
  while(peek(ps, es, "&")){
     a78:	83 ec 04             	sub    $0x4,%esp
     a7b:	68 02 14 00 00       	push   $0x1402
     a80:	56                   	push   %esi
     a81:	53                   	push   %ebx
     a82:	e8 b9 fc ff ff       	call   740 <peek>
     a87:	83 c4 10             	add    $0x10,%esp
     a8a:	85 c0                	test   %eax,%eax
     a8c:	75 d2                	jne    a60 <parseline+0x20>
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
     a8e:	83 ec 04             	sub    $0x4,%esp
     a91:	68 fe 13 00 00       	push   $0x13fe
     a96:	56                   	push   %esi
     a97:	53                   	push   %ebx
     a98:	e8 a3 fc ff ff       	call   740 <peek>
     a9d:	83 c4 10             	add    $0x10,%esp
     aa0:	85 c0                	test   %eax,%eax
     aa2:	75 0c                	jne    ab0 <parseline+0x70>
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
  }
  return cmd;
}
     aa4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     aa7:	89 f8                	mov    %edi,%eax
     aa9:	5b                   	pop    %ebx
     aaa:	5e                   	pop    %esi
     aab:	5f                   	pop    %edi
     aac:	5d                   	pop    %ebp
     aad:	c3                   	ret    
     aae:	66 90                	xchg   %ax,%ax
  while(peek(ps, es, "&")){
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
     ab0:	6a 00                	push   $0x0
     ab2:	6a 00                	push   $0x0
     ab4:	56                   	push   %esi
     ab5:	53                   	push   %ebx
     ab6:	e8 15 fb ff ff       	call   5d0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     abb:	58                   	pop    %eax
     abc:	5a                   	pop    %edx
     abd:	56                   	push   %esi
     abe:	53                   	push   %ebx
     abf:	e8 7c ff ff ff       	call   a40 <parseline>
     ac4:	89 7d 08             	mov    %edi,0x8(%ebp)
     ac7:	89 45 0c             	mov    %eax,0xc(%ebp)
     aca:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     acd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ad0:	5b                   	pop    %ebx
     ad1:	5e                   	pop    %esi
     ad2:	5f                   	pop    %edi
     ad3:	5d                   	pop    %ebp
    gettoken(ps, es, 0, 0);
    cmd = backcmd(cmd);
  }
  if(peek(ps, es, ";")){
    gettoken(ps, es, 0, 0);
    cmd = listcmd(cmd, parseline(ps, es));
     ad4:	e9 87 fa ff ff       	jmp    560 <listcmd>
     ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ae0 <parseblock>:
  return cmd;
}

struct cmd*
parseblock(char **ps, char *es)
{
     ae0:	55                   	push   %ebp
     ae1:	89 e5                	mov    %esp,%ebp
     ae3:	57                   	push   %edi
     ae4:	56                   	push   %esi
     ae5:	53                   	push   %ebx
     ae6:	83 ec 10             	sub    $0x10,%esp
     ae9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     aec:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct cmd *cmd;

  if(!peek(ps, es, "("))
     aef:	68 e4 13 00 00       	push   $0x13e4
     af4:	56                   	push   %esi
     af5:	53                   	push   %ebx
     af6:	e8 45 fc ff ff       	call   740 <peek>
     afb:	83 c4 10             	add    $0x10,%esp
     afe:	85 c0                	test   %eax,%eax
     b00:	74 6e                	je     b70 <parseblock+0x90>
    panic("parseblock");
  gettoken(ps, es, 0, 0);
     b02:	6a 00                	push   $0x0
     b04:	6a 00                	push   $0x0
     b06:	56                   	push   %esi
     b07:	53                   	push   %ebx
     b08:	e8 c3 fa ff ff       	call   5d0 <gettoken>
  cmd = parseline(ps, es);
     b0d:	58                   	pop    %eax
     b0e:	5a                   	pop    %edx
     b0f:	56                   	push   %esi
     b10:	53                   	push   %ebx
     b11:	e8 2a ff ff ff       	call   a40 <parseline>
  if(!peek(ps, es, ")"))
     b16:	83 c4 0c             	add    $0xc,%esp
  struct cmd *cmd;

  if(!peek(ps, es, "("))
    panic("parseblock");
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
     b19:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     b1b:	68 20 14 00 00       	push   $0x1420
     b20:	56                   	push   %esi
     b21:	53                   	push   %ebx
     b22:	e8 19 fc ff ff       	call   740 <peek>
     b27:	83 c4 10             	add    $0x10,%esp
     b2a:	85 c0                	test   %eax,%eax
     b2c:	75 23                	jne    b51 <parseblock+0x71>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     b2e:	83 ec 04             	sub    $0x4,%esp
     b31:	68 0f 14 00 00       	push   $0x140f
     b36:	68 2d 14 00 00       	push   $0x142d
     b3b:	6a 02                	push   $0x2
     b3d:	e8 2e 05 00 00       	call   1070 <printf>
  exit(0);
     b42:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b49:	e8 d4 03 00 00       	call   f22 <exit>
     b4e:	83 c4 10             	add    $0x10,%esp
    panic("parseblock");
  gettoken(ps, es, 0, 0);
  cmd = parseline(ps, es);
  if(!peek(ps, es, ")"))
    panic("syntax - missing )");
  gettoken(ps, es, 0, 0);
     b51:	6a 00                	push   $0x0
     b53:	6a 00                	push   $0x0
     b55:	56                   	push   %esi
     b56:	53                   	push   %ebx
     b57:	e8 74 fa ff ff       	call   5d0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     b5c:	83 c4 0c             	add    $0xc,%esp
     b5f:	56                   	push   %esi
     b60:	53                   	push   %ebx
     b61:	57                   	push   %edi
     b62:	e8 49 fc ff ff       	call   7b0 <parseredirs>
  return cmd;
}
     b67:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b6a:	5b                   	pop    %ebx
     b6b:	5e                   	pop    %esi
     b6c:	5f                   	pop    %edi
     b6d:	5d                   	pop    %ebp
     b6e:	c3                   	ret    
     b6f:	90                   	nop
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     b70:	83 ec 04             	sub    $0x4,%esp
     b73:	68 04 14 00 00       	push   $0x1404
     b78:	68 2d 14 00 00       	push   $0x142d
     b7d:	6a 02                	push   $0x2
     b7f:	e8 ec 04 00 00       	call   1070 <printf>
  exit(0);
     b84:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b8b:	e8 92 03 00 00       	call   f22 <exit>
     b90:	83 c4 10             	add    $0x10,%esp
     b93:	e9 6a ff ff ff       	jmp    b02 <parseblock+0x22>
     b98:	90                   	nop
     b99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ba0 <nulterminate>:
}

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     ba0:	55                   	push   %ebp
     ba1:	89 e5                	mov    %esp,%ebp
     ba3:	53                   	push   %ebx
     ba4:	83 ec 04             	sub    $0x4,%esp
     ba7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     baa:	85 db                	test   %ebx,%ebx
     bac:	0f 84 96 00 00 00    	je     c48 <nulterminate+0xa8>
    return 0;

  switch(cmd->type){
     bb2:	83 3b 05             	cmpl   $0x5,(%ebx)
     bb5:	77 48                	ja     bff <nulterminate+0x5f>
     bb7:	8b 03                	mov    (%ebx),%eax
     bb9:	ff 24 85 60 14 00 00 	jmp    *0x1460(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     bc0:	83 ec 0c             	sub    $0xc,%esp
     bc3:	ff 73 04             	pushl  0x4(%ebx)
     bc6:	e8 d5 ff ff ff       	call   ba0 <nulterminate>
    nulterminate(lcmd->right);
     bcb:	58                   	pop    %eax
     bcc:	ff 73 08             	pushl  0x8(%ebx)
     bcf:	e8 cc ff ff ff       	call   ba0 <nulterminate>
    break;
     bd4:	83 c4 10             	add    $0x10,%esp
     bd7:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     bd9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     bdc:	c9                   	leave  
     bdd:	c3                   	ret    
     bde:	66 90                	xchg   %ax,%ax
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     be0:	8b 4b 04             	mov    0x4(%ebx),%ecx
     be3:	8d 43 2c             	lea    0x2c(%ebx),%eax
     be6:	85 c9                	test   %ecx,%ecx
     be8:	74 15                	je     bff <nulterminate+0x5f>
     bea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     bf0:	8b 10                	mov    (%eax),%edx
     bf2:	83 c0 04             	add    $0x4,%eax
     bf5:	c6 02 00             	movb   $0x0,(%edx)
    return 0;

  switch(cmd->type){
  case EXEC:
    ecmd = (struct execcmd*)cmd;
    for(i=0; ecmd->argv[i]; i++)
     bf8:	8b 50 d8             	mov    -0x28(%eax),%edx
     bfb:	85 d2                	test   %edx,%edx
     bfd:	75 f1                	jne    bf0 <nulterminate+0x50>
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;

  switch(cmd->type){
     bff:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     c01:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c04:	c9                   	leave  
     c05:	c3                   	ret    
     c06:	8d 76 00             	lea    0x0(%esi),%esi
     c09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     c10:	83 ec 0c             	sub    $0xc,%esp
     c13:	ff 73 04             	pushl  0x4(%ebx)
     c16:	e8 85 ff ff ff       	call   ba0 <nulterminate>
    break;
     c1b:	89 d8                	mov    %ebx,%eax
     c1d:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     c20:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c23:	c9                   	leave  
     c24:	c3                   	ret    
     c25:	8d 76 00             	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
     c28:	83 ec 0c             	sub    $0xc,%esp
     c2b:	ff 73 04             	pushl  0x4(%ebx)
     c2e:	e8 6d ff ff ff       	call   ba0 <nulterminate>
    *rcmd->efile = 0;
     c33:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     c36:	83 c4 10             	add    $0x10,%esp
    break;

  case REDIR:
    rcmd = (struct redircmd*)cmd;
    nulterminate(rcmd->cmd);
    *rcmd->efile = 0;
     c39:	c6 00 00             	movb   $0x0,(%eax)
    break;
     c3c:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     c3e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c41:	c9                   	leave  
     c42:	c3                   	ret    
     c43:	90                   	nop
     c44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    return 0;
     c48:	31 c0                	xor    %eax,%eax
     c4a:	eb 8d                	jmp    bd9 <nulterminate+0x39>
     c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c50 <parsecmd>:
struct cmd *parseexec(char**, char*);
struct cmd *nulterminate(struct cmd*);

struct cmd*
parsecmd(char *s)
{
     c50:	55                   	push   %ebp
     c51:	89 e5                	mov    %esp,%ebp
     c53:	56                   	push   %esi
     c54:	53                   	push   %ebx
  char *es;
  struct cmd *cmd;

  es = s + strlen(s);
     c55:	8b 5d 08             	mov    0x8(%ebp),%ebx
     c58:	83 ec 0c             	sub    $0xc,%esp
     c5b:	53                   	push   %ebx
     c5c:	e8 ff 00 00 00       	call   d60 <strlen>
     c61:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     c63:	58                   	pop    %eax
     c64:	8d 45 08             	lea    0x8(%ebp),%eax
     c67:	5a                   	pop    %edx
     c68:	53                   	push   %ebx
     c69:	50                   	push   %eax
     c6a:	e8 d1 fd ff ff       	call   a40 <parseline>
     c6f:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     c71:	8d 45 08             	lea    0x8(%ebp),%eax
     c74:	83 c4 0c             	add    $0xc,%esp
     c77:	68 ab 13 00 00       	push   $0x13ab
     c7c:	53                   	push   %ebx
     c7d:	50                   	push   %eax
     c7e:	e8 bd fa ff ff       	call   740 <peek>
  if(s != es){
     c83:	8b 45 08             	mov    0x8(%ebp),%eax
     c86:	83 c4 10             	add    $0x10,%esp
     c89:	39 c3                	cmp    %eax,%ebx
     c8b:	74 33                	je     cc0 <parsecmd+0x70>
    printf(2, "leftovers: %s\n", s);
     c8d:	83 ec 04             	sub    $0x4,%esp
     c90:	50                   	push   %eax
     c91:	68 22 14 00 00       	push   $0x1422
     c96:	6a 02                	push   $0x2
     c98:	e8 d3 03 00 00       	call   1070 <printf>
}

void
panic(char *s)
{
  printf(2, "%s\n", s);
     c9d:	83 c4 0c             	add    $0xc,%esp
     ca0:	68 e6 13 00 00       	push   $0x13e6
     ca5:	68 2d 14 00 00       	push   $0x142d
     caa:	6a 02                	push   $0x2
     cac:	e8 bf 03 00 00       	call   1070 <printf>
  exit(0);
     cb1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     cb8:	e8 65 02 00 00       	call   f22 <exit>
     cbd:	83 c4 10             	add    $0x10,%esp
  peek(&s, es, "");
  if(s != es){
    printf(2, "leftovers: %s\n", s);
    panic("syntax");
  }
  nulterminate(cmd);
     cc0:	83 ec 0c             	sub    $0xc,%esp
     cc3:	56                   	push   %esi
     cc4:	e8 d7 fe ff ff       	call   ba0 <nulterminate>
  return cmd;
}
     cc9:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ccc:	89 f0                	mov    %esi,%eax
     cce:	5b                   	pop    %ebx
     ccf:	5e                   	pop    %esi
     cd0:	5d                   	pop    %ebp
     cd1:	c3                   	ret    
     cd2:	66 90                	xchg   %ax,%ax
     cd4:	66 90                	xchg   %ax,%ax
     cd6:	66 90                	xchg   %ax,%ax
     cd8:	66 90                	xchg   %ax,%ax
     cda:	66 90                	xchg   %ax,%ax
     cdc:	66 90                	xchg   %ax,%ax
     cde:	66 90                	xchg   %ax,%ax

00000ce0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     ce0:	55                   	push   %ebp
     ce1:	89 e5                	mov    %esp,%ebp
     ce3:	53                   	push   %ebx
     ce4:	8b 45 08             	mov    0x8(%ebp),%eax
     ce7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     cea:	89 c2                	mov    %eax,%edx
     cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cf0:	83 c1 01             	add    $0x1,%ecx
     cf3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     cf7:	83 c2 01             	add    $0x1,%edx
     cfa:	84 db                	test   %bl,%bl
     cfc:	88 5a ff             	mov    %bl,-0x1(%edx)
     cff:	75 ef                	jne    cf0 <strcpy+0x10>
    ;
  return os;
}
     d01:	5b                   	pop    %ebx
     d02:	5d                   	pop    %ebp
     d03:	c3                   	ret    
     d04:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d0a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000d10 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	56                   	push   %esi
     d14:	53                   	push   %ebx
     d15:	8b 55 08             	mov    0x8(%ebp),%edx
     d18:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     d1b:	0f b6 02             	movzbl (%edx),%eax
     d1e:	0f b6 19             	movzbl (%ecx),%ebx
     d21:	84 c0                	test   %al,%al
     d23:	75 1e                	jne    d43 <strcmp+0x33>
     d25:	eb 29                	jmp    d50 <strcmp+0x40>
     d27:	89 f6                	mov    %esi,%esi
     d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     d30:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     d33:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     d36:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     d39:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     d3d:	84 c0                	test   %al,%al
     d3f:	74 0f                	je     d50 <strcmp+0x40>
     d41:	89 f1                	mov    %esi,%ecx
     d43:	38 d8                	cmp    %bl,%al
     d45:	74 e9                	je     d30 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
     d47:	29 d8                	sub    %ebx,%eax
}
     d49:	5b                   	pop    %ebx
     d4a:	5e                   	pop    %esi
     d4b:	5d                   	pop    %ebp
     d4c:	c3                   	ret    
     d4d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
     d50:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
     d52:	29 d8                	sub    %ebx,%eax
}
     d54:	5b                   	pop    %ebx
     d55:	5e                   	pop    %esi
     d56:	5d                   	pop    %ebp
     d57:	c3                   	ret    
     d58:	90                   	nop
     d59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d60 <strlen>:

uint
strlen(char *s)
{
     d60:	55                   	push   %ebp
     d61:	89 e5                	mov    %esp,%ebp
     d63:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     d66:	80 39 00             	cmpb   $0x0,(%ecx)
     d69:	74 12                	je     d7d <strlen+0x1d>
     d6b:	31 d2                	xor    %edx,%edx
     d6d:	8d 76 00             	lea    0x0(%esi),%esi
     d70:	83 c2 01             	add    $0x1,%edx
     d73:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     d77:	89 d0                	mov    %edx,%eax
     d79:	75 f5                	jne    d70 <strlen+0x10>
    ;
  return n;
}
     d7b:	5d                   	pop    %ebp
     d7c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
     d7d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
     d7f:	5d                   	pop    %ebp
     d80:	c3                   	ret    
     d81:	eb 0d                	jmp    d90 <memset>
     d83:	90                   	nop
     d84:	90                   	nop
     d85:	90                   	nop
     d86:	90                   	nop
     d87:	90                   	nop
     d88:	90                   	nop
     d89:	90                   	nop
     d8a:	90                   	nop
     d8b:	90                   	nop
     d8c:	90                   	nop
     d8d:	90                   	nop
     d8e:	90                   	nop
     d8f:	90                   	nop

00000d90 <memset>:

void*
memset(void *dst, int c, uint n)
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	57                   	push   %edi
     d94:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     d97:	8b 4d 10             	mov    0x10(%ebp),%ecx
     d9a:	8b 45 0c             	mov    0xc(%ebp),%eax
     d9d:	89 d7                	mov    %edx,%edi
     d9f:	fc                   	cld    
     da0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     da2:	89 d0                	mov    %edx,%eax
     da4:	5f                   	pop    %edi
     da5:	5d                   	pop    %ebp
     da6:	c3                   	ret    
     da7:	89 f6                	mov    %esi,%esi
     da9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000db0 <strchr>:

char*
strchr(const char *s, char c)
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	53                   	push   %ebx
     db4:	8b 45 08             	mov    0x8(%ebp),%eax
     db7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     dba:	0f b6 10             	movzbl (%eax),%edx
     dbd:	84 d2                	test   %dl,%dl
     dbf:	74 1d                	je     dde <strchr+0x2e>
    if(*s == c)
     dc1:	38 d3                	cmp    %dl,%bl
     dc3:	89 d9                	mov    %ebx,%ecx
     dc5:	75 0d                	jne    dd4 <strchr+0x24>
     dc7:	eb 17                	jmp    de0 <strchr+0x30>
     dc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     dd0:	38 ca                	cmp    %cl,%dl
     dd2:	74 0c                	je     de0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
     dd4:	83 c0 01             	add    $0x1,%eax
     dd7:	0f b6 10             	movzbl (%eax),%edx
     dda:	84 d2                	test   %dl,%dl
     ddc:	75 f2                	jne    dd0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
     dde:	31 c0                	xor    %eax,%eax
}
     de0:	5b                   	pop    %ebx
     de1:	5d                   	pop    %ebp
     de2:	c3                   	ret    
     de3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     de9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000df0 <gets>:

char*
gets(char *buf, int max)
{
     df0:	55                   	push   %ebp
     df1:	89 e5                	mov    %esp,%ebp
     df3:	57                   	push   %edi
     df4:	56                   	push   %esi
     df5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     df6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
     df8:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
     dfb:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     dfe:	eb 29                	jmp    e29 <gets+0x39>
    cc = read(0, &c, 1);
     e00:	83 ec 04             	sub    $0x4,%esp
     e03:	6a 01                	push   $0x1
     e05:	57                   	push   %edi
     e06:	6a 00                	push   $0x0
     e08:	e8 2d 01 00 00       	call   f3a <read>
    if(cc < 1)
     e0d:	83 c4 10             	add    $0x10,%esp
     e10:	85 c0                	test   %eax,%eax
     e12:	7e 1d                	jle    e31 <gets+0x41>
      break;
    buf[i++] = c;
     e14:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     e18:	8b 55 08             	mov    0x8(%ebp),%edx
     e1b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
     e1d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
     e1f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     e23:	74 1b                	je     e40 <gets+0x50>
     e25:	3c 0d                	cmp    $0xd,%al
     e27:	74 17                	je     e40 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     e29:	8d 5e 01             	lea    0x1(%esi),%ebx
     e2c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     e2f:	7c cf                	jl     e00 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     e31:	8b 45 08             	mov    0x8(%ebp),%eax
     e34:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     e38:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e3b:	5b                   	pop    %ebx
     e3c:	5e                   	pop    %esi
     e3d:	5f                   	pop    %edi
     e3e:	5d                   	pop    %ebp
     e3f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     e40:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     e43:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
     e45:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     e49:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e4c:	5b                   	pop    %ebx
     e4d:	5e                   	pop    %esi
     e4e:	5f                   	pop    %edi
     e4f:	5d                   	pop    %ebp
     e50:	c3                   	ret    
     e51:	eb 0d                	jmp    e60 <stat>
     e53:	90                   	nop
     e54:	90                   	nop
     e55:	90                   	nop
     e56:	90                   	nop
     e57:	90                   	nop
     e58:	90                   	nop
     e59:	90                   	nop
     e5a:	90                   	nop
     e5b:	90                   	nop
     e5c:	90                   	nop
     e5d:	90                   	nop
     e5e:	90                   	nop
     e5f:	90                   	nop

00000e60 <stat>:

int
stat(char *n, struct stat *st)
{
     e60:	55                   	push   %ebp
     e61:	89 e5                	mov    %esp,%ebp
     e63:	56                   	push   %esi
     e64:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     e65:	83 ec 08             	sub    $0x8,%esp
     e68:	6a 00                	push   $0x0
     e6a:	ff 75 08             	pushl  0x8(%ebp)
     e6d:	e8 f0 00 00 00       	call   f62 <open>
  if(fd < 0)
     e72:	83 c4 10             	add    $0x10,%esp
     e75:	85 c0                	test   %eax,%eax
     e77:	78 27                	js     ea0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     e79:	83 ec 08             	sub    $0x8,%esp
     e7c:	ff 75 0c             	pushl  0xc(%ebp)
     e7f:	89 c3                	mov    %eax,%ebx
     e81:	50                   	push   %eax
     e82:	e8 f3 00 00 00       	call   f7a <fstat>
     e87:	89 c6                	mov    %eax,%esi
  close(fd);
     e89:	89 1c 24             	mov    %ebx,(%esp)
     e8c:	e8 b9 00 00 00       	call   f4a <close>
  return r;
     e91:	83 c4 10             	add    $0x10,%esp
     e94:	89 f0                	mov    %esi,%eax
}
     e96:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e99:	5b                   	pop    %ebx
     e9a:	5e                   	pop    %esi
     e9b:	5d                   	pop    %ebp
     e9c:	c3                   	ret    
     e9d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
     ea0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     ea5:	eb ef                	jmp    e96 <stat+0x36>
     ea7:	89 f6                	mov    %esi,%esi
     ea9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000eb0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
     eb0:	55                   	push   %ebp
     eb1:	89 e5                	mov    %esp,%ebp
     eb3:	53                   	push   %ebx
     eb4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     eb7:	0f be 11             	movsbl (%ecx),%edx
     eba:	8d 42 d0             	lea    -0x30(%edx),%eax
     ebd:	3c 09                	cmp    $0x9,%al
     ebf:	b8 00 00 00 00       	mov    $0x0,%eax
     ec4:	77 1f                	ja     ee5 <atoi+0x35>
     ec6:	8d 76 00             	lea    0x0(%esi),%esi
     ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     ed0:	8d 04 80             	lea    (%eax,%eax,4),%eax
     ed3:	83 c1 01             	add    $0x1,%ecx
     ed6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     eda:	0f be 11             	movsbl (%ecx),%edx
     edd:	8d 5a d0             	lea    -0x30(%edx),%ebx
     ee0:	80 fb 09             	cmp    $0x9,%bl
     ee3:	76 eb                	jbe    ed0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
     ee5:	5b                   	pop    %ebx
     ee6:	5d                   	pop    %ebp
     ee7:	c3                   	ret    
     ee8:	90                   	nop
     ee9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ef0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     ef0:	55                   	push   %ebp
     ef1:	89 e5                	mov    %esp,%ebp
     ef3:	56                   	push   %esi
     ef4:	53                   	push   %ebx
     ef5:	8b 5d 10             	mov    0x10(%ebp),%ebx
     ef8:	8b 45 08             	mov    0x8(%ebp),%eax
     efb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     efe:	85 db                	test   %ebx,%ebx
     f00:	7e 14                	jle    f16 <memmove+0x26>
     f02:	31 d2                	xor    %edx,%edx
     f04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     f08:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     f0c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     f0f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     f12:	39 da                	cmp    %ebx,%edx
     f14:	75 f2                	jne    f08 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
     f16:	5b                   	pop    %ebx
     f17:	5e                   	pop    %esi
     f18:	5d                   	pop    %ebp
     f19:	c3                   	ret    

00000f1a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     f1a:	b8 01 00 00 00       	mov    $0x1,%eax
     f1f:	cd 40                	int    $0x40
     f21:	c3                   	ret    

00000f22 <exit>:
SYSCALL(exit)
     f22:	b8 02 00 00 00       	mov    $0x2,%eax
     f27:	cd 40                	int    $0x40
     f29:	c3                   	ret    

00000f2a <wait>:
SYSCALL(wait)
     f2a:	b8 03 00 00 00       	mov    $0x3,%eax
     f2f:	cd 40                	int    $0x40
     f31:	c3                   	ret    

00000f32 <pipe>:
SYSCALL(pipe)
     f32:	b8 04 00 00 00       	mov    $0x4,%eax
     f37:	cd 40                	int    $0x40
     f39:	c3                   	ret    

00000f3a <read>:
SYSCALL(read)
     f3a:	b8 05 00 00 00       	mov    $0x5,%eax
     f3f:	cd 40                	int    $0x40
     f41:	c3                   	ret    

00000f42 <write>:
SYSCALL(write)
     f42:	b8 10 00 00 00       	mov    $0x10,%eax
     f47:	cd 40                	int    $0x40
     f49:	c3                   	ret    

00000f4a <close>:
SYSCALL(close)
     f4a:	b8 15 00 00 00       	mov    $0x15,%eax
     f4f:	cd 40                	int    $0x40
     f51:	c3                   	ret    

00000f52 <kill>:
SYSCALL(kill)
     f52:	b8 06 00 00 00       	mov    $0x6,%eax
     f57:	cd 40                	int    $0x40
     f59:	c3                   	ret    

00000f5a <exec>:
SYSCALL(exec)
     f5a:	b8 07 00 00 00       	mov    $0x7,%eax
     f5f:	cd 40                	int    $0x40
     f61:	c3                   	ret    

00000f62 <open>:
SYSCALL(open)
     f62:	b8 0f 00 00 00       	mov    $0xf,%eax
     f67:	cd 40                	int    $0x40
     f69:	c3                   	ret    

00000f6a <mknod>:
SYSCALL(mknod)
     f6a:	b8 11 00 00 00       	mov    $0x11,%eax
     f6f:	cd 40                	int    $0x40
     f71:	c3                   	ret    

00000f72 <unlink>:
SYSCALL(unlink)
     f72:	b8 12 00 00 00       	mov    $0x12,%eax
     f77:	cd 40                	int    $0x40
     f79:	c3                   	ret    

00000f7a <fstat>:
SYSCALL(fstat)
     f7a:	b8 08 00 00 00       	mov    $0x8,%eax
     f7f:	cd 40                	int    $0x40
     f81:	c3                   	ret    

00000f82 <link>:
SYSCALL(link)
     f82:	b8 13 00 00 00       	mov    $0x13,%eax
     f87:	cd 40                	int    $0x40
     f89:	c3                   	ret    

00000f8a <mkdir>:
SYSCALL(mkdir)
     f8a:	b8 14 00 00 00       	mov    $0x14,%eax
     f8f:	cd 40                	int    $0x40
     f91:	c3                   	ret    

00000f92 <chdir>:
SYSCALL(chdir)
     f92:	b8 09 00 00 00       	mov    $0x9,%eax
     f97:	cd 40                	int    $0x40
     f99:	c3                   	ret    

00000f9a <dup>:
SYSCALL(dup)
     f9a:	b8 0a 00 00 00       	mov    $0xa,%eax
     f9f:	cd 40                	int    $0x40
     fa1:	c3                   	ret    

00000fa2 <getpid>:
SYSCALL(getpid)
     fa2:	b8 0b 00 00 00       	mov    $0xb,%eax
     fa7:	cd 40                	int    $0x40
     fa9:	c3                   	ret    

00000faa <sbrk>:
SYSCALL(sbrk)
     faa:	b8 0c 00 00 00       	mov    $0xc,%eax
     faf:	cd 40                	int    $0x40
     fb1:	c3                   	ret    

00000fb2 <sleep>:
SYSCALL(sleep)
     fb2:	b8 0d 00 00 00       	mov    $0xd,%eax
     fb7:	cd 40                	int    $0x40
     fb9:	c3                   	ret    

00000fba <uptime>:
SYSCALL(uptime)
     fba:	b8 0e 00 00 00       	mov    $0xe,%eax
     fbf:	cd 40                	int    $0x40
     fc1:	c3                   	ret    
     fc2:	66 90                	xchg   %ax,%ax
     fc4:	66 90                	xchg   %ax,%ax
     fc6:	66 90                	xchg   %ax,%ax
     fc8:	66 90                	xchg   %ax,%ax
     fca:	66 90                	xchg   %ax,%ax
     fcc:	66 90                	xchg   %ax,%ax
     fce:	66 90                	xchg   %ax,%ax

00000fd0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     fd0:	55                   	push   %ebp
     fd1:	89 e5                	mov    %esp,%ebp
     fd3:	57                   	push   %edi
     fd4:	56                   	push   %esi
     fd5:	53                   	push   %ebx
     fd6:	89 c6                	mov    %eax,%esi
     fd8:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     fdb:	8b 5d 08             	mov    0x8(%ebp),%ebx
     fde:	85 db                	test   %ebx,%ebx
     fe0:	74 7e                	je     1060 <printint+0x90>
     fe2:	89 d0                	mov    %edx,%eax
     fe4:	c1 e8 1f             	shr    $0x1f,%eax
     fe7:	84 c0                	test   %al,%al
     fe9:	74 75                	je     1060 <printint+0x90>
    neg = 1;
    x = -xx;
     feb:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
     fed:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
     ff4:	f7 d8                	neg    %eax
     ff6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
     ff9:	31 ff                	xor    %edi,%edi
     ffb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     ffe:	89 ce                	mov    %ecx,%esi
    1000:	eb 08                	jmp    100a <printint+0x3a>
    1002:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1008:	89 cf                	mov    %ecx,%edi
    100a:	31 d2                	xor    %edx,%edx
    100c:	8d 4f 01             	lea    0x1(%edi),%ecx
    100f:	f7 f6                	div    %esi
    1011:	0f b6 92 80 14 00 00 	movzbl 0x1480(%edx),%edx
  }while((x /= base) != 0);
    1018:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    101a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    101d:	75 e9                	jne    1008 <printint+0x38>
  if(neg)
    101f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    1022:	8b 75 c0             	mov    -0x40(%ebp),%esi
    1025:	85 c0                	test   %eax,%eax
    1027:	74 08                	je     1031 <printint+0x61>
    buf[i++] = '-';
    1029:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    102e:	8d 4f 02             	lea    0x2(%edi),%ecx
    1031:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
    1035:	8d 76 00             	lea    0x0(%esi),%esi
    1038:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    103b:	83 ec 04             	sub    $0x4,%esp
    103e:	83 ef 01             	sub    $0x1,%edi
    1041:	6a 01                	push   $0x1
    1043:	53                   	push   %ebx
    1044:	56                   	push   %esi
    1045:	88 45 d7             	mov    %al,-0x29(%ebp)
    1048:	e8 f5 fe ff ff       	call   f42 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    104d:	83 c4 10             	add    $0x10,%esp
    1050:	39 df                	cmp    %ebx,%edi
    1052:	75 e4                	jne    1038 <printint+0x68>
    putc(fd, buf[i]);
}
    1054:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1057:	5b                   	pop    %ebx
    1058:	5e                   	pop    %esi
    1059:	5f                   	pop    %edi
    105a:	5d                   	pop    %ebp
    105b:	c3                   	ret    
    105c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    1060:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    1062:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    1069:	eb 8b                	jmp    ff6 <printint+0x26>
    106b:	90                   	nop
    106c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001070 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1070:	55                   	push   %ebp
    1071:	89 e5                	mov    %esp,%ebp
    1073:	57                   	push   %edi
    1074:	56                   	push   %esi
    1075:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1076:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1079:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    107c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    107f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1082:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1085:	0f b6 1e             	movzbl (%esi),%ebx
    1088:	83 c6 01             	add    $0x1,%esi
    108b:	84 db                	test   %bl,%bl
    108d:	0f 84 b0 00 00 00    	je     1143 <printf+0xd3>
    1093:	31 d2                	xor    %edx,%edx
    1095:	eb 39                	jmp    10d0 <printf+0x60>
    1097:	89 f6                	mov    %esi,%esi
    1099:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    10a0:	83 f8 25             	cmp    $0x25,%eax
    10a3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    10a6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    10ab:	74 18                	je     10c5 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    10ad:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    10b0:	83 ec 04             	sub    $0x4,%esp
    10b3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    10b6:	6a 01                	push   $0x1
    10b8:	50                   	push   %eax
    10b9:	57                   	push   %edi
    10ba:	e8 83 fe ff ff       	call   f42 <write>
    10bf:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    10c2:	83 c4 10             	add    $0x10,%esp
    10c5:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    10c8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    10cc:	84 db                	test   %bl,%bl
    10ce:	74 73                	je     1143 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
    10d0:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    10d2:	0f be cb             	movsbl %bl,%ecx
    10d5:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    10d8:	74 c6                	je     10a0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    10da:	83 fa 25             	cmp    $0x25,%edx
    10dd:	75 e6                	jne    10c5 <printf+0x55>
      if(c == 'd'){
    10df:	83 f8 64             	cmp    $0x64,%eax
    10e2:	0f 84 f8 00 00 00    	je     11e0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    10e8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    10ee:	83 f9 70             	cmp    $0x70,%ecx
    10f1:	74 5d                	je     1150 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    10f3:	83 f8 73             	cmp    $0x73,%eax
    10f6:	0f 84 84 00 00 00    	je     1180 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    10fc:	83 f8 63             	cmp    $0x63,%eax
    10ff:	0f 84 ea 00 00 00    	je     11ef <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1105:	83 f8 25             	cmp    $0x25,%eax
    1108:	0f 84 c2 00 00 00    	je     11d0 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    110e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1111:	83 ec 04             	sub    $0x4,%esp
    1114:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1118:	6a 01                	push   $0x1
    111a:	50                   	push   %eax
    111b:	57                   	push   %edi
    111c:	e8 21 fe ff ff       	call   f42 <write>
    1121:	83 c4 0c             	add    $0xc,%esp
    1124:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    1127:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    112a:	6a 01                	push   $0x1
    112c:	50                   	push   %eax
    112d:	57                   	push   %edi
    112e:	83 c6 01             	add    $0x1,%esi
    1131:	e8 0c fe ff ff       	call   f42 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1136:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    113a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    113d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    113f:	84 db                	test   %bl,%bl
    1141:	75 8d                	jne    10d0 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1143:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1146:	5b                   	pop    %ebx
    1147:	5e                   	pop    %esi
    1148:	5f                   	pop    %edi
    1149:	5d                   	pop    %ebp
    114a:	c3                   	ret    
    114b:	90                   	nop
    114c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    1150:	83 ec 0c             	sub    $0xc,%esp
    1153:	b9 10 00 00 00       	mov    $0x10,%ecx
    1158:	6a 00                	push   $0x0
    115a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    115d:	89 f8                	mov    %edi,%eax
    115f:	8b 13                	mov    (%ebx),%edx
    1161:	e8 6a fe ff ff       	call   fd0 <printint>
        ap++;
    1166:	89 d8                	mov    %ebx,%eax
    1168:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    116b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
    116d:	83 c0 04             	add    $0x4,%eax
    1170:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1173:	e9 4d ff ff ff       	jmp    10c5 <printf+0x55>
    1178:	90                   	nop
    1179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    1180:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1183:	8b 18                	mov    (%eax),%ebx
        ap++;
    1185:	83 c0 04             	add    $0x4,%eax
    1188:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
    118b:	b8 78 14 00 00       	mov    $0x1478,%eax
    1190:	85 db                	test   %ebx,%ebx
    1192:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
    1195:	0f b6 03             	movzbl (%ebx),%eax
    1198:	84 c0                	test   %al,%al
    119a:	74 23                	je     11bf <printf+0x14f>
    119c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11a0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    11a3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    11a6:	83 ec 04             	sub    $0x4,%esp
    11a9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    11ab:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    11ae:	50                   	push   %eax
    11af:	57                   	push   %edi
    11b0:	e8 8d fd ff ff       	call   f42 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    11b5:	0f b6 03             	movzbl (%ebx),%eax
    11b8:	83 c4 10             	add    $0x10,%esp
    11bb:	84 c0                	test   %al,%al
    11bd:	75 e1                	jne    11a0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    11bf:	31 d2                	xor    %edx,%edx
    11c1:	e9 ff fe ff ff       	jmp    10c5 <printf+0x55>
    11c6:	8d 76 00             	lea    0x0(%esi),%esi
    11c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    11d0:	83 ec 04             	sub    $0x4,%esp
    11d3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    11d6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    11d9:	6a 01                	push   $0x1
    11db:	e9 4c ff ff ff       	jmp    112c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    11e0:	83 ec 0c             	sub    $0xc,%esp
    11e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    11e8:	6a 01                	push   $0x1
    11ea:	e9 6b ff ff ff       	jmp    115a <printf+0xea>
    11ef:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    11f2:	83 ec 04             	sub    $0x4,%esp
    11f5:	8b 03                	mov    (%ebx),%eax
    11f7:	6a 01                	push   $0x1
    11f9:	88 45 e4             	mov    %al,-0x1c(%ebp)
    11fc:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    11ff:	50                   	push   %eax
    1200:	57                   	push   %edi
    1201:	e8 3c fd ff ff       	call   f42 <write>
    1206:	e9 5b ff ff ff       	jmp    1166 <printf+0xf6>
    120b:	66 90                	xchg   %ax,%ax
    120d:	66 90                	xchg   %ax,%ax
    120f:	90                   	nop

00001210 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1210:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1211:	a1 04 1b 00 00       	mov    0x1b04,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    1216:	89 e5                	mov    %esp,%ebp
    1218:	57                   	push   %edi
    1219:	56                   	push   %esi
    121a:	53                   	push   %ebx
    121b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    121e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    1220:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1223:	39 c8                	cmp    %ecx,%eax
    1225:	73 19                	jae    1240 <free+0x30>
    1227:	89 f6                	mov    %esi,%esi
    1229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    1230:	39 d1                	cmp    %edx,%ecx
    1232:	72 1c                	jb     1250 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1234:	39 d0                	cmp    %edx,%eax
    1236:	73 18                	jae    1250 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    1238:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    123a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    123c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    123e:	72 f0                	jb     1230 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1240:	39 d0                	cmp    %edx,%eax
    1242:	72 f4                	jb     1238 <free+0x28>
    1244:	39 d1                	cmp    %edx,%ecx
    1246:	73 f0                	jae    1238 <free+0x28>
    1248:	90                   	nop
    1249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    1250:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1253:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1256:	39 d7                	cmp    %edx,%edi
    1258:	74 19                	je     1273 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    125a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    125d:	8b 50 04             	mov    0x4(%eax),%edx
    1260:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1263:	39 f1                	cmp    %esi,%ecx
    1265:	74 23                	je     128a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1267:	89 08                	mov    %ecx,(%eax)
  freep = p;
    1269:	a3 04 1b 00 00       	mov    %eax,0x1b04
}
    126e:	5b                   	pop    %ebx
    126f:	5e                   	pop    %esi
    1270:	5f                   	pop    %edi
    1271:	5d                   	pop    %ebp
    1272:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    1273:	03 72 04             	add    0x4(%edx),%esi
    1276:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1279:	8b 10                	mov    (%eax),%edx
    127b:	8b 12                	mov    (%edx),%edx
    127d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1280:	8b 50 04             	mov    0x4(%eax),%edx
    1283:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1286:	39 f1                	cmp    %esi,%ecx
    1288:	75 dd                	jne    1267 <free+0x57>
    p->s.size += bp->s.size;
    128a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    128d:	a3 04 1b 00 00       	mov    %eax,0x1b04
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    1292:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1295:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1298:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    129a:	5b                   	pop    %ebx
    129b:	5e                   	pop    %esi
    129c:	5f                   	pop    %edi
    129d:	5d                   	pop    %ebp
    129e:	c3                   	ret    
    129f:	90                   	nop

000012a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    12a0:	55                   	push   %ebp
    12a1:	89 e5                	mov    %esp,%ebp
    12a3:	57                   	push   %edi
    12a4:	56                   	push   %esi
    12a5:	53                   	push   %ebx
    12a6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    12a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    12ac:	8b 15 04 1b 00 00    	mov    0x1b04,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    12b2:	8d 78 07             	lea    0x7(%eax),%edi
    12b5:	c1 ef 03             	shr    $0x3,%edi
    12b8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    12bb:	85 d2                	test   %edx,%edx
    12bd:	0f 84 a3 00 00 00    	je     1366 <malloc+0xc6>
    12c3:	8b 02                	mov    (%edx),%eax
    12c5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    12c8:	39 cf                	cmp    %ecx,%edi
    12ca:	76 74                	jbe    1340 <malloc+0xa0>
    12cc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    12d2:	be 00 10 00 00       	mov    $0x1000,%esi
    12d7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    12de:	0f 43 f7             	cmovae %edi,%esi
    12e1:	ba 00 80 00 00       	mov    $0x8000,%edx
    12e6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    12ec:	0f 46 da             	cmovbe %edx,%ebx
    12ef:	eb 10                	jmp    1301 <malloc+0x61>
    12f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    12f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    12fa:	8b 48 04             	mov    0x4(%eax),%ecx
    12fd:	39 cf                	cmp    %ecx,%edi
    12ff:	76 3f                	jbe    1340 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1301:	39 05 04 1b 00 00    	cmp    %eax,0x1b04
    1307:	89 c2                	mov    %eax,%edx
    1309:	75 ed                	jne    12f8 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    130b:	83 ec 0c             	sub    $0xc,%esp
    130e:	53                   	push   %ebx
    130f:	e8 96 fc ff ff       	call   faa <sbrk>
  if(p == (char*)-1)
    1314:	83 c4 10             	add    $0x10,%esp
    1317:	83 f8 ff             	cmp    $0xffffffff,%eax
    131a:	74 1c                	je     1338 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    131c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    131f:	83 ec 0c             	sub    $0xc,%esp
    1322:	83 c0 08             	add    $0x8,%eax
    1325:	50                   	push   %eax
    1326:	e8 e5 fe ff ff       	call   1210 <free>
  return freep;
    132b:	8b 15 04 1b 00 00    	mov    0x1b04,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    1331:	83 c4 10             	add    $0x10,%esp
    1334:	85 d2                	test   %edx,%edx
    1336:	75 c0                	jne    12f8 <malloc+0x58>
        return 0;
    1338:	31 c0                	xor    %eax,%eax
    133a:	eb 1c                	jmp    1358 <malloc+0xb8>
    133c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    1340:	39 cf                	cmp    %ecx,%edi
    1342:	74 1c                	je     1360 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    1344:	29 f9                	sub    %edi,%ecx
    1346:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1349:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    134c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    134f:	89 15 04 1b 00 00    	mov    %edx,0x1b04
      return (void*)(p + 1);
    1355:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    1358:	8d 65 f4             	lea    -0xc(%ebp),%esp
    135b:	5b                   	pop    %ebx
    135c:	5e                   	pop    %esi
    135d:	5f                   	pop    %edi
    135e:	5d                   	pop    %ebp
    135f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    1360:	8b 08                	mov    (%eax),%ecx
    1362:	89 0a                	mov    %ecx,(%edx)
    1364:	eb e9                	jmp    134f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    1366:	c7 05 04 1b 00 00 08 	movl   $0x1b08,0x1b04
    136d:	1b 00 00 
    1370:	c7 05 08 1b 00 00 08 	movl   $0x1b08,0x1b08
    1377:	1b 00 00 
    base.s.size = 0;
    137a:	b8 08 1b 00 00       	mov    $0x1b08,%eax
    137f:	c7 05 0c 1b 00 00 00 	movl   $0x0,0x1b0c
    1386:	00 00 00 
    1389:	e9 3e ff ff ff       	jmp    12cc <malloc+0x2c>
