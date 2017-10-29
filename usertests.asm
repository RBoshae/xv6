
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 0e 5a 00 00       	push   $0x5a0e
      16:	6a 01                	push   $0x1
      18:	e8 e3 46 00 00       	call   4700 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	5a                   	pop    %edx
      1e:	59                   	pop    %ecx
      1f:	6a 00                	push   $0x0
      21:	68 22 5a 00 00       	push   $0x5a22
      26:	e8 c7 45 00 00       	call   45f2 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 1d                	js     4f <main+0x4f>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	50                   	push   %eax
      33:	50                   	push   %eax
      34:	68 8c 61 00 00       	push   $0x618c
      39:	6a 01                	push   $0x1
      3b:	e8 c0 46 00 00       	call   4700 <printf>
    exit(0);
      40:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      47:	e8 66 45 00 00       	call   45b2 <exit>
      4c:	83 c4 10             	add    $0x10,%esp
  }
  close(open("usertests.ran", O_CREATE));
      4f:	83 ec 08             	sub    $0x8,%esp
      52:	68 00 02 00 00       	push   $0x200
      57:	68 22 5a 00 00       	push   $0x5a22
      5c:	e8 91 45 00 00       	call   45f2 <open>
      61:	89 04 24             	mov    %eax,(%esp)
      64:	e8 71 45 00 00       	call   45da <close>

  argptest();
      69:	e8 62 42 00 00       	call   42d0 <argptest>
  createdelete();
      6e:	e8 fd 14 00 00       	call   1570 <createdelete>
  linkunlink();
      73:	e8 28 20 00 00       	call   20a0 <linkunlink>
  concreate();
      78:	e8 23 1c 00 00       	call   1ca0 <concreate>
  fourfiles();
      7d:	e8 8e 12 00 00       	call   1310 <fourfiles>
  sharedfd();
      82:	e8 b9 10 00 00       	call   1140 <sharedfd>

  bigargtest();
      87:	e8 74 3e 00 00       	call   3f00 <bigargtest>
  bigwrite();
      8c:	e8 6f 2c 00 00       	call   2d00 <bigwrite>
  bigargtest();
      91:	e8 6a 3e 00 00       	call   3f00 <bigargtest>
  bsstest();
      96:	e8 e5 3d 00 00       	call   3e80 <bsstest>
  sbrktest();
      9b:	e8 40 38 00 00       	call   38e0 <sbrktest>
  validatetest();
      a0:	e8 0b 3d 00 00       	call   3db0 <validatetest>

  opentest();
      a5:	e8 66 04 00 00       	call   510 <opentest>
  writetest();
      aa:	e8 21 05 00 00       	call   5d0 <writetest>
  writetest1();
      af:	e8 4c 07 00 00       	call   800 <writetest1>
  createtest();
      b4:	e8 67 09 00 00       	call   a20 <createtest>

  openiputtest();
      b9:	e8 02 03 00 00       	call   3c0 <openiputtest>
  exitiputtest();
      be:	e8 ad 01 00 00       	call   270 <exitiputtest>
  iputtest();
      c3:	e8 68 00 00 00       	call   130 <iputtest>

  mem();
      c8:	e8 83 0f 00 00       	call   1050 <mem>
  pipe1();
      cd:	e8 9e 0b 00 00       	call   c70 <pipe1>
  preempt();
      d2:	e8 79 0d 00 00       	call   e50 <preempt>
  exitwait();
      d7:	e8 c4 0e 00 00       	call   fa0 <exitwait>

  rmdot();
      dc:	e8 ef 30 00 00       	call   31d0 <rmdot>
  fourteen();
      e1:	e8 3a 2f 00 00       	call   3020 <fourteen>
  bigfile();
      e6:	e8 15 2d 00 00       	call   2e00 <bigfile>
  subdir();
      eb:	e8 70 22 00 00       	call   2360 <subdir>
  linktest();
      f0:	e8 1b 19 00 00       	call   1a10 <linktest>
  unlinkread();
      f5:	e8 26 17 00 00       	call   1820 <unlinkread>
  dirfile();
      fa:	e8 e1 32 00 00       	call   33e0 <dirfile>
  iref();
      ff:	e8 8c 35 00 00       	call   3690 <iref>
  forktest();
     104:	e8 c7 36 00 00       	call   37d0 <forktest>
  bigdir(); // slow
     109:	e8 d2 20 00 00       	call   21e0 <bigdir>

  uio();
     10e:	e8 2d 41 00 00       	call   4240 <uio>

  exectest();
     113:	e8 f8 0a 00 00       	call   c10 <exectest>

  exit(0);
     118:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     11f:	e8 8e 44 00 00       	call   45b2 <exit>
}
     124:	8b 4d fc             	mov    -0x4(%ebp),%ecx
     127:	31 c0                	xor    %eax,%eax
     129:	c9                   	leave  
     12a:	8d 61 fc             	lea    -0x4(%ecx),%esp
     12d:	c3                   	ret    
     12e:	66 90                	xchg   %ax,%ax

00000130 <iputtest>:
int stdout = 1;

// does chdir() call iput(p->cwd) in a transaction?
void
iputtest(void)
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     136:	68 b4 4a 00 00       	push   $0x4ab4
     13b:	ff 35 00 6b 00 00    	pushl  0x6b00
     141:	e8 ba 45 00 00       	call   4700 <printf>

  if(mkdir("iputdir") < 0){
     146:	c7 04 24 47 4a 00 00 	movl   $0x4a47,(%esp)
     14d:	e8 c8 44 00 00       	call   461a <mkdir>
     152:	83 c4 10             	add    $0x10,%esp
     155:	85 c0                	test   %eax,%eax
     157:	0f 88 8b 00 00 00    	js     1e8 <iputtest+0xb8>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }
  if(chdir("iputdir") < 0){
     15d:	83 ec 0c             	sub    $0xc,%esp
     160:	68 47 4a 00 00       	push   $0x4a47
     165:	e8 b8 44 00 00       	call   4622 <chdir>
     16a:	83 c4 10             	add    $0x10,%esp
     16d:	85 c0                	test   %eax,%eax
     16f:	0f 88 9b 00 00 00    	js     210 <iputtest+0xe0>
    printf(stdout, "chdir iputdir failed\n");
    exit(0);
  }
  if(unlink("../iputdir") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 44 4a 00 00       	push   $0x4a44
     17d:	e8 80 44 00 00       	call   4602 <unlink>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	0f 88 b3 00 00 00    	js     240 <iputtest+0x110>
    printf(stdout, "unlink ../iputdir failed\n");
    exit(0);
  }
  if(chdir("/") < 0){
     18d:	83 ec 0c             	sub    $0xc,%esp
     190:	68 69 4a 00 00       	push   $0x4a69
     195:	e8 88 44 00 00       	call   4622 <chdir>
     19a:	83 c4 10             	add    $0x10,%esp
     19d:	85 c0                	test   %eax,%eax
     19f:	78 1f                	js     1c0 <iputtest+0x90>
    printf(stdout, "chdir / failed\n");
    exit(0);
  }
  printf(stdout, "iput test ok\n");
     1a1:	83 ec 08             	sub    $0x8,%esp
     1a4:	68 ec 4a 00 00       	push   $0x4aec
     1a9:	ff 35 00 6b 00 00    	pushl  0x6b00
     1af:	e8 4c 45 00 00       	call   4700 <printf>
}
     1b4:	83 c4 10             	add    $0x10,%esp
     1b7:	c9                   	leave  
     1b8:	c3                   	ret    
     1b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
    exit(0);
  }
  if(chdir("/") < 0){
    printf(stdout, "chdir / failed\n");
     1c0:	83 ec 08             	sub    $0x8,%esp
     1c3:	68 6b 4a 00 00       	push   $0x4a6b
     1c8:	ff 35 00 6b 00 00    	pushl  0x6b00
     1ce:	e8 2d 45 00 00       	call   4700 <printf>
    exit(0);
     1d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1da:	e8 d3 43 00 00       	call   45b2 <exit>
     1df:	83 c4 10             	add    $0x10,%esp
     1e2:	eb bd                	jmp    1a1 <iputtest+0x71>
     1e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
iputtest(void)
{
  printf(stdout, "iput test\n");

  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
     1e8:	83 ec 08             	sub    $0x8,%esp
     1eb:	68 20 4a 00 00       	push   $0x4a20
     1f0:	ff 35 00 6b 00 00    	pushl  0x6b00
     1f6:	e8 05 45 00 00       	call   4700 <printf>
    exit(0);
     1fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     202:	e8 ab 43 00 00       	call   45b2 <exit>
     207:	83 c4 10             	add    $0x10,%esp
     20a:	e9 4e ff ff ff       	jmp    15d <iputtest+0x2d>
     20f:	90                   	nop
  }
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
     210:	83 ec 08             	sub    $0x8,%esp
     213:	68 2e 4a 00 00       	push   $0x4a2e
     218:	ff 35 00 6b 00 00    	pushl  0x6b00
     21e:	e8 dd 44 00 00       	call   4700 <printf>
    exit(0);
     223:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     22a:	e8 83 43 00 00       	call   45b2 <exit>
     22f:	83 c4 10             	add    $0x10,%esp
     232:	e9 3e ff ff ff       	jmp    175 <iputtest+0x45>
     237:	89 f6                	mov    %esi,%esi
     239:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  }
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
     240:	83 ec 08             	sub    $0x8,%esp
     243:	68 4f 4a 00 00       	push   $0x4a4f
     248:	ff 35 00 6b 00 00    	pushl  0x6b00
     24e:	e8 ad 44 00 00       	call   4700 <printf>
    exit(0);
     253:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     25a:	e8 53 43 00 00       	call   45b2 <exit>
     25f:	83 c4 10             	add    $0x10,%esp
     262:	e9 26 ff ff ff       	jmp    18d <iputtest+0x5d>
     267:	89 f6                	mov    %esi,%esi
     269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000270 <exitiputtest>:
}

// does exit(0) call iput(p->cwd) in a transaction?
void
exitiputtest(void)
{
     270:	55                   	push   %ebp
     271:	89 e5                	mov    %esp,%ebp
     273:	83 ec 20             	sub    $0x20,%esp
  int pid;
  int status; // Lab 1 Part 1b. -RB

  printf(stdout, "exitiput test\n");
     276:	68 7b 4a 00 00       	push   $0x4a7b
     27b:	ff 35 00 6b 00 00    	pushl  0x6b00
     281:	e8 7a 44 00 00       	call   4700 <printf>

  pid = fork();
     286:	e8 1f 43 00 00       	call   45aa <fork>
  if(pid < 0){
     28b:	83 c4 10             	add    $0x10,%esp
     28e:	85 c0                	test   %eax,%eax
     290:	78 7e                	js     310 <exitiputtest+0xa0>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
     292:	74 2c                	je     2c0 <exitiputtest+0x50>
      printf(stdout, "unlink ../iputdir failed\n");
      exit(0);
    }
    exit(0);
  }
  wait(&status);
     294:	8d 45 f4             	lea    -0xc(%ebp),%eax
     297:	83 ec 0c             	sub    $0xc,%esp
     29a:	50                   	push   %eax
     29b:	e8 1a 43 00 00       	call   45ba <wait>
  printf(stdout, "exitiput test ok\n");
     2a0:	58                   	pop    %eax
     2a1:	5a                   	pop    %edx
     2a2:	68 9e 4a 00 00       	push   $0x4a9e
     2a7:	ff 35 00 6b 00 00    	pushl  0x6b00
     2ad:	e8 4e 44 00 00       	call   4700 <printf>
}
     2b2:	83 c4 10             	add    $0x10,%esp
     2b5:	c9                   	leave  
     2b6:	c3                   	ret    
     2b7:	89 f6                	mov    %esi,%esi
     2b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  if(pid < 0){
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
     2c0:	83 ec 0c             	sub    $0xc,%esp
     2c3:	68 47 4a 00 00       	push   $0x4a47
     2c8:	e8 4d 43 00 00       	call   461a <mkdir>
     2cd:	83 c4 10             	add    $0x10,%esp
     2d0:	85 c0                	test   %eax,%eax
     2d2:	0f 88 b8 00 00 00    	js     390 <exitiputtest+0x120>
      printf(stdout, "mkdir failed\n");
      exit(0);
    }
    if(chdir("iputdir") < 0){
     2d8:	83 ec 0c             	sub    $0xc,%esp
     2db:	68 47 4a 00 00       	push   $0x4a47
     2e0:	e8 3d 43 00 00       	call   4622 <chdir>
     2e5:	83 c4 10             	add    $0x10,%esp
     2e8:	85 c0                	test   %eax,%eax
     2ea:	78 7c                	js     368 <exitiputtest+0xf8>
      printf(stdout, "child chdir failed\n");
      exit(0);
    }
    if(unlink("../iputdir") < 0){
     2ec:	83 ec 0c             	sub    $0xc,%esp
     2ef:	68 44 4a 00 00       	push   $0x4a44
     2f4:	e8 09 43 00 00       	call   4602 <unlink>
     2f9:	83 c4 10             	add    $0x10,%esp
     2fc:	85 c0                	test   %eax,%eax
     2fe:	78 40                	js     340 <exitiputtest+0xd0>
      printf(stdout, "unlink ../iputdir failed\n");
      exit(0);
    }
    exit(0);
     300:	83 ec 0c             	sub    $0xc,%esp
     303:	6a 00                	push   $0x0
     305:	e8 a8 42 00 00       	call   45b2 <exit>
     30a:	83 c4 10             	add    $0x10,%esp
     30d:	eb 85                	jmp    294 <exitiputtest+0x24>
     30f:	90                   	nop

  printf(stdout, "exitiput test\n");

  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     310:	83 ec 08             	sub    $0x8,%esp
     313:	68 61 59 00 00       	push   $0x5961
     318:	ff 35 00 6b 00 00    	pushl  0x6b00
     31e:	e8 dd 43 00 00       	call   4700 <printf>
    exit(0);
     323:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     32a:	e8 83 42 00 00       	call   45b2 <exit>
     32f:	83 c4 10             	add    $0x10,%esp
     332:	e9 5d ff ff ff       	jmp    294 <exitiputtest+0x24>
     337:	89 f6                	mov    %esi,%esi
     339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
      exit(0);
    }
    if(unlink("../iputdir") < 0){
      printf(stdout, "unlink ../iputdir failed\n");
     340:	83 ec 08             	sub    $0x8,%esp
     343:	68 4f 4a 00 00       	push   $0x4a4f
     348:	ff 35 00 6b 00 00    	pushl  0x6b00
     34e:	e8 ad 43 00 00       	call   4700 <printf>
      exit(0);
     353:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     35a:	e8 53 42 00 00       	call   45b2 <exit>
     35f:	83 c4 10             	add    $0x10,%esp
     362:	eb 9c                	jmp    300 <exitiputtest+0x90>
     364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
      exit(0);
    }
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
     368:	83 ec 08             	sub    $0x8,%esp
     36b:	68 8a 4a 00 00       	push   $0x4a8a
     370:	ff 35 00 6b 00 00    	pushl  0x6b00
     376:	e8 85 43 00 00       	call   4700 <printf>
      exit(0);
     37b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     382:	e8 2b 42 00 00       	call   45b2 <exit>
     387:	83 c4 10             	add    $0x10,%esp
     38a:	e9 5d ff ff ff       	jmp    2ec <exitiputtest+0x7c>
     38f:	90                   	nop
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
     390:	83 ec 08             	sub    $0x8,%esp
     393:	68 20 4a 00 00       	push   $0x4a20
     398:	ff 35 00 6b 00 00    	pushl  0x6b00
     39e:	e8 5d 43 00 00       	call   4700 <printf>
      exit(0);
     3a3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3aa:	e8 03 42 00 00       	call   45b2 <exit>
     3af:	83 c4 10             	add    $0x10,%esp
     3b2:	e9 21 ff ff ff       	jmp    2d8 <exitiputtest+0x68>
     3b7:	89 f6                	mov    %esi,%esi
     3b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003c0 <openiputtest>:
//      for(i = 0; i < 10000; i++)
//        yield();
//    }
void
openiputtest(void)
{
     3c0:	55                   	push   %ebp
     3c1:	89 e5                	mov    %esp,%ebp
     3c3:	83 ec 20             	sub    $0x20,%esp
  int pid;
  int status; // Lab 1 Part 1b. -RB

  printf(stdout, "openiput test\n");
     3c6:	68 b0 4a 00 00       	push   $0x4ab0
     3cb:	ff 35 00 6b 00 00    	pushl  0x6b00
     3d1:	e8 2a 43 00 00       	call   4700 <printf>
  if(mkdir("oidir") < 0){
     3d6:	c7 04 24 bf 4a 00 00 	movl   $0x4abf,(%esp)
     3dd:	e8 38 42 00 00       	call   461a <mkdir>
     3e2:	83 c4 10             	add    $0x10,%esp
     3e5:	85 c0                	test   %eax,%eax
     3e7:	0f 88 c3 00 00 00    	js     4b0 <openiputtest+0xf0>
    printf(stdout, "mkdir oidir failed\n");
    exit(0);
  }
  pid = fork();
     3ed:	e8 b8 41 00 00       	call   45aa <fork>
  if(pid < 0){
     3f2:	85 c0                	test   %eax,%eax
     3f4:	0f 88 e6 00 00 00    	js     4e0 <openiputtest+0x120>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
     3fa:	74 64                	je     460 <openiputtest+0xa0>
      printf(stdout, "open directory for write succeeded\n");
      exit(0);
    }
    exit(0);
  }
  sleep(1);
     3fc:	83 ec 0c             	sub    $0xc,%esp
     3ff:	6a 01                	push   $0x1
     401:	e8 3c 42 00 00       	call   4642 <sleep>
  if(unlink("oidir") != 0){
     406:	c7 04 24 bf 4a 00 00 	movl   $0x4abf,(%esp)
     40d:	e8 f0 41 00 00       	call   4602 <unlink>
     412:	83 c4 10             	add    $0x10,%esp
     415:	85 c0                	test   %eax,%eax
     417:	74 22                	je     43b <openiputtest+0x7b>
    printf(stdout, "unlink failed\n");
     419:	83 ec 08             	sub    $0x8,%esp
     41c:	68 d9 4a 00 00       	push   $0x4ad9
     421:	ff 35 00 6b 00 00    	pushl  0x6b00
     427:	e8 d4 42 00 00       	call   4700 <printf>
    exit(0);
     42c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     433:	e8 7a 41 00 00       	call   45b2 <exit>
     438:	83 c4 10             	add    $0x10,%esp
  }
  wait(&status);
     43b:	8d 45 f4             	lea    -0xc(%ebp),%eax
     43e:	83 ec 0c             	sub    $0xc,%esp
     441:	50                   	push   %eax
     442:	e8 73 41 00 00       	call   45ba <wait>
  printf(stdout, "openiput test ok\n");
     447:	58                   	pop    %eax
     448:	5a                   	pop    %edx
     449:	68 e8 4a 00 00       	push   $0x4ae8
     44e:	ff 35 00 6b 00 00    	pushl  0x6b00
     454:	e8 a7 42 00 00       	call   4700 <printf>
}
     459:	83 c4 10             	add    $0x10,%esp
     45c:	c9                   	leave  
     45d:	c3                   	ret    
     45e:	66 90                	xchg   %ax,%ax
  if(pid < 0){
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
    int fd = open("oidir", O_RDWR);
     460:	83 ec 08             	sub    $0x8,%esp
     463:	6a 02                	push   $0x2
     465:	68 bf 4a 00 00       	push   $0x4abf
     46a:	e8 83 41 00 00       	call   45f2 <open>
    if(fd >= 0){
     46f:	83 c4 10             	add    $0x10,%esp
     472:	85 c0                	test   %eax,%eax
     474:	78 22                	js     498 <openiputtest+0xd8>
      printf(stdout, "open directory for write succeeded\n");
     476:	83 ec 08             	sub    $0x8,%esp
     479:	68 44 5a 00 00       	push   $0x5a44
     47e:	ff 35 00 6b 00 00    	pushl  0x6b00
     484:	e8 77 42 00 00       	call   4700 <printf>
      exit(0);
     489:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     490:	e8 1d 41 00 00       	call   45b2 <exit>
     495:	83 c4 10             	add    $0x10,%esp
    }
    exit(0);
     498:	83 ec 0c             	sub    $0xc,%esp
     49b:	6a 00                	push   $0x0
     49d:	e8 10 41 00 00       	call   45b2 <exit>
     4a2:	83 c4 10             	add    $0x10,%esp
     4a5:	e9 52 ff ff ff       	jmp    3fc <openiputtest+0x3c>
     4aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  int pid;
  int status; // Lab 1 Part 1b. -RB

  printf(stdout, "openiput test\n");
  if(mkdir("oidir") < 0){
    printf(stdout, "mkdir oidir failed\n");
     4b0:	83 ec 08             	sub    $0x8,%esp
     4b3:	68 c5 4a 00 00       	push   $0x4ac5
     4b8:	ff 35 00 6b 00 00    	pushl  0x6b00
     4be:	e8 3d 42 00 00       	call   4700 <printf>
    exit(0);
     4c3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4ca:	e8 e3 40 00 00       	call   45b2 <exit>
     4cf:	83 c4 10             	add    $0x10,%esp
  }
  pid = fork();
     4d2:	e8 d3 40 00 00       	call   45aa <fork>
  if(pid < 0){
     4d7:	85 c0                	test   %eax,%eax
     4d9:	0f 89 1b ff ff ff    	jns    3fa <openiputtest+0x3a>
     4df:	90                   	nop
    printf(stdout, "fork failed\n");
     4e0:	83 ec 08             	sub    $0x8,%esp
     4e3:	68 61 59 00 00       	push   $0x5961
     4e8:	ff 35 00 6b 00 00    	pushl  0x6b00
     4ee:	e8 0d 42 00 00       	call   4700 <printf>
    exit(0);
     4f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4fa:	e8 b3 40 00 00       	call   45b2 <exit>
     4ff:	83 c4 10             	add    $0x10,%esp
     502:	e9 f5 fe ff ff       	jmp    3fc <openiputtest+0x3c>
     507:	89 f6                	mov    %esi,%esi
     509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000510 <opentest>:

// simple file system tests

void
opentest(void)
{
     510:	55                   	push   %ebp
     511:	89 e5                	mov    %esp,%ebp
     513:	53                   	push   %ebx
     514:	83 ec 0c             	sub    $0xc,%esp
  int fd;

  printf(stdout, "open test\n");
     517:	68 fa 4a 00 00       	push   $0x4afa
     51c:	ff 35 00 6b 00 00    	pushl  0x6b00
     522:	e8 d9 41 00 00       	call   4700 <printf>
  fd = open("echo", 0);
     527:	59                   	pop    %ecx
     528:	5b                   	pop    %ebx
     529:	6a 00                	push   $0x0
     52b:	68 05 4b 00 00       	push   $0x4b05
     530:	e8 bd 40 00 00       	call   45f2 <open>
  if(fd < 0){
     535:	83 c4 10             	add    $0x10,%esp
     538:	85 c0                	test   %eax,%eax
opentest(void)
{
  int fd;

  printf(stdout, "open test\n");
  fd = open("echo", 0);
     53a:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
     53c:	78 62                	js     5a0 <opentest+0x90>
    printf(stdout, "open echo failed!\n");
    exit(0);
  }
  close(fd);
     53e:	83 ec 0c             	sub    $0xc,%esp
     541:	53                   	push   %ebx
     542:	e8 93 40 00 00       	call   45da <close>
  fd = open("doesnotexist", 0);
     547:	58                   	pop    %eax
     548:	5a                   	pop    %edx
     549:	6a 00                	push   $0x0
     54b:	68 1d 4b 00 00       	push   $0x4b1d
     550:	e8 9d 40 00 00       	call   45f2 <open>
  if(fd >= 0){
     555:	83 c4 10             	add    $0x10,%esp
     558:	85 c0                	test   %eax,%eax
     55a:	78 22                	js     57e <opentest+0x6e>
    printf(stdout, "open doesnotexist succeeded!\n");
     55c:	83 ec 08             	sub    $0x8,%esp
     55f:	68 2a 4b 00 00       	push   $0x4b2a
     564:	ff 35 00 6b 00 00    	pushl  0x6b00
     56a:	e8 91 41 00 00       	call   4700 <printf>
    exit(0);
     56f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     576:	e8 37 40 00 00       	call   45b2 <exit>
     57b:	83 c4 10             	add    $0x10,%esp
  }
  printf(stdout, "open test ok\n");
     57e:	83 ec 08             	sub    $0x8,%esp
     581:	68 48 4b 00 00       	push   $0x4b48
     586:	ff 35 00 6b 00 00    	pushl  0x6b00
     58c:	e8 6f 41 00 00       	call   4700 <printf>
}
     591:	83 c4 10             	add    $0x10,%esp
     594:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     597:	c9                   	leave  
     598:	c3                   	ret    
     599:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  int fd;

  printf(stdout, "open test\n");
  fd = open("echo", 0);
  if(fd < 0){
    printf(stdout, "open echo failed!\n");
     5a0:	83 ec 08             	sub    $0x8,%esp
     5a3:	68 0a 4b 00 00       	push   $0x4b0a
     5a8:	ff 35 00 6b 00 00    	pushl  0x6b00
     5ae:	e8 4d 41 00 00       	call   4700 <printf>
    exit(0);
     5b3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     5ba:	e8 f3 3f 00 00       	call   45b2 <exit>
     5bf:	83 c4 10             	add    $0x10,%esp
     5c2:	e9 77 ff ff ff       	jmp    53e <opentest+0x2e>
     5c7:	89 f6                	mov    %esi,%esi
     5c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005d0 <writetest>:
  printf(stdout, "open test ok\n");
}

void
writetest(void)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	56                   	push   %esi
     5d4:	53                   	push   %ebx
  int fd;
  int i;

  printf(stdout, "small file test\n");
     5d5:	83 ec 08             	sub    $0x8,%esp
     5d8:	68 56 4b 00 00       	push   $0x4b56
     5dd:	ff 35 00 6b 00 00    	pushl  0x6b00
     5e3:	e8 18 41 00 00       	call   4700 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     5e8:	59                   	pop    %ecx
     5e9:	5b                   	pop    %ebx
     5ea:	68 02 02 00 00       	push   $0x202
     5ef:	68 67 4b 00 00       	push   $0x4b67
     5f4:	e8 f9 3f 00 00       	call   45f2 <open>
  if(fd >= 0){
     5f9:	83 c4 10             	add    $0x10,%esp
     5fc:	85 c0                	test   %eax,%eax
{
  int fd;
  int i;

  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
     5fe:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     600:	0f 88 9f 01 00 00    	js     7a5 <writetest+0x1d5>
    printf(stdout, "creat small succeeded; ok\n");
     606:	83 ec 08             	sub    $0x8,%esp
     609:	68 6d 4b 00 00       	push   $0x4b6d
     60e:	ff 35 00 6b 00 00    	pushl  0x6b00
     614:	e8 e7 40 00 00       	call   4700 <printf>
     619:	83 c4 10             	add    $0x10,%esp
  printf(stdout, "open test ok\n");
}

void
writetest(void)
{
     61c:	31 db                	xor    %ebx,%ebx
     61e:	66 90                	xchg   %ax,%ax
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     620:	83 ec 04             	sub    $0x4,%esp
     623:	6a 0a                	push   $0xa
     625:	68 a4 4b 00 00       	push   $0x4ba4
     62a:	56                   	push   %esi
     62b:	e8 a2 3f 00 00       	call   45d2 <write>
     630:	83 c4 10             	add    $0x10,%esp
     633:	83 f8 0a             	cmp    $0xa,%eax
     636:	74 23                	je     65b <writetest+0x8b>
      printf(stdout, "error: write aa %d new file failed\n", i);
     638:	83 ec 04             	sub    $0x4,%esp
     63b:	53                   	push   %ebx
     63c:	68 68 5a 00 00       	push   $0x5a68
     641:	ff 35 00 6b 00 00    	pushl  0x6b00
     647:	e8 b4 40 00 00       	call   4700 <printf>
      exit(0);
     64c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     653:	e8 5a 3f 00 00       	call   45b2 <exit>
     658:	83 c4 10             	add    $0x10,%esp
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     65b:	83 ec 04             	sub    $0x4,%esp
     65e:	6a 0a                	push   $0xa
     660:	68 af 4b 00 00       	push   $0x4baf
     665:	56                   	push   %esi
     666:	e8 67 3f 00 00       	call   45d2 <write>
     66b:	83 c4 10             	add    $0x10,%esp
     66e:	83 f8 0a             	cmp    $0xa,%eax
     671:	74 23                	je     696 <writetest+0xc6>
      printf(stdout, "error: write bb %d new file failed\n", i);
     673:	83 ec 04             	sub    $0x4,%esp
     676:	53                   	push   %ebx
     677:	68 8c 5a 00 00       	push   $0x5a8c
     67c:	ff 35 00 6b 00 00    	pushl  0x6b00
     682:	e8 79 40 00 00       	call   4700 <printf>
      exit(0);
     687:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     68e:	e8 1f 3f 00 00       	call   45b2 <exit>
     693:	83 c4 10             	add    $0x10,%esp
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
     696:	83 c3 01             	add    $0x1,%ebx
     699:	83 fb 64             	cmp    $0x64,%ebx
     69c:	75 82                	jne    620 <writetest+0x50>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
      exit(0);
    }
  }
  printf(stdout, "writes ok\n");
     69e:	83 ec 08             	sub    $0x8,%esp
     6a1:	68 ba 4b 00 00       	push   $0x4bba
     6a6:	ff 35 00 6b 00 00    	pushl  0x6b00
     6ac:	e8 4f 40 00 00       	call   4700 <printf>
  close(fd);
     6b1:	89 34 24             	mov    %esi,(%esp)
     6b4:	e8 21 3f 00 00       	call   45da <close>
  fd = open("small", O_RDONLY);
     6b9:	58                   	pop    %eax
     6ba:	5a                   	pop    %edx
     6bb:	6a 00                	push   $0x0
     6bd:	68 67 4b 00 00       	push   $0x4b67
     6c2:	e8 2b 3f 00 00       	call   45f2 <open>
  if(fd >= 0){
     6c7:	83 c4 10             	add    $0x10,%esp
     6ca:	85 c0                	test   %eax,%eax
      exit(0);
    }
  }
  printf(stdout, "writes ok\n");
  close(fd);
  fd = open("small", O_RDONLY);
     6cc:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     6ce:	0f 88 aa 00 00 00    	js     77e <writetest+0x1ae>
    printf(stdout, "open small succeeded ok\n");
     6d4:	83 ec 08             	sub    $0x8,%esp
     6d7:	68 c5 4b 00 00       	push   $0x4bc5
     6dc:	ff 35 00 6b 00 00    	pushl  0x6b00
     6e2:	e8 19 40 00 00       	call   4700 <printf>
     6e7:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(stdout, "error: open small failed!\n");
    exit(0);
  }
  i = read(fd, buf, 2000);
     6ea:	83 ec 04             	sub    $0x4,%esp
     6ed:	68 d0 07 00 00       	push   $0x7d0
     6f2:	68 e0 92 00 00       	push   $0x92e0
     6f7:	53                   	push   %ebx
     6f8:	e8 cd 3e 00 00       	call   45ca <read>
  if(i == 2000){
     6fd:	83 c4 10             	add    $0x10,%esp
     700:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     705:	74 5f                	je     766 <writetest+0x196>
    printf(stdout, "read succeeded ok\n");
  } else {
    printf(stdout, "read failed\n");
     707:	83 ec 08             	sub    $0x8,%esp
     70a:	68 25 4f 00 00       	push   $0x4f25
     70f:	ff 35 00 6b 00 00    	pushl  0x6b00
     715:	e8 e6 3f 00 00       	call   4700 <printf>
    exit(0);
     71a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     721:	e8 8c 3e 00 00       	call   45b2 <exit>
     726:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
     729:	83 ec 0c             	sub    $0xc,%esp
     72c:	53                   	push   %ebx
     72d:	e8 a8 3e 00 00       	call   45da <close>

  if(unlink("small") < 0){
     732:	c7 04 24 67 4b 00 00 	movl   $0x4b67,(%esp)
     739:	e8 c4 3e 00 00       	call   4602 <unlink>
     73e:	83 c4 10             	add    $0x10,%esp
     741:	85 c0                	test   %eax,%eax
     743:	0f 88 83 00 00 00    	js     7cc <writetest+0x1fc>
    printf(stdout, "unlink small failed\n");
    exit(0);
  }
  printf(stdout, "small file test ok\n");
     749:	83 ec 08             	sub    $0x8,%esp
     74c:	68 21 4c 00 00       	push   $0x4c21
     751:	ff 35 00 6b 00 00    	pushl  0x6b00
     757:	e8 a4 3f 00 00       	call   4700 <printf>
}
     75c:	83 c4 10             	add    $0x10,%esp
     75f:	8d 65 f8             	lea    -0x8(%ebp),%esp
     762:	5b                   	pop    %ebx
     763:	5e                   	pop    %esi
     764:	5d                   	pop    %ebp
     765:	c3                   	ret    
    printf(stdout, "error: open small failed!\n");
    exit(0);
  }
  i = read(fd, buf, 2000);
  if(i == 2000){
    printf(stdout, "read succeeded ok\n");
     766:	83 ec 08             	sub    $0x8,%esp
     769:	68 f9 4b 00 00       	push   $0x4bf9
     76e:	ff 35 00 6b 00 00    	pushl  0x6b00
     774:	e8 87 3f 00 00       	call   4700 <printf>
     779:	83 c4 10             	add    $0x10,%esp
     77c:	eb ab                	jmp    729 <writetest+0x159>
  close(fd);
  fd = open("small", O_RDONLY);
  if(fd >= 0){
    printf(stdout, "open small succeeded ok\n");
  } else {
    printf(stdout, "error: open small failed!\n");
     77e:	83 ec 08             	sub    $0x8,%esp
     781:	68 de 4b 00 00       	push   $0x4bde
     786:	ff 35 00 6b 00 00    	pushl  0x6b00
     78c:	e8 6f 3f 00 00       	call   4700 <printf>
    exit(0);
     791:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     798:	e8 15 3e 00 00       	call   45b2 <exit>
     79d:	83 c4 10             	add    $0x10,%esp
     7a0:	e9 45 ff ff ff       	jmp    6ea <writetest+0x11a>
  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
     7a5:	83 ec 08             	sub    $0x8,%esp
     7a8:	68 88 4b 00 00       	push   $0x4b88
     7ad:	ff 35 00 6b 00 00    	pushl  0x6b00
     7b3:	e8 48 3f 00 00       	call   4700 <printf>
    exit(0);
     7b8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7bf:	e8 ee 3d 00 00       	call   45b2 <exit>
     7c4:	83 c4 10             	add    $0x10,%esp
     7c7:	e9 50 fe ff ff       	jmp    61c <writetest+0x4c>
    exit(0);
  }
  close(fd);

  if(unlink("small") < 0){
    printf(stdout, "unlink small failed\n");
     7cc:	83 ec 08             	sub    $0x8,%esp
     7cf:	68 0c 4c 00 00       	push   $0x4c0c
     7d4:	ff 35 00 6b 00 00    	pushl  0x6b00
     7da:	e8 21 3f 00 00       	call   4700 <printf>
    exit(0);
     7df:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7e6:	e8 c7 3d 00 00       	call   45b2 <exit>
     7eb:	83 c4 10             	add    $0x10,%esp
     7ee:	e9 56 ff ff ff       	jmp    749 <writetest+0x179>
     7f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     7f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000800 <writetest1>:
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     800:	55                   	push   %ebp
     801:	89 e5                	mov    %esp,%ebp
     803:	56                   	push   %esi
     804:	53                   	push   %ebx
  int i, fd, n;

  printf(stdout, "big files test\n");
     805:	83 ec 08             	sub    $0x8,%esp
     808:	68 35 4c 00 00       	push   $0x4c35
     80d:	ff 35 00 6b 00 00    	pushl  0x6b00
     813:	e8 e8 3e 00 00       	call   4700 <printf>

  fd = open("big", O_CREATE|O_RDWR);
     818:	59                   	pop    %ecx
     819:	5b                   	pop    %ebx
     81a:	68 02 02 00 00       	push   $0x202
     81f:	68 af 4c 00 00       	push   $0x4caf
     824:	e8 c9 3d 00 00       	call   45f2 <open>
  if(fd < 0){
     829:	83 c4 10             	add    $0x10,%esp
     82c:	85 c0                	test   %eax,%eax
{
  int i, fd, n;

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
     82e:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     830:	0f 88 64 01 00 00    	js     99a <writetest1+0x19a>
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     836:	31 db                	xor    %ebx,%ebx
     838:	90                   	nop
     839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
     840:	83 ec 04             	sub    $0x4,%esp
    printf(stdout, "error: creat big failed!\n");
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
     843:	89 1d e0 92 00 00    	mov    %ebx,0x92e0
    if(write(fd, buf, 512) != 512){
     849:	68 00 02 00 00       	push   $0x200
     84e:	68 e0 92 00 00       	push   $0x92e0
     853:	56                   	push   %esi
     854:	e8 79 3d 00 00       	call   45d2 <write>
     859:	83 c4 10             	add    $0x10,%esp
     85c:	3d 00 02 00 00       	cmp    $0x200,%eax
     861:	74 23                	je     886 <writetest1+0x86>
      printf(stdout, "error: write big file failed\n", i);
     863:	83 ec 04             	sub    $0x4,%esp
     866:	53                   	push   %ebx
     867:	68 5f 4c 00 00       	push   $0x4c5f
     86c:	ff 35 00 6b 00 00    	pushl  0x6b00
     872:	e8 89 3e 00 00       	call   4700 <printf>
      exit(0);
     877:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     87e:	e8 2f 3d 00 00       	call   45b2 <exit>
     883:	83 c4 10             	add    $0x10,%esp
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
     886:	83 c3 01             	add    $0x1,%ebx
     889:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     88f:	75 af                	jne    840 <writetest1+0x40>
      printf(stdout, "error: write big file failed\n", i);
      exit(0);
    }
  }

  close(fd);
     891:	83 ec 0c             	sub    $0xc,%esp
     894:	56                   	push   %esi
     895:	e8 40 3d 00 00       	call   45da <close>

  fd = open("big", O_RDONLY);
     89a:	58                   	pop    %eax
     89b:	5a                   	pop    %edx
     89c:	6a 00                	push   $0x0
     89e:	68 af 4c 00 00       	push   $0x4caf
     8a3:	e8 4a 3d 00 00       	call   45f2 <open>
  if(fd < 0){
     8a8:	83 c4 10             	add    $0x10,%esp
     8ab:	85 c0                	test   %eax,%eax
    }
  }

  close(fd);

  fd = open("big", O_RDONLY);
     8ad:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     8af:	0f 88 be 00 00 00    	js     973 <writetest1+0x173>
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     8b5:	31 db                	xor    %ebx,%ebx
     8b7:	eb 5e                	jmp    917 <writetest1+0x117>
     8b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
        exit(0);
      }
      break;
    } else if(i != 512){
     8c0:	3d 00 02 00 00       	cmp    $0x200,%eax
     8c5:	74 23                	je     8ea <writetest1+0xea>
      printf(stdout, "read failed %d\n", i);
     8c7:	83 ec 04             	sub    $0x4,%esp
     8ca:	50                   	push   %eax
     8cb:	68 b3 4c 00 00       	push   $0x4cb3
     8d0:	ff 35 00 6b 00 00    	pushl  0x6b00
     8d6:	e8 25 3e 00 00       	call   4700 <printf>
      exit(0);
     8db:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8e2:	e8 cb 3c 00 00       	call   45b2 <exit>
     8e7:	83 c4 10             	add    $0x10,%esp
    }
    if(((int*)buf)[0] != n){
     8ea:	a1 e0 92 00 00       	mov    0x92e0,%eax
     8ef:	39 c3                	cmp    %eax,%ebx
     8f1:	74 21                	je     914 <writetest1+0x114>
      printf(stdout, "read content of block %d is %d\n",
     8f3:	50                   	push   %eax
     8f4:	53                   	push   %ebx
     8f5:	68 b0 5a 00 00       	push   $0x5ab0
     8fa:	ff 35 00 6b 00 00    	pushl  0x6b00
     900:	e8 fb 3d 00 00       	call   4700 <printf>
             n, ((int*)buf)[0]);
      exit(0);
     905:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     90c:	e8 a1 3c 00 00       	call   45b2 <exit>
     911:	83 c4 10             	add    $0x10,%esp
    }
    n++;
     914:	83 c3 01             	add    $0x1,%ebx
    exit(0);
  }

  n = 0;
  for(;;){
    i = read(fd, buf, 512);
     917:	83 ec 04             	sub    $0x4,%esp
     91a:	68 00 02 00 00       	push   $0x200
     91f:	68 e0 92 00 00       	push   $0x92e0
     924:	56                   	push   %esi
     925:	e8 a0 3c 00 00       	call   45ca <read>
    if(i == 0){
     92a:	83 c4 10             	add    $0x10,%esp
     92d:	85 c0                	test   %eax,%eax
     92f:	75 8f                	jne    8c0 <writetest1+0xc0>
      if(n == MAXFILE - 1){
     931:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     937:	0f 84 ab 00 00 00    	je     9e8 <writetest1+0x1e8>
             n, ((int*)buf)[0]);
      exit(0);
    }
    n++;
  }
  close(fd);
     93d:	83 ec 0c             	sub    $0xc,%esp
     940:	56                   	push   %esi
     941:	e8 94 3c 00 00       	call   45da <close>
  if(unlink("big") < 0){
     946:	c7 04 24 af 4c 00 00 	movl   $0x4caf,(%esp)
     94d:	e8 b0 3c 00 00       	call   4602 <unlink>
     952:	83 c4 10             	add    $0x10,%esp
     955:	85 c0                	test   %eax,%eax
     957:	78 68                	js     9c1 <writetest1+0x1c1>
    printf(stdout, "unlink big failed\n");
    exit(0);
  }
  printf(stdout, "big files ok\n");
     959:	83 ec 08             	sub    $0x8,%esp
     95c:	68 d6 4c 00 00       	push   $0x4cd6
     961:	ff 35 00 6b 00 00    	pushl  0x6b00
     967:	e8 94 3d 00 00       	call   4700 <printf>
}
     96c:	8d 65 f8             	lea    -0x8(%ebp),%esp
     96f:	5b                   	pop    %ebx
     970:	5e                   	pop    %esi
     971:	5d                   	pop    %ebp
     972:	c3                   	ret    

  close(fd);

  fd = open("big", O_RDONLY);
  if(fd < 0){
    printf(stdout, "error: open big failed!\n");
     973:	83 ec 08             	sub    $0x8,%esp
     976:	68 7d 4c 00 00       	push   $0x4c7d
     97b:	ff 35 00 6b 00 00    	pushl  0x6b00
     981:	e8 7a 3d 00 00       	call   4700 <printf>
    exit(0);
     986:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     98d:	e8 20 3c 00 00       	call   45b2 <exit>
     992:	83 c4 10             	add    $0x10,%esp
     995:	e9 1b ff ff ff       	jmp    8b5 <writetest1+0xb5>

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
     99a:	83 ec 08             	sub    $0x8,%esp
     99d:	68 45 4c 00 00       	push   $0x4c45
     9a2:	ff 35 00 6b 00 00    	pushl  0x6b00
     9a8:	e8 53 3d 00 00       	call   4700 <printf>
    exit(0);
     9ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9b4:	e8 f9 3b 00 00       	call   45b2 <exit>
     9b9:	83 c4 10             	add    $0x10,%esp
     9bc:	e9 75 fe ff ff       	jmp    836 <writetest1+0x36>
    }
    n++;
  }
  close(fd);
  if(unlink("big") < 0){
    printf(stdout, "unlink big failed\n");
     9c1:	83 ec 08             	sub    $0x8,%esp
     9c4:	68 c3 4c 00 00       	push   $0x4cc3
     9c9:	ff 35 00 6b 00 00    	pushl  0x6b00
     9cf:	e8 2c 3d 00 00       	call   4700 <printf>
    exit(0);
     9d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9db:	e8 d2 3b 00 00       	call   45b2 <exit>
     9e0:	83 c4 10             	add    $0x10,%esp
     9e3:	e9 71 ff ff ff       	jmp    959 <writetest1+0x159>
  n = 0;
  for(;;){
    i = read(fd, buf, 512);
    if(i == 0){
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
     9e8:	83 ec 04             	sub    $0x4,%esp
     9eb:	68 8b 00 00 00       	push   $0x8b
     9f0:	68 96 4c 00 00       	push   $0x4c96
     9f5:	ff 35 00 6b 00 00    	pushl  0x6b00
     9fb:	e8 00 3d 00 00       	call   4700 <printf>
        exit(0);
     a00:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     a07:	e8 a6 3b 00 00       	call   45b2 <exit>
     a0c:	83 c4 10             	add    $0x10,%esp
     a0f:	e9 29 ff ff ff       	jmp    93d <writetest1+0x13d>
     a14:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     a1a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000a20 <createtest>:
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	53                   	push   %ebx
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
     a24:	bb 30 00 00 00       	mov    $0x30,%ebx
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     a29:	83 ec 0c             	sub    $0xc,%esp
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");
     a2c:	68 d0 5a 00 00       	push   $0x5ad0
     a31:	ff 35 00 6b 00 00    	pushl  0x6b00
     a37:	e8 c4 3c 00 00       	call   4700 <printf>

  name[0] = 'a';
     a3c:	c6 05 e0 b2 00 00 61 	movb   $0x61,0xb2e0
  name[2] = '\0';
     a43:	c6 05 e2 b2 00 00 00 	movb   $0x0,0xb2e2
     a4a:	83 c4 10             	add    $0x10,%esp
     a4d:	8d 76 00             	lea    0x0(%esi),%esi
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
     a50:	83 ec 08             	sub    $0x8,%esp
  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     a53:	88 1d e1 b2 00 00    	mov    %bl,0xb2e1
     a59:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     a5c:	68 02 02 00 00       	push   $0x202
     a61:	68 e0 b2 00 00       	push   $0xb2e0
     a66:	e8 87 3b 00 00       	call   45f2 <open>
    close(fd);
     a6b:	89 04 24             	mov    %eax,(%esp)
     a6e:	e8 67 3b 00 00       	call   45da <close>

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     a73:	83 c4 10             	add    $0x10,%esp
     a76:	80 fb 64             	cmp    $0x64,%bl
     a79:	75 d5                	jne    a50 <createtest+0x30>
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
     a7b:	c6 05 e0 b2 00 00 61 	movb   $0x61,0xb2e0
  name[2] = '\0';
     a82:	c6 05 e2 b2 00 00 00 	movb   $0x0,0xb2e2
     a89:	bb 30 00 00 00       	mov    $0x30,%ebx
     a8e:	66 90                	xchg   %ax,%ax
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    unlink(name);
     a90:	83 ec 0c             	sub    $0xc,%esp
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     a93:	88 1d e1 b2 00 00    	mov    %bl,0xb2e1
     a99:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     a9c:	68 e0 b2 00 00       	push   $0xb2e0
     aa1:	e8 5c 3b 00 00       	call   4602 <unlink>
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     aa6:	83 c4 10             	add    $0x10,%esp
     aa9:	80 fb 64             	cmp    $0x64,%bl
     aac:	75 e2                	jne    a90 <createtest+0x70>
    name[1] = '0' + i;
    unlink(name);
  }
  printf(stdout, "many creates, followed by unlink; ok\n");
     aae:	83 ec 08             	sub    $0x8,%esp
     ab1:	68 f8 5a 00 00       	push   $0x5af8
     ab6:	ff 35 00 6b 00 00    	pushl  0x6b00
     abc:	e8 3f 3c 00 00       	call   4700 <printf>
}
     ac1:	83 c4 10             	add    $0x10,%esp
     ac4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ac7:	c9                   	leave  
     ac8:	c3                   	ret    
     ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ad0 <dirtest>:

void dirtest(void)
{
     ad0:	55                   	push   %ebp
     ad1:	89 e5                	mov    %esp,%ebp
     ad3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     ad6:	68 e4 4c 00 00       	push   $0x4ce4
     adb:	ff 35 00 6b 00 00    	pushl  0x6b00
     ae1:	e8 1a 3c 00 00       	call   4700 <printf>

  if(mkdir("dir0") < 0){
     ae6:	c7 04 24 f0 4c 00 00 	movl   $0x4cf0,(%esp)
     aed:	e8 28 3b 00 00       	call   461a <mkdir>
     af2:	83 c4 10             	add    $0x10,%esp
     af5:	85 c0                	test   %eax,%eax
     af7:	0f 88 8b 00 00 00    	js     b88 <dirtest+0xb8>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }

  if(chdir("dir0") < 0){
     afd:	83 ec 0c             	sub    $0xc,%esp
     b00:	68 f0 4c 00 00       	push   $0x4cf0
     b05:	e8 18 3b 00 00       	call   4622 <chdir>
     b0a:	83 c4 10             	add    $0x10,%esp
     b0d:	85 c0                	test   %eax,%eax
     b0f:	0f 88 9b 00 00 00    	js     bb0 <dirtest+0xe0>
    printf(stdout, "chdir dir0 failed\n");
    exit(0);
  }

  if(chdir("..") < 0){
     b15:	83 ec 0c             	sub    $0xc,%esp
     b18:	68 95 52 00 00       	push   $0x5295
     b1d:	e8 00 3b 00 00       	call   4622 <chdir>
     b22:	83 c4 10             	add    $0x10,%esp
     b25:	85 c0                	test   %eax,%eax
     b27:	0f 88 b3 00 00 00    	js     be0 <dirtest+0x110>
    printf(stdout, "chdir .. failed\n");
    exit(0);
  }

  if(unlink("dir0") < 0){
     b2d:	83 ec 0c             	sub    $0xc,%esp
     b30:	68 f0 4c 00 00       	push   $0x4cf0
     b35:	e8 c8 3a 00 00       	call   4602 <unlink>
     b3a:	83 c4 10             	add    $0x10,%esp
     b3d:	85 c0                	test   %eax,%eax
     b3f:	78 1f                	js     b60 <dirtest+0x90>
    printf(stdout, "unlink dir0 failed\n");
    exit(0);
  }
  printf(stdout, "mkdir test ok\n");
     b41:	83 ec 08             	sub    $0x8,%esp
     b44:	68 2d 4d 00 00       	push   $0x4d2d
     b49:	ff 35 00 6b 00 00    	pushl  0x6b00
     b4f:	e8 ac 3b 00 00       	call   4700 <printf>
}
     b54:	83 c4 10             	add    $0x10,%esp
     b57:	c9                   	leave  
     b58:	c3                   	ret    
     b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "chdir .. failed\n");
    exit(0);
  }

  if(unlink("dir0") < 0){
    printf(stdout, "unlink dir0 failed\n");
     b60:	83 ec 08             	sub    $0x8,%esp
     b63:	68 19 4d 00 00       	push   $0x4d19
     b68:	ff 35 00 6b 00 00    	pushl  0x6b00
     b6e:	e8 8d 3b 00 00       	call   4700 <printf>
    exit(0);
     b73:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b7a:	e8 33 3a 00 00       	call   45b2 <exit>
     b7f:	83 c4 10             	add    $0x10,%esp
     b82:	eb bd                	jmp    b41 <dirtest+0x71>
     b84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
void dirtest(void)
{
  printf(stdout, "mkdir test\n");

  if(mkdir("dir0") < 0){
    printf(stdout, "mkdir failed\n");
     b88:	83 ec 08             	sub    $0x8,%esp
     b8b:	68 20 4a 00 00       	push   $0x4a20
     b90:	ff 35 00 6b 00 00    	pushl  0x6b00
     b96:	e8 65 3b 00 00       	call   4700 <printf>
    exit(0);
     b9b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ba2:	e8 0b 3a 00 00       	call   45b2 <exit>
     ba7:	83 c4 10             	add    $0x10,%esp
     baa:	e9 4e ff ff ff       	jmp    afd <dirtest+0x2d>
     baf:	90                   	nop
  }

  if(chdir("dir0") < 0){
    printf(stdout, "chdir dir0 failed\n");
     bb0:	83 ec 08             	sub    $0x8,%esp
     bb3:	68 f5 4c 00 00       	push   $0x4cf5
     bb8:	ff 35 00 6b 00 00    	pushl  0x6b00
     bbe:	e8 3d 3b 00 00       	call   4700 <printf>
    exit(0);
     bc3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bca:	e8 e3 39 00 00       	call   45b2 <exit>
     bcf:	83 c4 10             	add    $0x10,%esp
     bd2:	e9 3e ff ff ff       	jmp    b15 <dirtest+0x45>
     bd7:	89 f6                	mov    %esi,%esi
     bd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  }

  if(chdir("..") < 0){
    printf(stdout, "chdir .. failed\n");
     be0:	83 ec 08             	sub    $0x8,%esp
     be3:	68 08 4d 00 00       	push   $0x4d08
     be8:	ff 35 00 6b 00 00    	pushl  0x6b00
     bee:	e8 0d 3b 00 00       	call   4700 <printf>
    exit(0);
     bf3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bfa:	e8 b3 39 00 00       	call   45b2 <exit>
     bff:	83 c4 10             	add    $0x10,%esp
     c02:	e9 26 ff ff ff       	jmp    b2d <dirtest+0x5d>
     c07:	89 f6                	mov    %esi,%esi
     c09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c10 <exectest>:
  printf(stdout, "mkdir test ok\n");
}

void
exectest(void)
{
     c10:	55                   	push   %ebp
     c11:	89 e5                	mov    %esp,%ebp
     c13:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     c16:	68 3c 4d 00 00       	push   $0x4d3c
     c1b:	ff 35 00 6b 00 00    	pushl  0x6b00
     c21:	e8 da 3a 00 00       	call   4700 <printf>
  if(exec("echo", echoargv) < 0){
     c26:	58                   	pop    %eax
     c27:	5a                   	pop    %edx
     c28:	68 04 6b 00 00       	push   $0x6b04
     c2d:	68 05 4b 00 00       	push   $0x4b05
     c32:	e8 b3 39 00 00       	call   45ea <exec>
     c37:	83 c4 10             	add    $0x10,%esp
     c3a:	85 c0                	test   %eax,%eax
     c3c:	78 02                	js     c40 <exectest+0x30>
    printf(stdout, "exec echo failed\n");
    exit(0);
  }
}
     c3e:	c9                   	leave  
     c3f:	c3                   	ret    
void
exectest(void)
{
  printf(stdout, "exec test\n");
  if(exec("echo", echoargv) < 0){
    printf(stdout, "exec echo failed\n");
     c40:	83 ec 08             	sub    $0x8,%esp
     c43:	68 47 4d 00 00       	push   $0x4d47
     c48:	ff 35 00 6b 00 00    	pushl  0x6b00
     c4e:	e8 ad 3a 00 00       	call   4700 <printf>
    exit(0);
     c53:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c5a:	e8 53 39 00 00       	call   45b2 <exit>
     c5f:	83 c4 10             	add    $0x10,%esp
  }
}
     c62:	c9                   	leave  
     c63:	c3                   	ret    
     c64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c70 <pipe1>:

// simple fork and pipe read/write

void
pipe1(void)
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	57                   	push   %edi
     c74:	56                   	push   %esi
     c75:	53                   	push   %ebx
  int fds[2], pid;
  int seq, i, n, cc, total;
  int status; // Lab 1 Part 1b. -RB

  if(pipe(fds) != 0){
     c76:	8d 45 e0             	lea    -0x20(%ebp),%eax

// simple fork and pipe read/write

void
pipe1(void)
{
     c79:	83 ec 38             	sub    $0x38,%esp
  int fds[2], pid;
  int seq, i, n, cc, total;
  int status; // Lab 1 Part 1b. -RB

  if(pipe(fds) != 0){
     c7c:	50                   	push   %eax
     c7d:	e8 40 39 00 00       	call   45c2 <pipe>
     c82:	83 c4 10             	add    $0x10,%esp
     c85:	85 c0                	test   %eax,%eax
     c87:	0f 85 2f 01 00 00    	jne    dbc <pipe1+0x14c>
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
     c8d:	e8 18 39 00 00       	call   45aa <fork>
  seq = 0;
  if(pid == 0){
     c92:	83 f8 00             	cmp    $0x0,%eax
     c95:	0f 84 86 00 00 00    	je     d21 <pipe1+0xb1>
        printf(1, "pipe1 oops 1\n");
        exit(0);
      }
    }
    exit(0);
  } else if(pid > 0){
     c9b:	0f 8e 3e 01 00 00    	jle    ddf <pipe1+0x16f>
    close(fds[1]);
     ca1:	83 ec 0c             	sub    $0xc,%esp
     ca4:	ff 75 e4             	pushl  -0x1c(%ebp)
    total = 0;
    cc = 1;
     ca7:	bf 01 00 00 00       	mov    $0x1,%edi
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
  seq = 0;
     cac:	31 db                	xor    %ebx,%ebx
        exit(0);
      }
    }
    exit(0);
  } else if(pid > 0){
    close(fds[1]);
     cae:	e8 27 39 00 00       	call   45da <close>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     cb3:	83 c4 10             	add    $0x10,%esp
      }
    }
    exit(0);
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
     cb6:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     cbd:	83 ec 04             	sub    $0x4,%esp
     cc0:	57                   	push   %edi
     cc1:	68 e0 92 00 00       	push   $0x92e0
     cc6:	ff 75 e0             	pushl  -0x20(%ebp)
     cc9:	e8 fc 38 00 00       	call   45ca <read>
     cce:	83 c4 10             	add    $0x10,%esp
     cd1:	85 c0                	test   %eax,%eax
     cd3:	0f 8e 26 01 00 00    	jle    dff <pipe1+0x18f>
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     cd9:	89 d9                	mov    %ebx,%ecx
     cdb:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     cde:	f7 d9                	neg    %ecx
     ce0:	38 9c 0b e0 92 00 00 	cmp    %bl,0x92e0(%ebx,%ecx,1)
     ce7:	8d 53 01             	lea    0x1(%ebx),%edx
     cea:	75 1b                	jne    d07 <pipe1+0x97>
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
     cec:	39 d6                	cmp    %edx,%esi
     cee:	89 d3                	mov    %edx,%ebx
     cf0:	75 ee                	jne    ce0 <pipe1+0x70>
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
      cc = cc * 2;
     cf2:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
     cf4:	01 45 d4             	add    %eax,-0x2c(%ebp)
     cf7:	b8 00 20 00 00       	mov    $0x2000,%eax
     cfc:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     d02:	0f 4f f8             	cmovg  %eax,%edi
     d05:	eb b6                	jmp    cbd <pipe1+0x4d>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
     d07:	83 ec 08             	sub    $0x8,%esp
     d0a:	68 76 4d 00 00       	push   $0x4d76
     d0f:	6a 01                	push   $0x1
     d11:	e8 ea 39 00 00       	call   4700 <printf>
          return;
     d16:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(1, "fork() failed\n");
    exit(0);
  }
  printf(1, "pipe1 ok\n");
}
     d19:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d1c:	5b                   	pop    %ebx
     d1d:	5e                   	pop    %esi
     d1e:	5f                   	pop    %edi
     d1f:	5d                   	pop    %ebp
     d20:	c3                   	ret    
    exit(0);
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
     d21:	83 ec 0c             	sub    $0xc,%esp
     d24:	ff 75 e0             	pushl  -0x20(%ebp)
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
  seq = 0;
     d27:	31 db                	xor    %ebx,%ebx
  if(pid == 0){
    close(fds[0]);
     d29:	e8 ac 38 00 00       	call   45da <close>
     d2e:	83 c4 10             	add    $0x10,%esp
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     d31:	89 da                	mov    %ebx,%edx
     d33:	8d b3 09 04 00 00    	lea    0x409(%ebx),%esi

// simple fork and pipe read/write

void
pipe1(void)
{
     d39:	89 d8                	mov    %ebx,%eax
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     d3b:	f7 da                	neg    %edx
     d3d:	8d 76 00             	lea    0x0(%esi),%esi
     d40:	88 84 02 e0 92 00 00 	mov    %al,0x92e0(%edx,%eax,1)
     d47:	83 c0 01             	add    $0x1,%eax
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
     d4a:	39 f0                	cmp    %esi,%eax
     d4c:	75 f2                	jne    d40 <pipe1+0xd0>
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
     d4e:	83 ec 04             	sub    $0x4,%esp
     d51:	89 f3                	mov    %esi,%ebx
     d53:	68 09 04 00 00       	push   $0x409
     d58:	68 e0 92 00 00       	push   $0x92e0
     d5d:	ff 75 e4             	pushl  -0x1c(%ebp)
     d60:	e8 6d 38 00 00       	call   45d2 <write>
     d65:	83 c4 10             	add    $0x10,%esp
     d68:	3d 09 04 00 00       	cmp    $0x409,%eax
     d6d:	74 1e                	je     d8d <pipe1+0x11d>
        printf(1, "pipe1 oops 1\n");
     d6f:	83 ec 08             	sub    $0x8,%esp
     d72:	68 68 4d 00 00       	push   $0x4d68
     d77:	6a 01                	push   $0x1
     d79:	e8 82 39 00 00       	call   4700 <printf>
        exit(0);
     d7e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d85:	e8 28 38 00 00       	call   45b2 <exit>
     d8a:	83 c4 10             	add    $0x10,%esp
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
     d8d:	81 fe 2d 14 00 00    	cmp    $0x142d,%esi
     d93:	75 9c                	jne    d31 <pipe1+0xc1>
      if(write(fds[1], buf, 1033) != 1033){
        printf(1, "pipe1 oops 1\n");
        exit(0);
      }
    }
    exit(0);
     d95:	83 ec 0c             	sub    $0xc,%esp
     d98:	6a 00                	push   $0x0
     d9a:	e8 13 38 00 00       	call   45b2 <exit>
     d9f:	83 c4 10             	add    $0x10,%esp
    wait(&status);
  } else {
    printf(1, "fork() failed\n");
    exit(0);
  }
  printf(1, "pipe1 ok\n");
     da2:	83 ec 08             	sub    $0x8,%esp
     da5:	68 aa 4d 00 00       	push   $0x4daa
     daa:	6a 01                	push   $0x1
     dac:	e8 4f 39 00 00       	call   4700 <printf>
     db1:	83 c4 10             	add    $0x10,%esp
}
     db4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     db7:	5b                   	pop    %ebx
     db8:	5e                   	pop    %esi
     db9:	5f                   	pop    %edi
     dba:	5d                   	pop    %ebp
     dbb:	c3                   	ret    
  int fds[2], pid;
  int seq, i, n, cc, total;
  int status; // Lab 1 Part 1b. -RB

  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
     dbc:	83 ec 08             	sub    $0x8,%esp
     dbf:	68 59 4d 00 00       	push   $0x4d59
     dc4:	6a 01                	push   $0x1
     dc6:	e8 35 39 00 00       	call   4700 <printf>
    exit(0);
     dcb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dd2:	e8 db 37 00 00       	call   45b2 <exit>
     dd7:	83 c4 10             	add    $0x10,%esp
     dda:	e9 ae fe ff ff       	jmp    c8d <pipe1+0x1d>
      exit(0);
    }
    close(fds[0]);
    wait(&status);
  } else {
    printf(1, "fork() failed\n");
     ddf:	83 ec 08             	sub    $0x8,%esp
     de2:	68 9b 4d 00 00       	push   $0x4d9b
     de7:	6a 01                	push   $0x1
     de9:	e8 12 39 00 00       	call   4700 <printf>
    exit(0);
     dee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     df5:	e8 b8 37 00 00       	call   45b2 <exit>
     dfa:	83 c4 10             	add    $0x10,%esp
     dfd:	eb a3                	jmp    da2 <pipe1+0x132>
      total += n;
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
     dff:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     e02:	3d 2d 14 00 00       	cmp    $0x142d,%eax
     e07:	74 1f                	je     e28 <pipe1+0x1b8>
      printf(1, "pipe1 oops 3 total %d\n", total);
     e09:	83 ec 04             	sub    $0x4,%esp
     e0c:	50                   	push   %eax
     e0d:	68 84 4d 00 00       	push   $0x4d84
     e12:	6a 01                	push   $0x1
     e14:	e8 e7 38 00 00       	call   4700 <printf>
      exit(0);
     e19:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e20:	e8 8d 37 00 00       	call   45b2 <exit>
     e25:	83 c4 10             	add    $0x10,%esp
    }
    close(fds[0]);
     e28:	83 ec 0c             	sub    $0xc,%esp
     e2b:	ff 75 e0             	pushl  -0x20(%ebp)
     e2e:	e8 a7 37 00 00       	call   45da <close>
    wait(&status);
     e33:	8d 45 dc             	lea    -0x24(%ebp),%eax
     e36:	89 04 24             	mov    %eax,(%esp)
     e39:	e8 7c 37 00 00       	call   45ba <wait>
     e3e:	83 c4 10             	add    $0x10,%esp
     e41:	e9 5c ff ff ff       	jmp    da2 <pipe1+0x132>
     e46:	8d 76 00             	lea    0x0(%esi),%esi
     e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e50 <preempt>:
}

// meant to be run w/ at most two CPUs
void
preempt(void)
{
     e50:	55                   	push   %ebp
     e51:	89 e5                	mov    %esp,%ebp
     e53:	57                   	push   %edi
     e54:	56                   	push   %esi
     e55:	53                   	push   %ebx
     e56:	83 ec 24             	sub    $0x24,%esp
  int pid1, pid2, pid3;
  int pfds[2];
  int status; // Lab 1 Part 1b. -RB

  printf(1, "preempt: ");
     e59:	68 b4 4d 00 00       	push   $0x4db4
     e5e:	6a 01                	push   $0x1
     e60:	e8 9b 38 00 00       	call   4700 <printf>
  pid1 = fork();
     e65:	e8 40 37 00 00       	call   45aa <fork>
  if(pid1 == 0)
     e6a:	83 c4 10             	add    $0x10,%esp
     e6d:	85 c0                	test   %eax,%eax
     e6f:	75 02                	jne    e73 <preempt+0x23>
     e71:	eb fe                	jmp    e71 <preempt+0x21>
     e73:	89 c7                	mov    %eax,%edi
    for(;;)
      ;

  pid2 = fork();
     e75:	e8 30 37 00 00       	call   45aa <fork>
  if(pid2 == 0)
     e7a:	85 c0                	test   %eax,%eax
  pid1 = fork();
  if(pid1 == 0)
    for(;;)
      ;

  pid2 = fork();
     e7c:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     e7e:	75 02                	jne    e82 <preempt+0x32>
     e80:	eb fe                	jmp    e80 <preempt+0x30>
    for(;;)
      ;

  pipe(pfds);
     e82:	8d 45 e0             	lea    -0x20(%ebp),%eax
     e85:	83 ec 0c             	sub    $0xc,%esp
     e88:	50                   	push   %eax
     e89:	e8 34 37 00 00       	call   45c2 <pipe>
  pid3 = fork();
     e8e:	e8 17 37 00 00       	call   45aa <fork>
  if(pid3 == 0){
     e93:	83 c4 10             	add    $0x10,%esp
     e96:	85 c0                	test   %eax,%eax
  if(pid2 == 0)
    for(;;)
      ;

  pipe(pfds);
  pid3 = fork();
     e98:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     e9a:	75 47                	jne    ee3 <preempt+0x93>
    close(pfds[0]);
     e9c:	83 ec 0c             	sub    $0xc,%esp
     e9f:	ff 75 e0             	pushl  -0x20(%ebp)
     ea2:	e8 33 37 00 00       	call   45da <close>
    if(write(pfds[1], "x", 1) != 1)
     ea7:	83 c4 0c             	add    $0xc,%esp
     eaa:	6a 01                	push   $0x1
     eac:	68 79 53 00 00       	push   $0x5379
     eb1:	ff 75 e4             	pushl  -0x1c(%ebp)
     eb4:	e8 19 37 00 00       	call   45d2 <write>
     eb9:	83 c4 10             	add    $0x10,%esp
     ebc:	83 f8 01             	cmp    $0x1,%eax
     ebf:	74 12                	je     ed3 <preempt+0x83>
      printf(1, "preempt write error");
     ec1:	83 ec 08             	sub    $0x8,%esp
     ec4:	68 be 4d 00 00       	push   $0x4dbe
     ec9:	6a 01                	push   $0x1
     ecb:	e8 30 38 00 00       	call   4700 <printf>
     ed0:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
     ed3:	83 ec 0c             	sub    $0xc,%esp
     ed6:	ff 75 e4             	pushl  -0x1c(%ebp)
     ed9:	e8 fc 36 00 00       	call   45da <close>
     ede:	83 c4 10             	add    $0x10,%esp
     ee1:	eb fe                	jmp    ee1 <preempt+0x91>
    for(;;)
      ;
  }

  close(pfds[1]);
     ee3:	83 ec 0c             	sub    $0xc,%esp
     ee6:	ff 75 e4             	pushl  -0x1c(%ebp)
     ee9:	e8 ec 36 00 00       	call   45da <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     eee:	83 c4 0c             	add    $0xc,%esp
     ef1:	68 00 20 00 00       	push   $0x2000
     ef6:	68 e0 92 00 00       	push   $0x92e0
     efb:	ff 75 e0             	pushl  -0x20(%ebp)
     efe:	e8 c7 36 00 00       	call   45ca <read>
     f03:	83 c4 10             	add    $0x10,%esp
     f06:	83 f8 01             	cmp    $0x1,%eax
     f09:	74 1a                	je     f25 <preempt+0xd5>
    printf(1, "preempt read error");
     f0b:	83 ec 08             	sub    $0x8,%esp
     f0e:	68 d2 4d 00 00       	push   $0x4dd2
     f13:	6a 01                	push   $0x1
     f15:	e8 e6 37 00 00       	call   4700 <printf>
    return;
     f1a:	83 c4 10             	add    $0x10,%esp
  printf(1, "wait... ");
  wait(&status);
  wait(&status);
  wait(&status);
  printf(1, "preempt ok\n");
}
     f1d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f20:	5b                   	pop    %ebx
     f21:	5e                   	pop    %esi
     f22:	5f                   	pop    %edi
     f23:	5d                   	pop    %ebp
     f24:	c3                   	ret    
  close(pfds[1]);
  if(read(pfds[0], buf, sizeof(buf)) != 1){
    printf(1, "preempt read error");
    return;
  }
  close(pfds[0]);
     f25:	83 ec 0c             	sub    $0xc,%esp
     f28:	ff 75 e0             	pushl  -0x20(%ebp)
     f2b:	e8 aa 36 00 00       	call   45da <close>
  printf(1, "kill... ");
     f30:	58                   	pop    %eax
     f31:	5a                   	pop    %edx
     f32:	68 e5 4d 00 00       	push   $0x4de5
     f37:	6a 01                	push   $0x1
     f39:	e8 c2 37 00 00       	call   4700 <printf>
  kill(pid1);
     f3e:	89 3c 24             	mov    %edi,(%esp)
     f41:	e8 9c 36 00 00       	call   45e2 <kill>
  kill(pid2);
     f46:	89 34 24             	mov    %esi,(%esp)
     f49:	e8 94 36 00 00       	call   45e2 <kill>
  kill(pid3);
     f4e:	89 1c 24             	mov    %ebx,(%esp)
     f51:	e8 8c 36 00 00       	call   45e2 <kill>
  printf(1, "wait... ");
     f56:	59                   	pop    %ecx
     f57:	5b                   	pop    %ebx
  wait(&status);
     f58:	8d 5d dc             	lea    -0x24(%ebp),%ebx
  close(pfds[0]);
  printf(1, "kill... ");
  kill(pid1);
  kill(pid2);
  kill(pid3);
  printf(1, "wait... ");
     f5b:	68 ee 4d 00 00       	push   $0x4dee
     f60:	6a 01                	push   $0x1
     f62:	e8 99 37 00 00       	call   4700 <printf>
  wait(&status);
     f67:	89 1c 24             	mov    %ebx,(%esp)
     f6a:	e8 4b 36 00 00       	call   45ba <wait>
  wait(&status);
     f6f:	89 1c 24             	mov    %ebx,(%esp)
     f72:	e8 43 36 00 00       	call   45ba <wait>
  wait(&status);
     f77:	89 1c 24             	mov    %ebx,(%esp)
     f7a:	e8 3b 36 00 00       	call   45ba <wait>
  printf(1, "preempt ok\n");
     f7f:	5e                   	pop    %esi
     f80:	5f                   	pop    %edi
     f81:	68 f7 4d 00 00       	push   $0x4df7
     f86:	6a 01                	push   $0x1
     f88:	e8 73 37 00 00       	call   4700 <printf>
     f8d:	83 c4 10             	add    $0x10,%esp
     f90:	eb 8b                	jmp    f1d <preempt+0xcd>
     f92:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000fa0 <exitwait>:
}

// try to find any races between exit and wait
void
exitwait(void)
{
     fa0:	55                   	push   %ebp
     fa1:	89 e5                	mov    %esp,%ebp
     fa3:	57                   	push   %edi
     fa4:	56                   	push   %esi
     fa5:	53                   	push   %ebx
    if(pid < 0){
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait(&status) != pid){
     fa6:	8d 7d e4             	lea    -0x1c(%ebp),%edi
}

// try to find any races between exit and wait
void
exitwait(void)
{
     fa9:	bb 64 00 00 00       	mov    $0x64,%ebx
     fae:	83 ec 1c             	sub    $0x1c,%esp
     fb1:	eb 1a                	jmp    fcd <exitwait+0x2d>
     fb3:	90                   	nop
     fb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid < 0){
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait(&status) != pid){
     fb8:	83 ec 0c             	sub    $0xc,%esp
     fbb:	57                   	push   %edi
     fbc:	e8 f9 35 00 00       	call   45ba <wait>
     fc1:	83 c4 10             	add    $0x10,%esp
     fc4:	39 c6                	cmp    %eax,%esi
     fc6:	75 68                	jne    1030 <exitwait+0x90>
exitwait(void)
{
  int i, pid;
  int status; // Lab 1 Part 1b. -RB

  for(i = 0; i < 100; i++){
     fc8:	83 eb 01             	sub    $0x1,%ebx
     fcb:	74 1f                	je     fec <exitwait+0x4c>
    pid = fork();
     fcd:	e8 d8 35 00 00       	call   45aa <fork>
    if(pid < 0){
     fd2:	85 c0                	test   %eax,%eax
{
  int i, pid;
  int status; // Lab 1 Part 1b. -RB

  for(i = 0; i < 100; i++){
    pid = fork();
     fd4:	89 c6                	mov    %eax,%esi
    if(pid < 0){
     fd6:	78 38                	js     1010 <exitwait+0x70>
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
     fd8:	75 de                	jne    fb8 <exitwait+0x18>
      if(wait(&status) != pid){
        printf(1, "wait wrong pid\n");
        return;
      }
    } else {
      exit(0);
     fda:	83 ec 0c             	sub    $0xc,%esp
     fdd:	6a 00                	push   $0x0
     fdf:	e8 ce 35 00 00       	call   45b2 <exit>
     fe4:	83 c4 10             	add    $0x10,%esp
exitwait(void)
{
  int i, pid;
  int status; // Lab 1 Part 1b. -RB

  for(i = 0; i < 100; i++){
     fe7:	83 eb 01             	sub    $0x1,%ebx
     fea:	75 e1                	jne    fcd <exitwait+0x2d>
      }
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
     fec:	83 ec 08             	sub    $0x8,%esp
     fef:	68 13 4e 00 00       	push   $0x4e13
     ff4:	6a 01                	push   $0x1
     ff6:	e8 05 37 00 00       	call   4700 <printf>
     ffb:	83 c4 10             	add    $0x10,%esp
}
     ffe:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1001:	5b                   	pop    %ebx
    1002:	5e                   	pop    %esi
    1003:	5f                   	pop    %edi
    1004:	5d                   	pop    %ebp
    1005:	c3                   	ret    
    1006:	8d 76 00             	lea    0x0(%esi),%esi
    1009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  int status; // Lab 1 Part 1b. -RB

  for(i = 0; i < 100; i++){
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1010:	83 ec 08             	sub    $0x8,%esp
    1013:	68 61 59 00 00       	push   $0x5961
    1018:	6a 01                	push   $0x1
    101a:	e8 e1 36 00 00       	call   4700 <printf>
      return;
    101f:	83 c4 10             	add    $0x10,%esp
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
}
    1022:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1025:	5b                   	pop    %ebx
    1026:	5e                   	pop    %esi
    1027:	5f                   	pop    %edi
    1028:	5d                   	pop    %ebp
    1029:	c3                   	ret    
    102a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait(&status) != pid){
        printf(1, "wait wrong pid\n");
    1030:	83 ec 08             	sub    $0x8,%esp
    1033:	68 03 4e 00 00       	push   $0x4e03
    1038:	6a 01                	push   $0x1
    103a:	e8 c1 36 00 00       	call   4700 <printf>
        return;
    103f:	83 c4 10             	add    $0x10,%esp
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
}
    1042:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1045:	5b                   	pop    %ebx
    1046:	5e                   	pop    %esi
    1047:	5f                   	pop    %edi
    1048:	5d                   	pop    %ebp
    1049:	c3                   	ret    
    104a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001050 <mem>:

void
mem(void)
{
    1050:	55                   	push   %ebp
    1051:	89 e5                	mov    %esp,%ebp
    1053:	57                   	push   %edi
    1054:	56                   	push   %esi
    1055:	53                   	push   %ebx
    1056:	31 db                	xor    %ebx,%ebx
    1058:	83 ec 24             	sub    $0x24,%esp
  void *m1, *m2;
  int pid, ppid;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "mem test\n");
    105b:	68 20 4e 00 00       	push   $0x4e20
    1060:	6a 01                	push   $0x1
    1062:	e8 99 36 00 00       	call   4700 <printf>
  ppid = getpid();
    1067:	e8 c6 35 00 00       	call   4632 <getpid>
    106c:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
    106e:	e8 37 35 00 00       	call   45aa <fork>
    1073:	83 c4 10             	add    $0x10,%esp
    1076:	85 c0                	test   %eax,%eax
    1078:	74 0a                	je     1084 <mem+0x34>
    107a:	e9 81 00 00 00       	jmp    1100 <mem+0xb0>
    107f:	90                   	nop
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
    1080:	89 18                	mov    %ebx,(%eax)
    1082:	89 c3                	mov    %eax,%ebx

  printf(1, "mem test\n");
  ppid = getpid();
  if((pid = fork()) == 0){
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
    1084:	83 ec 0c             	sub    $0xc,%esp
    1087:	68 11 27 00 00       	push   $0x2711
    108c:	e8 9f 38 00 00       	call   4930 <malloc>
    1091:	83 c4 10             	add    $0x10,%esp
    1094:	85 c0                	test   %eax,%eax
    1096:	75 e8                	jne    1080 <mem+0x30>
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
    1098:	85 db                	test   %ebx,%ebx
    109a:	74 18                	je     10b4 <mem+0x64>
    109c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
    10a0:	8b 3b                	mov    (%ebx),%edi
      free(m1);
    10a2:	83 ec 0c             	sub    $0xc,%esp
    10a5:	53                   	push   %ebx
    10a6:	89 fb                	mov    %edi,%ebx
    10a8:	e8 f3 37 00 00       	call   48a0 <free>
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
    10ad:	83 c4 10             	add    $0x10,%esp
    10b0:	85 db                	test   %ebx,%ebx
    10b2:	75 ec                	jne    10a0 <mem+0x50>
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    10b4:	83 ec 0c             	sub    $0xc,%esp
    10b7:	68 00 50 00 00       	push   $0x5000
    10bc:	e8 6f 38 00 00       	call   4930 <malloc>
    if(m1 == 0){
    10c1:	83 c4 10             	add    $0x10,%esp
    10c4:	85 c0                	test   %eax,%eax
    while(m1){
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    10c6:	89 c3                	mov    %eax,%ebx
    if(m1 == 0){
    10c8:	74 4d                	je     1117 <mem+0xc7>
      printf(1, "couldn't allocate mem?!!\n");
      kill(ppid);
      exit(0);
    }
    free(m1);
    10ca:	83 ec 0c             	sub    $0xc,%esp
    10cd:	53                   	push   %ebx
    10ce:	e8 cd 37 00 00       	call   48a0 <free>
    printf(1, "mem ok\n");
    10d3:	58                   	pop    %eax
    10d4:	5a                   	pop    %edx
    10d5:	68 44 4e 00 00       	push   $0x4e44
    10da:	6a 01                	push   $0x1
    10dc:	e8 1f 36 00 00       	call   4700 <printf>
    exit(0);
    10e1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10e8:	e8 c5 34 00 00       	call   45b2 <exit>
    10ed:	83 c4 10             	add    $0x10,%esp
  } else {
    wait(&status);
  }
}
    10f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10f3:	5b                   	pop    %ebx
    10f4:	5e                   	pop    %esi
    10f5:	5f                   	pop    %edi
    10f6:	5d                   	pop    %ebp
    10f7:	c3                   	ret    
    10f8:	90                   	nop
    10f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
    free(m1);
    printf(1, "mem ok\n");
    exit(0);
  } else {
    wait(&status);
    1100:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1103:	83 ec 0c             	sub    $0xc,%esp
    1106:	50                   	push   %eax
    1107:	e8 ae 34 00 00       	call   45ba <wait>
    110c:	83 c4 10             	add    $0x10,%esp
  }
}
    110f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1112:	5b                   	pop    %ebx
    1113:	5e                   	pop    %esi
    1114:	5f                   	pop    %edi
    1115:	5d                   	pop    %ebp
    1116:	c3                   	ret    
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    if(m1 == 0){
      printf(1, "couldn't allocate mem?!!\n");
    1117:	83 ec 08             	sub    $0x8,%esp
    111a:	68 2a 4e 00 00       	push   $0x4e2a
    111f:	6a 01                	push   $0x1
    1121:	e8 da 35 00 00       	call   4700 <printf>
      kill(ppid);
    1126:	89 34 24             	mov    %esi,(%esp)
    1129:	e8 b4 34 00 00       	call   45e2 <kill>
      exit(0);
    112e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1135:	e8 78 34 00 00       	call   45b2 <exit>
    113a:	83 c4 10             	add    $0x10,%esp
    113d:	eb 8b                	jmp    10ca <mem+0x7a>
    113f:	90                   	nop

00001140 <sharedfd>:

// two processes write to the same file descriptor
// is the offset shared? does inode locking work?
void
sharedfd(void)
{
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	57                   	push   %edi
    1144:	56                   	push   %esi
    1145:	53                   	push   %ebx
    1146:	83 ec 34             	sub    $0x34,%esp
  int fd, pid, i, n, nc, np;
  char buf[10];
  int status;     // Lab 1 Part 1b. -RB
  
  printf(1, "sharedfd test\n");
    1149:	68 4c 4e 00 00       	push   $0x4e4c
    114e:	6a 01                	push   $0x1
    1150:	e8 ab 35 00 00       	call   4700 <printf>

  unlink("sharedfd");
    1155:	c7 04 24 5b 4e 00 00 	movl   $0x4e5b,(%esp)
    115c:	e8 a1 34 00 00       	call   4602 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    1161:	5b                   	pop    %ebx
    1162:	5e                   	pop    %esi
    1163:	68 02 02 00 00       	push   $0x202
    1168:	68 5b 4e 00 00       	push   $0x4e5b
    116d:	e8 80 34 00 00       	call   45f2 <open>
  if(fd < 0){
    1172:	83 c4 10             	add    $0x10,%esp
    1175:	85 c0                	test   %eax,%eax
    1177:	0f 88 5d 01 00 00    	js     12da <sharedfd+0x19a>
    117d:	89 c7                	mov    %eax,%edi
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
  memset(buf, pid==0?'c':'p', sizeof(buf));
    117f:	8d 75 de             	lea    -0x22(%ebp),%esi
    1182:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
    1187:	e8 1e 34 00 00       	call   45aa <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    118c:	83 f8 01             	cmp    $0x1,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
    118f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1192:	19 c0                	sbb    %eax,%eax
    1194:	83 ec 04             	sub    $0x4,%esp
    1197:	83 e0 f3             	and    $0xfffffff3,%eax
    119a:	6a 0a                	push   $0xa
    119c:	83 c0 70             	add    $0x70,%eax
    119f:	50                   	push   %eax
    11a0:	56                   	push   %esi
    11a1:	e8 7a 32 00 00       	call   4420 <memset>
    11a6:	83 c4 10             	add    $0x10,%esp
    11a9:	eb 0a                	jmp    11b5 <sharedfd+0x75>
    11ab:	90                   	nop
    11ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 1000; i++){
    11b0:	83 eb 01             	sub    $0x1,%ebx
    11b3:	74 26                	je     11db <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    11b5:	83 ec 04             	sub    $0x4,%esp
    11b8:	6a 0a                	push   $0xa
    11ba:	56                   	push   %esi
    11bb:	57                   	push   %edi
    11bc:	e8 11 34 00 00       	call   45d2 <write>
    11c1:	83 c4 10             	add    $0x10,%esp
    11c4:	83 f8 0a             	cmp    $0xa,%eax
    11c7:	74 e7                	je     11b0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    11c9:	83 ec 08             	sub    $0x8,%esp
    11cc:	68 4c 5b 00 00       	push   $0x5b4c
    11d1:	6a 01                	push   $0x1
    11d3:	e8 28 35 00 00       	call   4700 <printf>
      break;
    11d8:	83 c4 10             	add    $0x10,%esp
    }
  }
  if(pid == 0)
    11db:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    11de:	85 c9                	test   %ecx,%ecx
    11e0:	74 7d                	je     125f <sharedfd+0x11f>
    exit(0);
  else
    wait(&status);
    11e2:	8d 45 d8             	lea    -0x28(%ebp),%eax
    11e5:	83 ec 0c             	sub    $0xc,%esp
    11e8:	50                   	push   %eax
    11e9:	e8 cc 33 00 00       	call   45ba <wait>
    11ee:	83 c4 10             	add    $0x10,%esp
  close(fd);
    11f1:	83 ec 0c             	sub    $0xc,%esp
    11f4:	31 db                	xor    %ebx,%ebx
    11f6:	57                   	push   %edi
    11f7:	8d 7d e8             	lea    -0x18(%ebp),%edi
    11fa:	e8 db 33 00 00       	call   45da <close>
  fd = open("sharedfd", 0);
    11ff:	58                   	pop    %eax
    1200:	5a                   	pop    %edx
    1201:	6a 00                	push   $0x0
    1203:	68 5b 4e 00 00       	push   $0x4e5b
    1208:	e8 e5 33 00 00       	call   45f2 <open>
  if(fd < 0){
    120d:	83 c4 10             	add    $0x10,%esp
    1210:	31 d2                	xor    %edx,%edx
    1212:	85 c0                	test   %eax,%eax
  if(pid == 0)
    exit(0);
  else
    wait(&status);
  close(fd);
  fd = open("sharedfd", 0);
    1214:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    1217:	0f 88 d7 00 00 00    	js     12f4 <sharedfd+0x1b4>
    121d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1220:	83 ec 04             	sub    $0x4,%esp
    1223:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1226:	6a 0a                	push   $0xa
    1228:	56                   	push   %esi
    1229:	ff 75 d0             	pushl  -0x30(%ebp)
    122c:	e8 99 33 00 00       	call   45ca <read>
    1231:	83 c4 10             	add    $0x10,%esp
    1234:	85 c0                	test   %eax,%eax
    1236:	7e 36                	jle    126e <sharedfd+0x12e>
    1238:	89 f0                	mov    %esi,%eax
    123a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    123d:	eb 13                	jmp    1252 <sharedfd+0x112>
    123f:	90                   	nop
    for(i = 0; i < sizeof(buf); i++){
      if(buf[i] == 'c')
        nc++;
      if(buf[i] == 'p')
        np++;
    1240:	80 f9 70             	cmp    $0x70,%cl
    1243:	0f 94 c1             	sete   %cl
    1246:	0f b6 c9             	movzbl %cl,%ecx
    1249:	01 cb                	add    %ecx,%ebx
    124b:	83 c0 01             	add    $0x1,%eax
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i = 0; i < sizeof(buf); i++){
    124e:	39 c7                	cmp    %eax,%edi
    1250:	74 ce                	je     1220 <sharedfd+0xe0>
      if(buf[i] == 'c')
    1252:	0f b6 08             	movzbl (%eax),%ecx
    1255:	80 f9 63             	cmp    $0x63,%cl
    1258:	75 e6                	jne    1240 <sharedfd+0x100>
        nc++;
    125a:	83 c2 01             	add    $0x1,%edx
    125d:	eb ec                	jmp    124b <sharedfd+0x10b>
      printf(1, "fstests: write sharedfd failed\n");
      break;
    }
  }
  if(pid == 0)
    exit(0);
    125f:	83 ec 0c             	sub    $0xc,%esp
    1262:	6a 00                	push   $0x0
    1264:	e8 49 33 00 00       	call   45b2 <exit>
    1269:	83 c4 10             	add    $0x10,%esp
    126c:	eb 83                	jmp    11f1 <sharedfd+0xb1>
        nc++;
      if(buf[i] == 'p')
        np++;
    }
  }
  close(fd);
    126e:	83 ec 0c             	sub    $0xc,%esp
    1271:	ff 75 d0             	pushl  -0x30(%ebp)
    1274:	e8 61 33 00 00       	call   45da <close>
  unlink("sharedfd");
    1279:	c7 04 24 5b 4e 00 00 	movl   $0x4e5b,(%esp)
    1280:	e8 7d 33 00 00       	call   4602 <unlink>
  if(nc == 10000 && np == 10000){
    1285:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1288:	83 c4 10             	add    $0x10,%esp
    128b:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1291:	75 22                	jne    12b5 <sharedfd+0x175>
    1293:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1299:	75 1a                	jne    12b5 <sharedfd+0x175>
    printf(1, "sharedfd ok\n");
    129b:	83 ec 08             	sub    $0x8,%esp
    129e:	68 64 4e 00 00       	push   $0x4e64
    12a3:	6a 01                	push   $0x1
    12a5:	e8 56 34 00 00       	call   4700 <printf>
    12aa:	83 c4 10             	add    $0x10,%esp
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    12ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12b0:	5b                   	pop    %ebx
    12b1:	5e                   	pop    %esi
    12b2:	5f                   	pop    %edi
    12b3:	5d                   	pop    %ebp
    12b4:	c3                   	ret    
  close(fd);
  unlink("sharedfd");
  if(nc == 10000 && np == 10000){
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    12b5:	53                   	push   %ebx
    12b6:	52                   	push   %edx
    12b7:	68 71 4e 00 00       	push   $0x4e71
    12bc:	6a 01                	push   $0x1
    12be:	e8 3d 34 00 00       	call   4700 <printf>
    exit(0);
    12c3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12ca:	e8 e3 32 00 00       	call   45b2 <exit>
    12cf:	83 c4 10             	add    $0x10,%esp
  }
}
    12d2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12d5:	5b                   	pop    %ebx
    12d6:	5e                   	pop    %esi
    12d7:	5f                   	pop    %edi
    12d8:	5d                   	pop    %ebp
    12d9:	c3                   	ret    
  printf(1, "sharedfd test\n");

  unlink("sharedfd");
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    12da:	83 ec 08             	sub    $0x8,%esp
    12dd:	68 20 5b 00 00       	push   $0x5b20
    12e2:	6a 01                	push   $0x1
    12e4:	e8 17 34 00 00       	call   4700 <printf>
    return;
    12e9:	83 c4 10             	add    $0x10,%esp
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    12ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12ef:	5b                   	pop    %ebx
    12f0:	5e                   	pop    %esi
    12f1:	5f                   	pop    %edi
    12f2:	5d                   	pop    %ebp
    12f3:	c3                   	ret    
  else
    wait(&status);
  close(fd);
  fd = open("sharedfd", 0);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for reading\n");
    12f4:	83 ec 08             	sub    $0x8,%esp
    12f7:	68 6c 5b 00 00       	push   $0x5b6c
    12fc:	6a 01                	push   $0x1
    12fe:	e8 fd 33 00 00       	call   4700 <printf>
    return;
    1303:	83 c4 10             	add    $0x10,%esp
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    1306:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1309:	5b                   	pop    %ebx
    130a:	5e                   	pop    %esi
    130b:	5f                   	pop    %edi
    130c:	5d                   	pop    %ebp
    130d:	c3                   	ret    
    130e:	66 90                	xchg   %ax,%ax

00001310 <fourfiles>:

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    1310:	55                   	push   %ebp
    1311:	89 e5                	mov    %esp,%ebp
    1313:	57                   	push   %edi
    1314:	56                   	push   %esi
    1315:	53                   	push   %ebx
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "fourfiles test\n");
    1316:	be 30 00 00 00       	mov    $0x30,%esi
    131b:	bb 86 4e 00 00       	mov    $0x4e86,%ebx

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    1320:	83 ec 44             	sub    $0x44,%esp
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    1323:	c7 45 d8 86 4e 00 00 	movl   $0x4e86,-0x28(%ebp)
    132a:	c7 45 dc cf 4f 00 00 	movl   $0x4fcf,-0x24(%ebp)
  char *fname;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "fourfiles test\n");
    1331:	68 8c 4e 00 00       	push   $0x4e8c
    1336:	6a 01                	push   $0x1
// time, to test block allocation.
void
fourfiles(void)
{
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    1338:	c7 45 e0 d3 4f 00 00 	movl   $0x4fd3,-0x20(%ebp)
    133f:	c7 45 e4 89 4e 00 00 	movl   $0x4e89,-0x1c(%ebp)
  char *fname;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "fourfiles test\n");
    1346:	e8 b5 33 00 00       	call   4700 <printf>
    134b:	83 c4 10             	add    $0x10,%esp

  for(pi = 0; pi < 4; pi++){
    fname = names[pi];
    unlink(fname);
    134e:	83 ec 0c             	sub    $0xc,%esp
    1351:	53                   	push   %ebx
    1352:	e8 ab 32 00 00       	call   4602 <unlink>

    pid = fork();
    1357:	e8 4e 32 00 00       	call   45aa <fork>
    if(pid < 0){
    135c:	83 c4 10             	add    $0x10,%esp
    135f:	85 c0                	test   %eax,%eax
    1361:	0f 88 c0 01 00 00    	js     1527 <fourfiles+0x217>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
    1367:	74 15                	je     137e <fourfiles+0x6e>
    1369:	83 c6 01             	add    $0x1,%esi
  char *fname;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    136c:	83 fe 34             	cmp    $0x34,%esi
    136f:	0f 84 99 00 00 00    	je     140e <fourfiles+0xfe>
    1375:	8b 9c b5 18 ff ff ff 	mov    -0xe8(%ebp,%esi,4),%ebx
    137c:	eb d0                	jmp    134e <fourfiles+0x3e>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    137e:	83 ec 08             	sub    $0x8,%esp
    1381:	68 02 02 00 00       	push   $0x202
    1386:	53                   	push   %ebx
    1387:	e8 66 32 00 00       	call   45f2 <open>
      if(fd < 0){
    138c:	83 c4 10             	add    $0x10,%esp
    138f:	85 c0                	test   %eax,%eax
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    1391:	89 c7                	mov    %eax,%edi
      if(fd < 0){
    1393:	0f 88 b1 01 00 00    	js     154a <fourfiles+0x23a>
        printf(1, "create failed\n");
        exit(0);
      }

      memset(buf, '0'+pi, 512);
    1399:	83 ec 04             	sub    $0x4,%esp
    139c:	bb 0c 00 00 00       	mov    $0xc,%ebx
    13a1:	68 00 02 00 00       	push   $0x200
    13a6:	56                   	push   %esi
    13a7:	68 e0 92 00 00       	push   $0x92e0
    13ac:	e8 6f 30 00 00       	call   4420 <memset>
    13b1:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 12; i++){
        if((n = write(fd, buf, 500)) != 500){
    13b4:	83 ec 04             	sub    $0x4,%esp
    13b7:	68 f4 01 00 00       	push   $0x1f4
    13bc:	68 e0 92 00 00       	push   $0x92e0
    13c1:	57                   	push   %edi
    13c2:	e8 0b 32 00 00       	call   45d2 <write>
    13c7:	83 c4 10             	add    $0x10,%esp
    13ca:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    13cf:	74 1f                	je     13f0 <fourfiles+0xe0>
          printf(1, "write failed %d\n", n);
    13d1:	83 ec 04             	sub    $0x4,%esp
    13d4:	50                   	push   %eax
    13d5:	68 9c 4e 00 00       	push   $0x4e9c
    13da:	6a 01                	push   $0x1
    13dc:	e8 1f 33 00 00       	call   4700 <printf>
          exit(0);
    13e1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13e8:	e8 c5 31 00 00       	call   45b2 <exit>
    13ed:	83 c4 10             	add    $0x10,%esp
        printf(1, "create failed\n");
        exit(0);
      }

      memset(buf, '0'+pi, 512);
      for(i = 0; i < 12; i++){
    13f0:	83 eb 01             	sub    $0x1,%ebx
    13f3:	75 bf                	jne    13b4 <fourfiles+0xa4>
        if((n = write(fd, buf, 500)) != 500){
          printf(1, "write failed %d\n", n);
          exit(0);
        }
      }
      exit(0);
    13f5:	83 ec 0c             	sub    $0xc,%esp
    13f8:	83 c6 01             	add    $0x1,%esi
    13fb:	6a 00                	push   $0x0
    13fd:	e8 b0 31 00 00       	call   45b2 <exit>
    1402:	83 c4 10             	add    $0x10,%esp
  char *fname;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    1405:	83 fe 34             	cmp    $0x34,%esi
    1408:	0f 85 67 ff ff ff    	jne    1375 <fourfiles+0x65>
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(&status);
    140e:	8d 5d d4             	lea    -0x2c(%ebp),%ebx
    1411:	83 ec 0c             	sub    $0xc,%esp
    1414:	be 30 00 00 00       	mov    $0x30,%esi
    1419:	53                   	push   %ebx
    141a:	e8 9b 31 00 00       	call   45ba <wait>
    141f:	89 1c 24             	mov    %ebx,(%esp)
    1422:	e8 93 31 00 00       	call   45ba <wait>
    1427:	89 1c 24             	mov    %ebx,(%esp)
    142a:	e8 8b 31 00 00       	call   45ba <wait>
    142f:	89 1c 24             	mov    %ebx,(%esp)
    1432:	e8 83 31 00 00       	call   45ba <wait>
    1437:	83 c4 10             	add    $0x10,%esp
    143a:	c7 45 bc 86 4e 00 00 	movl   $0x4e86,-0x44(%ebp)
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    1441:	83 ec 08             	sub    $0x8,%esp
    1444:	6a 00                	push   $0x0
    1446:	ff 75 bc             	pushl  -0x44(%ebp)
    1449:	e8 a4 31 00 00       	call   45f2 <open>
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
    144e:	83 c4 10             	add    $0x10,%esp
    wait(&status);
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    1451:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    total = 0;
    1454:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    145b:	90                   	nop
    145c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1460:	83 ec 04             	sub    $0x4,%esp
    1463:	68 00 20 00 00       	push   $0x2000
    1468:	68 e0 92 00 00       	push   $0x92e0
    146d:	ff 75 c4             	pushl  -0x3c(%ebp)
    1470:	e8 55 31 00 00       	call   45ca <read>
    1475:	83 c4 10             	add    $0x10,%esp
    1478:	85 c0                	test   %eax,%eax
    147a:	89 c3                	mov    %eax,%ebx
    147c:	7e 37                	jle    14b5 <fourfiles+0x1a5>
    147e:	31 ff                	xor    %edi,%edi
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
    1480:	0f be 87 e0 92 00 00 	movsbl 0x92e0(%edi),%eax
    1487:	39 f0                	cmp    %esi,%eax
    1489:	74 1e                	je     14a9 <fourfiles+0x199>
          printf(1, "wrong char\n");
    148b:	83 ec 08             	sub    $0x8,%esp
    148e:	68 ad 4e 00 00       	push   $0x4ead
    1493:	6a 01                	push   $0x1
    1495:	e8 66 32 00 00       	call   4700 <printf>
          exit(0);
    149a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14a1:	e8 0c 31 00 00       	call   45b2 <exit>
    14a6:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
    14a9:	83 c7 01             	add    $0x1,%edi
    14ac:	39 fb                	cmp    %edi,%ebx
    14ae:	75 d0                	jne    1480 <fourfiles+0x170>
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
          exit(0);
        }
      }
      total += n;
    14b0:	01 5d c0             	add    %ebx,-0x40(%ebp)
    14b3:	eb ab                	jmp    1460 <fourfiles+0x150>
    }
    close(fd);
    14b5:	83 ec 0c             	sub    $0xc,%esp
    14b8:	ff 75 c4             	pushl  -0x3c(%ebp)
    14bb:	e8 1a 31 00 00       	call   45da <close>
    if(total != 12*500){
    14c0:	8b 45 c0             	mov    -0x40(%ebp),%eax
    14c3:	83 c4 10             	add    $0x10,%esp
    14c6:	3d 70 17 00 00       	cmp    $0x1770,%eax
    14cb:	74 1f                	je     14ec <fourfiles+0x1dc>
      printf(1, "wrong length %d\n", total);
    14cd:	83 ec 04             	sub    $0x4,%esp
    14d0:	50                   	push   %eax
    14d1:	68 b9 4e 00 00       	push   $0x4eb9
    14d6:	6a 01                	push   $0x1
    14d8:	e8 23 32 00 00       	call   4700 <printf>
      exit(0);
    14dd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14e4:	e8 c9 30 00 00       	call   45b2 <exit>
    14e9:	83 c4 10             	add    $0x10,%esp
    }
    unlink(fname);
    14ec:	83 ec 0c             	sub    $0xc,%esp
    14ef:	ff 75 bc             	pushl  -0x44(%ebp)
    14f2:	83 c6 01             	add    $0x1,%esi
    14f5:	e8 08 31 00 00       	call   4602 <unlink>

  for(pi = 0; pi < 4; pi++){
    wait(&status);
  }

  for(i = 0; i < 2; i++){
    14fa:	83 c4 10             	add    $0x10,%esp
    14fd:	83 fe 32             	cmp    $0x32,%esi
    1500:	74 0b                	je     150d <fourfiles+0x1fd>
    1502:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1505:	89 45 bc             	mov    %eax,-0x44(%ebp)
    1508:	e9 34 ff ff ff       	jmp    1441 <fourfiles+0x131>
      exit(0);
    }
    unlink(fname);
  }

  printf(1, "fourfiles ok\n");
    150d:	83 ec 08             	sub    $0x8,%esp
    1510:	68 ca 4e 00 00       	push   $0x4eca
    1515:	6a 01                	push   $0x1
    1517:	e8 e4 31 00 00       	call   4700 <printf>
}
    151c:	83 c4 10             	add    $0x10,%esp
    151f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1522:	5b                   	pop    %ebx
    1523:	5e                   	pop    %esi
    1524:	5f                   	pop    %edi
    1525:	5d                   	pop    %ebp
    1526:	c3                   	ret    
    fname = names[pi];
    unlink(fname);

    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1527:	83 ec 08             	sub    $0x8,%esp
    152a:	68 61 59 00 00       	push   $0x5961
    152f:	6a 01                	push   $0x1
    1531:	e8 ca 31 00 00       	call   4700 <printf>
      exit(0);
    1536:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    153d:	e8 70 30 00 00       	call   45b2 <exit>
    1542:	83 c4 10             	add    $0x10,%esp
    1545:	e9 1f fe ff ff       	jmp    1369 <fourfiles+0x59>
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "create failed\n");
    154a:	83 ec 08             	sub    $0x8,%esp
    154d:	68 27 51 00 00       	push   $0x5127
    1552:	6a 01                	push   $0x1
    1554:	e8 a7 31 00 00       	call   4700 <printf>
        exit(0);
    1559:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1560:	e8 4d 30 00 00       	call   45b2 <exit>
    1565:	83 c4 10             	add    $0x10,%esp
    1568:	e9 2c fe ff ff       	jmp    1399 <fourfiles+0x89>
    156d:	8d 76 00             	lea    0x0(%esi),%esi

00001570 <createdelete>:
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    1570:	55                   	push   %ebp
    1571:	89 e5                	mov    %esp,%ebp
    1573:	57                   	push   %edi
    1574:	56                   	push   %esi
    1575:	53                   	push   %ebx
    1576:	8d 7d c8             	lea    -0x38(%ebp),%edi
    1579:	83 ec 54             	sub    $0x54,%esp
  enum { N = 20 };
  int pid, i, fd, pi;
  char name[32];
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "createdelete test\n");
    157c:	68 d8 4e 00 00       	push   $0x4ed8
    1581:	6a 01                	push   $0x1
    1583:	e8 78 31 00 00       	call   4700 <printf>
    1588:	83 c4 10             	add    $0x10,%esp
    158b:	c6 45 b7 70          	movb   $0x70,-0x49(%ebp)

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    158f:	e8 16 30 00 00       	call   45aa <fork>
    if(pid < 0){
    1594:	85 c0                	test   %eax,%eax
    1596:	0f 88 18 02 00 00    	js     17b4 <createdelete+0x244>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
    159c:	0f 85 ab 00 00 00    	jne    164d <createdelete+0xdd>
      name[0] = 'p' + pi;
    15a2:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
      name[2] = '\0';
    15a6:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    15aa:	be 01 00 00 00       	mov    $0x1,%esi
    15af:	31 db                	xor    %ebx,%ebx
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    15b1:	88 45 c8             	mov    %al,-0x38(%ebp)
    15b4:	eb 15                	jmp    15cb <createdelete+0x5b>
    15b6:	8d 76 00             	lea    0x0(%esi),%esi
    15b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      name[2] = '\0';
      for(i = 0; i < N; i++){
    15c0:	83 fe 14             	cmp    $0x14,%esi
    15c3:	74 7b                	je     1640 <createdelete+0xd0>
    15c5:	83 c3 01             	add    $0x1,%ebx
    15c8:	83 c6 01             	add    $0x1,%esi
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
    15cb:	83 ec 08             	sub    $0x8,%esp

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
    15ce:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    15d1:	68 02 02 00 00       	push   $0x202
    15d6:	57                   	push   %edi

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
    15d7:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    15da:	e8 13 30 00 00       	call   45f2 <open>
        if(fd < 0){
    15df:	83 c4 10             	add    $0x10,%esp
    15e2:	85 c0                	test   %eax,%eax
    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
    15e4:	89 c2                	mov    %eax,%edx
        if(fd < 0){
    15e6:	0f 88 74 01 00 00    	js     1760 <createdelete+0x1f0>
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
    15ec:	83 ec 0c             	sub    $0xc,%esp
    15ef:	52                   	push   %edx
    15f0:	e8 e5 2f 00 00       	call   45da <close>
        if(i > 0 && (i % 2 ) == 0){
    15f5:	83 c4 10             	add    $0x10,%esp
    15f8:	85 db                	test   %ebx,%ebx
    15fa:	74 c9                	je     15c5 <createdelete+0x55>
    15fc:	f6 c3 01             	test   $0x1,%bl
    15ff:	75 bf                	jne    15c0 <createdelete+0x50>
          name[1] = '0' + (i / 2);
          if(unlink(name) < 0){
    1601:	83 ec 0c             	sub    $0xc,%esp
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    1604:	89 d8                	mov    %ebx,%eax
    1606:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    1608:	57                   	push   %edi
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    1609:	83 c0 30             	add    $0x30,%eax
    160c:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    160f:	e8 ee 2f 00 00       	call   4602 <unlink>
    1614:	83 c4 10             	add    $0x10,%esp
    1617:	85 c0                	test   %eax,%eax
    1619:	79 a5                	jns    15c0 <createdelete+0x50>
            printf(1, "unlink failed\n");
    161b:	83 ec 08             	sub    $0x8,%esp
    161e:	68 d9 4a 00 00       	push   $0x4ad9
    1623:	6a 01                	push   $0x1
    1625:	e8 d6 30 00 00       	call   4700 <printf>
            exit(0);
    162a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1631:	e8 7c 2f 00 00       	call   45b2 <exit>
    1636:	83 c4 10             	add    $0x10,%esp
    }

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
      for(i = 0; i < N; i++){
    1639:	83 fe 14             	cmp    $0x14,%esi
    163c:	75 87                	jne    15c5 <createdelete+0x55>
    163e:	66 90                	xchg   %ax,%ax
            printf(1, "unlink failed\n");
            exit(0);
          }
        }
      }
      exit(0);
    1640:	83 ec 0c             	sub    $0xc,%esp
    1643:	6a 00                	push   $0x0
    1645:	e8 68 2f 00 00       	call   45b2 <exit>
    164a:	83 c4 10             	add    $0x10,%esp
    164d:	80 45 b7 01          	addb   $0x1,-0x49(%ebp)
    1651:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
  char name[32];
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    1655:	3c 74                	cmp    $0x74,%al
    1657:	0f 85 32 ff ff ff    	jne    158f <createdelete+0x1f>
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(&status);
    165d:	8d 5d c4             	lea    -0x3c(%ebp),%ebx
    1660:	83 ec 0c             	sub    $0xc,%esp
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    1663:	31 f6                	xor    %esi,%esi
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(&status);
    1665:	53                   	push   %ebx
    1666:	e8 4f 2f 00 00       	call   45ba <wait>
    166b:	89 1c 24             	mov    %ebx,(%esp)
    166e:	e8 47 2f 00 00       	call   45ba <wait>
    1673:	89 1c 24             	mov    %ebx,(%esp)
    1676:	e8 3f 2f 00 00       	call   45ba <wait>
    167b:	89 1c 24             	mov    %ebx,(%esp)
    167e:	e8 37 2f 00 00       	call   45ba <wait>
  }

  name[0] = name[1] = name[2] = 0;
    1683:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1687:	83 c4 10             	add    $0x10,%esp
    168a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1690:	8d 46 30             	lea    0x30(%esi),%eax
    1693:	85 f6                	test   %esi,%esi
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
    1695:	bb 70 00 00 00       	mov    $0x70,%ebx
    169a:	0f 94 c2             	sete   %dl
    169d:	83 fe 09             	cmp    $0x9,%esi
    16a0:	88 45 b7             	mov    %al,-0x49(%ebp)
    16a3:	0f 9f c0             	setg   %al
    16a6:	09 c2                	or     %eax,%edx
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    16a8:	8d 46 ff             	lea    -0x1(%esi),%eax
    16ab:	88 55 b6             	mov    %dl,-0x4a(%ebp)
    16ae:	89 45 b0             	mov    %eax,-0x50(%ebp)

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    16b1:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
      fd = open(name, 0);
    16b5:	83 ec 08             	sub    $0x8,%esp
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
    16b8:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
      fd = open(name, 0);
    16bb:	6a 00                	push   $0x0
    16bd:	57                   	push   %edi

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    16be:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    16c1:	e8 2c 2f 00 00       	call   45f2 <open>
    16c6:	89 c1                	mov    %eax,%ecx
      if((i == 0 || i >= N/2) && fd < 0){
    16c8:	c1 e8 1f             	shr    $0x1f,%eax
    16cb:	83 c4 10             	add    $0x10,%esp
    16ce:	84 c0                	test   %al,%al
    16d0:	74 0a                	je     16dc <createdelete+0x16c>
    16d2:	80 7d b6 00          	cmpb   $0x0,-0x4a(%ebp)
    16d6:	0f 85 b4 00 00 00    	jne    1790 <createdelete+0x220>
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    16dc:	83 7d b0 08          	cmpl   $0x8,-0x50(%ebp)
    16e0:	0f 86 01 01 00 00    	jbe    17e7 <createdelete+0x277>
        printf(1, "oops createdelete %s did exist\n", name);
        exit(0);
      }
      if(fd >= 0)
    16e6:	85 c9                	test   %ecx,%ecx
    16e8:	78 0c                	js     16f6 <createdelete+0x186>
        close(fd);
    16ea:	83 ec 0c             	sub    $0xc,%esp
    16ed:	51                   	push   %ecx
    16ee:	e8 e7 2e 00 00       	call   45da <close>
    16f3:	83 c4 10             	add    $0x10,%esp
    16f6:	83 c3 01             	add    $0x1,%ebx
    wait(&status);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    16f9:	80 fb 74             	cmp    $0x74,%bl
    16fc:	75 b3                	jne    16b1 <createdelete+0x141>
  for(pi = 0; pi < 4; pi++){
    wait(&status);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    16fe:	83 c6 01             	add    $0x1,%esi
    1701:	83 fe 14             	cmp    $0x14,%esi
    1704:	75 8a                	jne    1690 <createdelete+0x120>
    1706:	be 70 00 00 00       	mov    $0x70,%esi
    170b:	90                   	nop
    170c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1710:	8d 46 c0             	lea    -0x40(%esi),%eax
    1713:	bb 04 00 00 00       	mov    $0x4,%ebx
    1718:	88 45 b7             	mov    %al,-0x49(%ebp)
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    171b:	89 f0                	mov    %esi,%eax
      name[1] = '0' + i;
      unlink(name);
    171d:	83 ec 0c             	sub    $0xc,%esp
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    1720:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1723:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
      unlink(name);
    1727:	57                   	push   %edi
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
      name[1] = '0' + i;
    1728:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    172b:	e8 d2 2e 00 00       	call   4602 <unlink>
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    1730:	83 c4 10             	add    $0x10,%esp
    1733:	83 eb 01             	sub    $0x1,%ebx
    1736:	75 e3                	jne    171b <createdelete+0x1ab>
    1738:	83 c6 01             	add    $0x1,%esi
      if(fd >= 0)
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    173b:	89 f0                	mov    %esi,%eax
    173d:	3c 84                	cmp    $0x84,%al
    173f:	75 cf                	jne    1710 <createdelete+0x1a0>
      name[1] = '0' + i;
      unlink(name);
    }
  }

  printf(1, "createdelete ok\n");
    1741:	83 ec 08             	sub    $0x8,%esp
    1744:	68 eb 4e 00 00       	push   $0x4eeb
    1749:	6a 01                	push   $0x1
    174b:	e8 b0 2f 00 00       	call   4700 <printf>
}
    1750:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1753:	5b                   	pop    %ebx
    1754:	5e                   	pop    %esi
    1755:	5f                   	pop    %edi
    1756:	5d                   	pop    %ebp
    1757:	c3                   	ret    
    1758:	90                   	nop
    1759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
        if(fd < 0){
          printf(1, "create failed\n");
    1760:	83 ec 08             	sub    $0x8,%esp
    1763:	89 45 b0             	mov    %eax,-0x50(%ebp)
    1766:	68 27 51 00 00       	push   $0x5127
    176b:	6a 01                	push   $0x1
    176d:	e8 8e 2f 00 00       	call   4700 <printf>
          exit(0);
    1772:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1779:	e8 34 2e 00 00       	call   45b2 <exit>
    177e:	83 c4 10             	add    $0x10,%esp
    1781:	8b 55 b0             	mov    -0x50(%ebp),%edx
    1784:	e9 63 fe ff ff       	jmp    15ec <createdelete+0x7c>
    1789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
    1790:	83 ec 04             	sub    $0x4,%esp
    1793:	57                   	push   %edi
    1794:	68 98 5b 00 00       	push   $0x5b98
    1799:	6a 01                	push   $0x1
    179b:	e8 60 2f 00 00       	call   4700 <printf>
        exit(0);
    17a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17a7:	e8 06 2e 00 00       	call   45b2 <exit>
    17ac:	83 c4 10             	add    $0x10,%esp
    17af:	e9 42 ff ff ff       	jmp    16f6 <createdelete+0x186>
  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    17b4:	83 ec 08             	sub    $0x8,%esp
    17b7:	68 61 59 00 00       	push   $0x5961
    17bc:	6a 01                	push   $0x1
    17be:	e8 3d 2f 00 00       	call   4700 <printf>
      exit(0);
    17c3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17ca:	e8 e3 2d 00 00       	call   45b2 <exit>
    17cf:	80 45 b7 01          	addb   $0x1,-0x49(%ebp)
    17d3:	83 c4 10             	add    $0x10,%esp
    17d6:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
  char name[32];
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    17da:	3c 74                	cmp    $0x74,%al
    17dc:	0f 85 ad fd ff ff    	jne    158f <createdelete+0x1f>
    17e2:	e9 76 fe ff ff       	jmp    165d <createdelete+0xed>
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    17e7:	85 c9                	test   %ecx,%ecx
    17e9:	89 4d ac             	mov    %ecx,-0x54(%ebp)
    17ec:	0f 88 04 ff ff ff    	js     16f6 <createdelete+0x186>
        printf(1, "oops createdelete %s did exist\n", name);
    17f2:	83 ec 04             	sub    $0x4,%esp
    17f5:	57                   	push   %edi
    17f6:	68 bc 5b 00 00       	push   $0x5bbc
    17fb:	6a 01                	push   $0x1
    17fd:	e8 fe 2e 00 00       	call   4700 <printf>
        exit(0);
    1802:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1809:	e8 a4 2d 00 00       	call   45b2 <exit>
    180e:	83 c4 10             	add    $0x10,%esp
    1811:	8b 4d ac             	mov    -0x54(%ebp),%ecx
    1814:	e9 d1 fe ff ff       	jmp    16ea <createdelete+0x17a>
    1819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001820 <unlinkread>:
}

// can I unlink a file and still read it?
void
unlinkread(void)
{
    1820:	55                   	push   %ebp
    1821:	89 e5                	mov    %esp,%ebp
    1823:	56                   	push   %esi
    1824:	53                   	push   %ebx
  int fd, fd1;

  printf(1, "unlinkread test\n");
    1825:	83 ec 08             	sub    $0x8,%esp
    1828:	68 fc 4e 00 00       	push   $0x4efc
    182d:	6a 01                	push   $0x1
    182f:	e8 cc 2e 00 00       	call   4700 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1834:	5e                   	pop    %esi
    1835:	58                   	pop    %eax
    1836:	68 02 02 00 00       	push   $0x202
    183b:	68 0d 4f 00 00       	push   $0x4f0d
    1840:	e8 ad 2d 00 00       	call   45f2 <open>
  if(fd < 0){
    1845:	83 c4 10             	add    $0x10,%esp
    1848:	85 c0                	test   %eax,%eax
unlinkread(void)
{
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
    184a:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    184c:	0f 88 8e 01 00 00    	js     19e0 <unlinkread+0x1c0>
    printf(1, "create unlinkread failed\n");
    exit(0);
  }
  write(fd, "hello", 5);
    1852:	83 ec 04             	sub    $0x4,%esp
    1855:	6a 05                	push   $0x5
    1857:	68 32 4f 00 00       	push   $0x4f32
    185c:	53                   	push   %ebx
    185d:	e8 70 2d 00 00       	call   45d2 <write>
  close(fd);
    1862:	89 1c 24             	mov    %ebx,(%esp)
    1865:	e8 70 2d 00 00       	call   45da <close>

  fd = open("unlinkread", O_RDWR);
    186a:	59                   	pop    %ecx
    186b:	5b                   	pop    %ebx
    186c:	6a 02                	push   $0x2
    186e:	68 0d 4f 00 00       	push   $0x4f0d
    1873:	e8 7a 2d 00 00       	call   45f2 <open>
  if(fd < 0){
    1878:	83 c4 10             	add    $0x10,%esp
    187b:	85 c0                	test   %eax,%eax
    exit(0);
  }
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
    187d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    187f:	0f 88 33 01 00 00    	js     19b8 <unlinkread+0x198>
    printf(1, "open unlinkread failed\n");
    exit(0);
  }
  if(unlink("unlinkread") != 0){
    1885:	83 ec 0c             	sub    $0xc,%esp
    1888:	68 0d 4f 00 00       	push   $0x4f0d
    188d:	e8 70 2d 00 00       	call   4602 <unlink>
    1892:	83 c4 10             	add    $0x10,%esp
    1895:	85 c0                	test   %eax,%eax
    1897:	0f 85 f3 00 00 00    	jne    1990 <unlinkread+0x170>
    printf(1, "unlink unlinkread failed\n");
    exit(0);
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    189d:	83 ec 08             	sub    $0x8,%esp
    18a0:	68 02 02 00 00       	push   $0x202
    18a5:	68 0d 4f 00 00       	push   $0x4f0d
    18aa:	e8 43 2d 00 00       	call   45f2 <open>
  write(fd1, "yyy", 3);
    18af:	83 c4 0c             	add    $0xc,%esp
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    exit(0);
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    18b2:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    18b4:	6a 03                	push   $0x3
    18b6:	68 6a 4f 00 00       	push   $0x4f6a
    18bb:	50                   	push   %eax
    18bc:	e8 11 2d 00 00       	call   45d2 <write>
  close(fd1);
    18c1:	89 34 24             	mov    %esi,(%esp)
    18c4:	e8 11 2d 00 00       	call   45da <close>

  if(read(fd, buf, sizeof(buf)) != 5){
    18c9:	83 c4 0c             	add    $0xc,%esp
    18cc:	68 00 20 00 00       	push   $0x2000
    18d1:	68 e0 92 00 00       	push   $0x92e0
    18d6:	53                   	push   %ebx
    18d7:	e8 ee 2c 00 00       	call   45ca <read>
    18dc:	83 c4 10             	add    $0x10,%esp
    18df:	83 f8 05             	cmp    $0x5,%eax
    18e2:	74 1e                	je     1902 <unlinkread+0xe2>
    printf(1, "unlinkread read failed");
    18e4:	83 ec 08             	sub    $0x8,%esp
    18e7:	68 6e 4f 00 00       	push   $0x4f6e
    18ec:	6a 01                	push   $0x1
    18ee:	e8 0d 2e 00 00       	call   4700 <printf>
    exit(0);
    18f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    18fa:	e8 b3 2c 00 00       	call   45b2 <exit>
    18ff:	83 c4 10             	add    $0x10,%esp
  }
  if(buf[0] != 'h'){
    1902:	80 3d e0 92 00 00 68 	cmpb   $0x68,0x92e0
    1909:	74 1e                	je     1929 <unlinkread+0x109>
    printf(1, "unlinkread wrong data\n");
    190b:	83 ec 08             	sub    $0x8,%esp
    190e:	68 85 4f 00 00       	push   $0x4f85
    1913:	6a 01                	push   $0x1
    1915:	e8 e6 2d 00 00       	call   4700 <printf>
    exit(0);
    191a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1921:	e8 8c 2c 00 00       	call   45b2 <exit>
    1926:	83 c4 10             	add    $0x10,%esp
  }
  if(write(fd, buf, 10) != 10){
    1929:	83 ec 04             	sub    $0x4,%esp
    192c:	6a 0a                	push   $0xa
    192e:	68 e0 92 00 00       	push   $0x92e0
    1933:	53                   	push   %ebx
    1934:	e8 99 2c 00 00       	call   45d2 <write>
    1939:	83 c4 10             	add    $0x10,%esp
    193c:	83 f8 0a             	cmp    $0xa,%eax
    193f:	74 1e                	je     195f <unlinkread+0x13f>
    printf(1, "unlinkread write failed\n");
    1941:	83 ec 08             	sub    $0x8,%esp
    1944:	68 9c 4f 00 00       	push   $0x4f9c
    1949:	6a 01                	push   $0x1
    194b:	e8 b0 2d 00 00       	call   4700 <printf>
    exit(0);
    1950:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1957:	e8 56 2c 00 00       	call   45b2 <exit>
    195c:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    195f:	83 ec 0c             	sub    $0xc,%esp
    1962:	53                   	push   %ebx
    1963:	e8 72 2c 00 00       	call   45da <close>
  unlink("unlinkread");
    1968:	c7 04 24 0d 4f 00 00 	movl   $0x4f0d,(%esp)
    196f:	e8 8e 2c 00 00       	call   4602 <unlink>
  printf(1, "unlinkread ok\n");
    1974:	58                   	pop    %eax
    1975:	5a                   	pop    %edx
    1976:	68 b5 4f 00 00       	push   $0x4fb5
    197b:	6a 01                	push   $0x1
    197d:	e8 7e 2d 00 00       	call   4700 <printf>
}
    1982:	83 c4 10             	add    $0x10,%esp
    1985:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1988:	5b                   	pop    %ebx
    1989:	5e                   	pop    %esi
    198a:	5d                   	pop    %ebp
    198b:	c3                   	ret    
    198c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    exit(0);
  }
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    1990:	83 ec 08             	sub    $0x8,%esp
    1993:	68 50 4f 00 00       	push   $0x4f50
    1998:	6a 01                	push   $0x1
    199a:	e8 61 2d 00 00       	call   4700 <printf>
    exit(0);
    199f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19a6:	e8 07 2c 00 00       	call   45b2 <exit>
    19ab:	83 c4 10             	add    $0x10,%esp
    19ae:	e9 ea fe ff ff       	jmp    189d <unlinkread+0x7d>
    19b3:	90                   	nop
    19b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    19b8:	83 ec 08             	sub    $0x8,%esp
    19bb:	68 38 4f 00 00       	push   $0x4f38
    19c0:	6a 01                	push   $0x1
    19c2:	e8 39 2d 00 00       	call   4700 <printf>
    exit(0);
    19c7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19ce:	e8 df 2b 00 00       	call   45b2 <exit>
    19d3:	83 c4 10             	add    $0x10,%esp
    19d6:	e9 aa fe ff ff       	jmp    1885 <unlinkread+0x65>
    19db:	90                   	nop
    19dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create unlinkread failed\n");
    19e0:	83 ec 08             	sub    $0x8,%esp
    19e3:	68 18 4f 00 00       	push   $0x4f18
    19e8:	6a 01                	push   $0x1
    19ea:	e8 11 2d 00 00       	call   4700 <printf>
    exit(0);
    19ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19f6:	e8 b7 2b 00 00       	call   45b2 <exit>
    19fb:	83 c4 10             	add    $0x10,%esp
    19fe:	e9 4f fe ff ff       	jmp    1852 <unlinkread+0x32>
    1a03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001a10 <linktest>:
  printf(1, "unlinkread ok\n");
}

void
linktest(void)
{
    1a10:	55                   	push   %ebp
    1a11:	89 e5                	mov    %esp,%ebp
    1a13:	53                   	push   %ebx
    1a14:	83 ec 0c             	sub    $0xc,%esp
  int fd;

  printf(1, "linktest\n");
    1a17:	68 c4 4f 00 00       	push   $0x4fc4
    1a1c:	6a 01                	push   $0x1
    1a1e:	e8 dd 2c 00 00       	call   4700 <printf>

  unlink("lf1");
    1a23:	c7 04 24 ce 4f 00 00 	movl   $0x4fce,(%esp)
    1a2a:	e8 d3 2b 00 00       	call   4602 <unlink>
  unlink("lf2");
    1a2f:	c7 04 24 d2 4f 00 00 	movl   $0x4fd2,(%esp)
    1a36:	e8 c7 2b 00 00       	call   4602 <unlink>

  fd = open("lf1", O_CREATE|O_RDWR);
    1a3b:	58                   	pop    %eax
    1a3c:	5a                   	pop    %edx
    1a3d:	68 02 02 00 00       	push   $0x202
    1a42:	68 ce 4f 00 00       	push   $0x4fce
    1a47:	e8 a6 2b 00 00       	call   45f2 <open>
  if(fd < 0){
    1a4c:	83 c4 10             	add    $0x10,%esp
    1a4f:	85 c0                	test   %eax,%eax
  printf(1, "linktest\n");

  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
    1a51:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1a53:	0f 88 c7 01 00 00    	js     1c20 <linktest+0x210>
    printf(1, "create lf1 failed\n");
    exit(0);
  }
  if(write(fd, "hello", 5) != 5){
    1a59:	83 ec 04             	sub    $0x4,%esp
    1a5c:	6a 05                	push   $0x5
    1a5e:	68 32 4f 00 00       	push   $0x4f32
    1a63:	53                   	push   %ebx
    1a64:	e8 69 2b 00 00       	call   45d2 <write>
    1a69:	83 c4 10             	add    $0x10,%esp
    1a6c:	83 f8 05             	cmp    $0x5,%eax
    1a6f:	74 1e                	je     1a8f <linktest+0x7f>
    printf(1, "write lf1 failed\n");
    1a71:	83 ec 08             	sub    $0x8,%esp
    1a74:	68 e9 4f 00 00       	push   $0x4fe9
    1a79:	6a 01                	push   $0x1
    1a7b:	e8 80 2c 00 00       	call   4700 <printf>
    exit(0);
    1a80:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a87:	e8 26 2b 00 00       	call   45b2 <exit>
    1a8c:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    1a8f:	83 ec 0c             	sub    $0xc,%esp
    1a92:	53                   	push   %ebx
    1a93:	e8 42 2b 00 00       	call   45da <close>

  if(link("lf1", "lf2") < 0){
    1a98:	59                   	pop    %ecx
    1a99:	5b                   	pop    %ebx
    1a9a:	68 d2 4f 00 00       	push   $0x4fd2
    1a9f:	68 ce 4f 00 00       	push   $0x4fce
    1aa4:	e8 69 2b 00 00       	call   4612 <link>
    1aa9:	83 c4 10             	add    $0x10,%esp
    1aac:	85 c0                	test   %eax,%eax
    1aae:	0f 88 94 01 00 00    	js     1c48 <linktest+0x238>
    printf(1, "link lf1 lf2 failed\n");
    exit(0);
  }
  unlink("lf1");
    1ab4:	83 ec 0c             	sub    $0xc,%esp
    1ab7:	68 ce 4f 00 00       	push   $0x4fce
    1abc:	e8 41 2b 00 00       	call   4602 <unlink>

  if(open("lf1", 0) >= 0){
    1ac1:	58                   	pop    %eax
    1ac2:	5a                   	pop    %edx
    1ac3:	6a 00                	push   $0x0
    1ac5:	68 ce 4f 00 00       	push   $0x4fce
    1aca:	e8 23 2b 00 00       	call   45f2 <open>
    1acf:	83 c4 10             	add    $0x10,%esp
    1ad2:	85 c0                	test   %eax,%eax
    1ad4:	78 1e                	js     1af4 <linktest+0xe4>
    printf(1, "unlinked lf1 but it is still there!\n");
    1ad6:	83 ec 08             	sub    $0x8,%esp
    1ad9:	68 dc 5b 00 00       	push   $0x5bdc
    1ade:	6a 01                	push   $0x1
    1ae0:	e8 1b 2c 00 00       	call   4700 <printf>
    exit(0);
    1ae5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1aec:	e8 c1 2a 00 00       	call   45b2 <exit>
    1af1:	83 c4 10             	add    $0x10,%esp
  }

  fd = open("lf2", 0);
    1af4:	83 ec 08             	sub    $0x8,%esp
    1af7:	6a 00                	push   $0x0
    1af9:	68 d2 4f 00 00       	push   $0x4fd2
    1afe:	e8 ef 2a 00 00       	call   45f2 <open>
  if(fd < 0){
    1b03:	83 c4 10             	add    $0x10,%esp
    1b06:	85 c0                	test   %eax,%eax
  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    exit(0);
  }

  fd = open("lf2", 0);
    1b08:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1b0a:	0f 88 60 01 00 00    	js     1c70 <linktest+0x260>
    printf(1, "open lf2 failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    1b10:	83 ec 04             	sub    $0x4,%esp
    1b13:	68 00 20 00 00       	push   $0x2000
    1b18:	68 e0 92 00 00       	push   $0x92e0
    1b1d:	53                   	push   %ebx
    1b1e:	e8 a7 2a 00 00       	call   45ca <read>
    1b23:	83 c4 10             	add    $0x10,%esp
    1b26:	83 f8 05             	cmp    $0x5,%eax
    1b29:	74 1e                	je     1b49 <linktest+0x139>
    printf(1, "read lf2 failed\n");
    1b2b:	83 ec 08             	sub    $0x8,%esp
    1b2e:	68 21 50 00 00       	push   $0x5021
    1b33:	6a 01                	push   $0x1
    1b35:	e8 c6 2b 00 00       	call   4700 <printf>
    exit(0);
    1b3a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b41:	e8 6c 2a 00 00       	call   45b2 <exit>
    1b46:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    1b49:	83 ec 0c             	sub    $0xc,%esp
    1b4c:	53                   	push   %ebx
    1b4d:	e8 88 2a 00 00       	call   45da <close>

  if(link("lf2", "lf2") >= 0){
    1b52:	59                   	pop    %ecx
    1b53:	5b                   	pop    %ebx
    1b54:	68 d2 4f 00 00       	push   $0x4fd2
    1b59:	68 d2 4f 00 00       	push   $0x4fd2
    1b5e:	e8 af 2a 00 00       	call   4612 <link>
    1b63:	83 c4 10             	add    $0x10,%esp
    1b66:	85 c0                	test   %eax,%eax
    1b68:	78 1e                	js     1b88 <linktest+0x178>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1b6a:	83 ec 08             	sub    $0x8,%esp
    1b6d:	68 32 50 00 00       	push   $0x5032
    1b72:	6a 01                	push   $0x1
    1b74:	e8 87 2b 00 00       	call   4700 <printf>
    exit(0);
    1b79:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b80:	e8 2d 2a 00 00       	call   45b2 <exit>
    1b85:	83 c4 10             	add    $0x10,%esp
  }

  unlink("lf2");
    1b88:	83 ec 0c             	sub    $0xc,%esp
    1b8b:	68 d2 4f 00 00       	push   $0x4fd2
    1b90:	e8 6d 2a 00 00       	call   4602 <unlink>
  if(link("lf2", "lf1") >= 0){
    1b95:	58                   	pop    %eax
    1b96:	5a                   	pop    %edx
    1b97:	68 ce 4f 00 00       	push   $0x4fce
    1b9c:	68 d2 4f 00 00       	push   $0x4fd2
    1ba1:	e8 6c 2a 00 00       	call   4612 <link>
    1ba6:	83 c4 10             	add    $0x10,%esp
    1ba9:	85 c0                	test   %eax,%eax
    1bab:	78 1e                	js     1bcb <linktest+0x1bb>
    printf(1, "link non-existant succeeded! oops\n");
    1bad:	83 ec 08             	sub    $0x8,%esp
    1bb0:	68 04 5c 00 00       	push   $0x5c04
    1bb5:	6a 01                	push   $0x1
    1bb7:	e8 44 2b 00 00       	call   4700 <printf>
    exit(0);
    1bbc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bc3:	e8 ea 29 00 00       	call   45b2 <exit>
    1bc8:	83 c4 10             	add    $0x10,%esp
  }

  if(link(".", "lf1") >= 0){
    1bcb:	83 ec 08             	sub    $0x8,%esp
    1bce:	68 ce 4f 00 00       	push   $0x4fce
    1bd3:	68 96 52 00 00       	push   $0x5296
    1bd8:	e8 35 2a 00 00       	call   4612 <link>
    1bdd:	83 c4 10             	add    $0x10,%esp
    1be0:	85 c0                	test   %eax,%eax
    1be2:	78 1e                	js     1c02 <linktest+0x1f2>
    printf(1, "link . lf1 succeeded! oops\n");
    1be4:	83 ec 08             	sub    $0x8,%esp
    1be7:	68 50 50 00 00       	push   $0x5050
    1bec:	6a 01                	push   $0x1
    1bee:	e8 0d 2b 00 00       	call   4700 <printf>
    exit(0);
    1bf3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bfa:	e8 b3 29 00 00       	call   45b2 <exit>
    1bff:	83 c4 10             	add    $0x10,%esp
  }

  printf(1, "linktest ok\n");
    1c02:	83 ec 08             	sub    $0x8,%esp
    1c05:	68 6c 50 00 00       	push   $0x506c
    1c0a:	6a 01                	push   $0x1
    1c0c:	e8 ef 2a 00 00       	call   4700 <printf>
}
    1c11:	83 c4 10             	add    $0x10,%esp
    1c14:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1c17:	c9                   	leave  
    1c18:	c3                   	ret    
    1c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    1c20:	83 ec 08             	sub    $0x8,%esp
    1c23:	68 d6 4f 00 00       	push   $0x4fd6
    1c28:	6a 01                	push   $0x1
    1c2a:	e8 d1 2a 00 00       	call   4700 <printf>
    exit(0);
    1c2f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c36:	e8 77 29 00 00       	call   45b2 <exit>
    1c3b:	83 c4 10             	add    $0x10,%esp
    1c3e:	e9 16 fe ff ff       	jmp    1a59 <linktest+0x49>
    1c43:	90                   	nop
    1c44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }
  close(fd);

  if(link("lf1", "lf2") < 0){
    printf(1, "link lf1 lf2 failed\n");
    1c48:	83 ec 08             	sub    $0x8,%esp
    1c4b:	68 fb 4f 00 00       	push   $0x4ffb
    1c50:	6a 01                	push   $0x1
    1c52:	e8 a9 2a 00 00       	call   4700 <printf>
    exit(0);
    1c57:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c5e:	e8 4f 29 00 00       	call   45b2 <exit>
    1c63:	83 c4 10             	add    $0x10,%esp
    1c66:	e9 49 fe ff ff       	jmp    1ab4 <linktest+0xa4>
    1c6b:	90                   	nop
    1c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  fd = open("lf2", 0);
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    1c70:	83 ec 08             	sub    $0x8,%esp
    1c73:	68 10 50 00 00       	push   $0x5010
    1c78:	6a 01                	push   $0x1
    1c7a:	e8 81 2a 00 00       	call   4700 <printf>
    exit(0);
    1c7f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c86:	e8 27 29 00 00       	call   45b2 <exit>
    1c8b:	83 c4 10             	add    $0x10,%esp
    1c8e:	e9 7d fe ff ff       	jmp    1b10 <linktest+0x100>
    1c93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1c99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001ca0 <concreate>:
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1ca0:	55                   	push   %ebp
    1ca1:	89 e5                	mov    %esp,%ebp
    1ca3:	57                   	push   %edi
    1ca4:	56                   	push   %esi
    1ca5:	53                   	push   %ebx
    1ca6:	8d 75 a9             	lea    -0x57(%ebp),%esi
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1ca9:	31 db                	xor    %ebx,%ebx
      close(fd);
    }
    if(pid == 0)
      exit(0);
    else
      wait(&status);
    1cab:	8d 7d ac             	lea    -0x54(%ebp),%edi
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    1cae:	83 ec 64             	sub    $0x64,%esp
  struct {
    ushort inum;
    char name[14];
  } de;

  printf(1, "concreate test\n");
    1cb1:	68 79 50 00 00       	push   $0x5079
    1cb6:	6a 01                	push   $0x1
    1cb8:	e8 43 2a 00 00       	call   4700 <printf>
  file[0] = 'C';
    1cbd:	c6 45 a9 43          	movb   $0x43,-0x57(%ebp)
  file[2] = '\0';
    1cc1:	c6 45 ab 00          	movb   $0x0,-0x55(%ebp)
    1cc5:	83 c4 10             	add    $0x10,%esp
    1cc8:	eb 61                	jmp    1d2b <concreate+0x8b>
    1cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
    1cd0:	89 d8                	mov    %ebx,%eax
    1cd2:	ba 56 55 55 55       	mov    $0x55555556,%edx
    1cd7:	89 d9                	mov    %ebx,%ecx
    1cd9:	f7 ea                	imul   %edx
    1cdb:	89 d8                	mov    %ebx,%eax
    1cdd:	c1 f8 1f             	sar    $0x1f,%eax
    1ce0:	29 c2                	sub    %eax,%edx
    1ce2:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1ce5:	29 c1                	sub    %eax,%ecx
    1ce7:	83 f9 01             	cmp    $0x1,%ecx
    1cea:	0f 84 80 01 00 00    	je     1e70 <concreate+0x1d0>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    1cf0:	83 ec 08             	sub    $0x8,%esp
    1cf3:	68 02 02 00 00       	push   $0x202
    1cf8:	56                   	push   %esi
    1cf9:	e8 f4 28 00 00       	call   45f2 <open>
      if(fd < 0){
    1cfe:	83 c4 10             	add    $0x10,%esp
    1d01:	85 c0                	test   %eax,%eax
    if(pid && (i % 3) == 1){
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    1d03:	89 c2                	mov    %eax,%edx
      if(fd < 0){
    1d05:	0f 88 58 03 00 00    	js     2063 <concreate+0x3c3>
        printf(1, "concreate create %s failed\n", file);
        exit(0);
      }
      close(fd);
    1d0b:	83 ec 0c             	sub    $0xc,%esp
    1d0e:	52                   	push   %edx
    1d0f:	e8 c6 28 00 00       	call   45da <close>
    1d14:	83 c4 10             	add    $0x10,%esp
    }
    if(pid == 0)
      exit(0);
    else
      wait(&status);
    1d17:	83 ec 0c             	sub    $0xc,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1d1a:	83 c3 01             	add    $0x1,%ebx
      close(fd);
    }
    if(pid == 0)
      exit(0);
    else
      wait(&status);
    1d1d:	57                   	push   %edi
    1d1e:	e8 97 28 00 00       	call   45ba <wait>
    1d23:	83 c4 10             	add    $0x10,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1d26:	83 fb 28             	cmp    $0x28,%ebx
    1d29:	74 77                	je     1da2 <concreate+0x102>
    file[1] = '0' + i;
    unlink(file);
    1d2b:	83 ec 0c             	sub    $0xc,%esp

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    1d2e:	8d 43 30             	lea    0x30(%ebx),%eax
    unlink(file);
    1d31:	56                   	push   %esi

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    1d32:	88 45 aa             	mov    %al,-0x56(%ebp)
    unlink(file);
    1d35:	e8 c8 28 00 00       	call   4602 <unlink>
    pid = fork();
    1d3a:	e8 6b 28 00 00       	call   45aa <fork>
    if(pid && (i % 3) == 1){
    1d3f:	83 c4 10             	add    $0x10,%esp
    1d42:	85 c0                	test   %eax,%eax
    1d44:	75 8a                	jne    1cd0 <concreate+0x30>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
    1d46:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1d4b:	89 d9                	mov    %ebx,%ecx
    1d4d:	f7 eb                	imul   %ebx
    1d4f:	89 d8                	mov    %ebx,%eax
    1d51:	c1 f8 1f             	sar    $0x1f,%eax
    1d54:	d1 fa                	sar    %edx
    1d56:	29 c2                	sub    %eax,%edx
    1d58:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1d5b:	29 c1                	sub    %eax,%ecx
    1d5d:	83 f9 01             	cmp    $0x1,%ecx
    1d60:	0f 84 f2 00 00 00    	je     1e58 <concreate+0x1b8>
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    1d66:	83 ec 08             	sub    $0x8,%esp
    1d69:	68 02 02 00 00       	push   $0x202
    1d6e:	56                   	push   %esi
    1d6f:	e8 7e 28 00 00       	call   45f2 <open>
      if(fd < 0){
    1d74:	83 c4 10             	add    $0x10,%esp
    1d77:	85 c0                	test   %eax,%eax
    if(pid && (i % 3) == 1){
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    1d79:	89 c2                	mov    %eax,%edx
      if(fd < 0){
    1d7b:	0f 88 9f 00 00 00    	js     1e20 <concreate+0x180>
        printf(1, "concreate create %s failed\n", file);
        exit(0);
      }
      close(fd);
    1d81:	83 ec 0c             	sub    $0xc,%esp
    1d84:	52                   	push   %edx
    1d85:	e8 50 28 00 00       	call   45da <close>
    1d8a:	83 c4 10             	add    $0x10,%esp
    }
    if(pid == 0)
      exit(0);
    1d8d:	83 ec 0c             	sub    $0xc,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1d90:	83 c3 01             	add    $0x1,%ebx
        exit(0);
      }
      close(fd);
    }
    if(pid == 0)
      exit(0);
    1d93:	6a 00                	push   $0x0
    1d95:	e8 18 28 00 00       	call   45b2 <exit>
    1d9a:	83 c4 10             	add    $0x10,%esp
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1d9d:	83 fb 28             	cmp    $0x28,%ebx
    1da0:	75 89                	jne    1d2b <concreate+0x8b>
      exit(0);
    else
      wait(&status);
  }

  memset(fa, 0, sizeof(fa));
    1da2:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1da5:	83 ec 04             	sub    $0x4,%esp
    1da8:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1dab:	6a 28                	push   $0x28
    1dad:	6a 00                	push   $0x0
    1daf:	50                   	push   %eax
    1db0:	e8 6b 26 00 00       	call   4420 <memset>
  fd = open(".", 0);
    1db5:	59                   	pop    %ecx
    1db6:	5b                   	pop    %ebx
    1db7:	6a 00                	push   $0x0
    1db9:	68 96 52 00 00       	push   $0x5296
    1dbe:	e8 2f 28 00 00       	call   45f2 <open>
  n = 0;
  while(read(fd, &de, sizeof(de)) > 0){
    1dc3:	83 c4 10             	add    $0x10,%esp
    else
      wait(&status);
  }

  memset(fa, 0, sizeof(fa));
  fd = open(".", 0);
    1dc6:	89 c3                	mov    %eax,%ebx
  n = 0;
    1dc8:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    1dcf:	90                   	nop
  while(read(fd, &de, sizeof(de)) > 0){
    1dd0:	83 ec 04             	sub    $0x4,%esp
    1dd3:	6a 10                	push   $0x10
    1dd5:	57                   	push   %edi
    1dd6:	53                   	push   %ebx
    1dd7:	e8 ee 27 00 00       	call   45ca <read>
    1ddc:	83 c4 10             	add    $0x10,%esp
    1ddf:	85 c0                	test   %eax,%eax
    1de1:	0f 8e a9 00 00 00    	jle    1e90 <concreate+0x1f0>
    if(de.inum == 0)
    1de7:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1dec:	74 e2                	je     1dd0 <concreate+0x130>
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1dee:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1df2:	75 dc                	jne    1dd0 <concreate+0x130>
    1df4:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1df8:	75 d6                	jne    1dd0 <concreate+0x130>
      i = de.name[1] - '0';
    1dfa:	0f be 55 b3          	movsbl -0x4d(%ebp),%edx
    1dfe:	83 ea 30             	sub    $0x30,%edx
      if(i < 0 || i >= sizeof(fa)){
    1e01:	83 fa 27             	cmp    $0x27,%edx
    1e04:	0f 87 f9 01 00 00    	ja     2003 <concreate+0x363>
        printf(1, "concreate weird file %s\n", de.name);
        exit(0);
      }
      if(fa[i]){
    1e0a:	80 7c 15 c0 00       	cmpb   $0x0,-0x40(%ebp,%edx,1)
    1e0f:	0f 85 21 02 00 00    	jne    2036 <concreate+0x396>
        printf(1, "concreate duplicate file %s\n", de.name);
        exit(0);
      }
      fa[i] = 1;
    1e15:	c6 44 15 c0 01       	movb   $0x1,-0x40(%ebp,%edx,1)
      n++;
    1e1a:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1e1e:	eb b0                	jmp    1dd0 <concreate+0x130>
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "concreate create %s failed\n", file);
    1e20:	83 ec 04             	sub    $0x4,%esp
    1e23:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    1e26:	56                   	push   %esi
    1e27:	68 d0 50 00 00       	push   $0x50d0
    1e2c:	6a 01                	push   $0x1
    1e2e:	e8 cd 28 00 00       	call   4700 <printf>
        exit(0);
    1e33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1e3a:	e8 73 27 00 00       	call   45b2 <exit>
      }
      close(fd);
    1e3f:	8b 55 a4             	mov    -0x5c(%ebp),%edx
    1e42:	89 14 24             	mov    %edx,(%esp)
    1e45:	e8 90 27 00 00       	call   45da <close>
    1e4a:	83 c4 10             	add    $0x10,%esp
    1e4d:	e9 3b ff ff ff       	jmp    1d8d <concreate+0xed>
    1e52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    1e58:	83 ec 08             	sub    $0x8,%esp
    1e5b:	56                   	push   %esi
    1e5c:	68 89 50 00 00       	push   $0x5089
    1e61:	e8 ac 27 00 00       	call   4612 <link>
    1e66:	83 c4 10             	add    $0x10,%esp
    1e69:	e9 1f ff ff ff       	jmp    1d8d <concreate+0xed>
    1e6e:	66 90                	xchg   %ax,%ax
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    1e70:	83 ec 08             	sub    $0x8,%esp
    1e73:	56                   	push   %esi
    1e74:	68 89 50 00 00       	push   $0x5089
    1e79:	e8 94 27 00 00       	call   4612 <link>
    1e7e:	83 c4 10             	add    $0x10,%esp
    1e81:	e9 91 fe ff ff       	jmp    1d17 <concreate+0x77>
    1e86:	8d 76 00             	lea    0x0(%esi),%esi
    1e89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      }
      fa[i] = 1;
      n++;
    }
  }
  close(fd);
    1e90:	83 ec 0c             	sub    $0xc,%esp
    1e93:	53                   	push   %ebx
    1e94:	e8 41 27 00 00       	call   45da <close>

  if(n != 40){
    1e99:	83 c4 10             	add    $0x10,%esp
    1e9c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1ea0:	74 1e                	je     1ec0 <concreate+0x220>
    printf(1, "concreate not enough files in directory listing\n");
    1ea2:	83 ec 08             	sub    $0x8,%esp
    1ea5:	68 28 5c 00 00       	push   $0x5c28
    1eaa:	6a 01                	push   $0x1
    1eac:	e8 4f 28 00 00       	call   4700 <printf>
    exit(0);
    1eb1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1eb8:	e8 f5 26 00 00       	call   45b2 <exit>
    1ebd:	83 c4 10             	add    $0x10,%esp
      wait(&status);
  }

  memset(fa, 0, sizeof(fa));
  fd = open(".", 0);
  n = 0;
    1ec0:	31 db                	xor    %ebx,%ebx
    1ec2:	eb 1d                	jmp    1ee1 <concreate+0x241>
    1ec4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
      exit(0);
    1ec8:	83 ec 0c             	sub    $0xc,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1ecb:	83 c3 01             	add    $0x1,%ebx
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
      exit(0);
    1ece:	6a 00                	push   $0x0
    1ed0:	e8 dd 26 00 00       	call   45b2 <exit>
    1ed5:	83 c4 10             	add    $0x10,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1ed8:	83 fb 28             	cmp    $0x28,%ebx
    1edb:	0f 84 b0 00 00 00    	je     1f91 <concreate+0x2f1>
    file[1] = '0' + i;
    1ee1:	8d 43 30             	lea    0x30(%ebx),%eax
    1ee4:	88 45 aa             	mov    %al,-0x56(%ebp)
    pid = fork();
    1ee7:	e8 be 26 00 00       	call   45aa <fork>
    if(pid < 0){
    1eec:	85 c0                	test   %eax,%eax
    exit(0);
  }

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    1eee:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1ef0:	0f 88 ea 00 00 00    	js     1fe0 <concreate+0x340>
      printf(1, "fork failed\n");
      exit(0);
    }
    if(((i % 3) == 0 && pid == 0) ||
    1ef6:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1efb:	f7 eb                	imul   %ebx
    1efd:	89 d8                	mov    %ebx,%eax
    1eff:	c1 f8 1f             	sar    $0x1f,%eax
    1f02:	29 c2                	sub    %eax,%edx
    1f04:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1f07:	89 da                	mov    %ebx,%edx
    1f09:	29 c2                	sub    %eax,%edx
    1f0b:	89 f8                	mov    %edi,%eax
    1f0d:	09 d0                	or     %edx,%eax
    1f0f:	74 11                	je     1f22 <concreate+0x282>
       ((i % 3) == 1 && pid != 0)){
    1f11:	83 fa 01             	cmp    $0x1,%edx
    1f14:	0f 85 96 00 00 00    	jne    1fb0 <concreate+0x310>
    1f1a:	85 ff                	test   %edi,%edi
    1f1c:	0f 84 8e 00 00 00    	je     1fb0 <concreate+0x310>
      close(open(file, 0));
    1f22:	83 ec 08             	sub    $0x8,%esp
    1f25:	6a 00                	push   $0x0
    1f27:	56                   	push   %esi
    1f28:	e8 c5 26 00 00       	call   45f2 <open>
    1f2d:	89 04 24             	mov    %eax,(%esp)
    1f30:	e8 a5 26 00 00       	call   45da <close>
      close(open(file, 0));
    1f35:	58                   	pop    %eax
    1f36:	5a                   	pop    %edx
    1f37:	6a 00                	push   $0x0
    1f39:	56                   	push   %esi
    1f3a:	e8 b3 26 00 00       	call   45f2 <open>
    1f3f:	89 04 24             	mov    %eax,(%esp)
    1f42:	e8 93 26 00 00       	call   45da <close>
      close(open(file, 0));
    1f47:	59                   	pop    %ecx
    1f48:	58                   	pop    %eax
    1f49:	6a 00                	push   $0x0
    1f4b:	56                   	push   %esi
    1f4c:	e8 a1 26 00 00       	call   45f2 <open>
    1f51:	89 04 24             	mov    %eax,(%esp)
    1f54:	e8 81 26 00 00       	call   45da <close>
      close(open(file, 0));
    1f59:	58                   	pop    %eax
    1f5a:	5a                   	pop    %edx
    1f5b:	6a 00                	push   $0x0
    1f5d:	56                   	push   %esi
    1f5e:	e8 8f 26 00 00       	call   45f2 <open>
    1f63:	89 04 24             	mov    %eax,(%esp)
    1f66:	e8 6f 26 00 00       	call   45da <close>
    1f6b:	83 c4 10             	add    $0x10,%esp
      unlink(file);
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
    1f6e:	85 ff                	test   %edi,%edi
    1f70:	0f 84 52 ff ff ff    	je     1ec8 <concreate+0x228>
      exit(0);
    else
      wait(&status);
    1f76:	8d 45 ac             	lea    -0x54(%ebp),%eax
    1f79:	83 ec 0c             	sub    $0xc,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1f7c:	83 c3 01             	add    $0x1,%ebx
      unlink(file);
    }
    if(pid == 0)
      exit(0);
    else
      wait(&status);
    1f7f:	50                   	push   %eax
    1f80:	e8 35 26 00 00       	call   45ba <wait>
    1f85:	83 c4 10             	add    $0x10,%esp
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1f88:	83 fb 28             	cmp    $0x28,%ebx
    1f8b:	0f 85 50 ff ff ff    	jne    1ee1 <concreate+0x241>
      exit(0);
    else
      wait(&status);
  }

  printf(1, "concreate ok\n");
    1f91:	83 ec 08             	sub    $0x8,%esp
    1f94:	68 c2 50 00 00       	push   $0x50c2
    1f99:	6a 01                	push   $0x1
    1f9b:	e8 60 27 00 00       	call   4700 <printf>
}
    1fa0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1fa3:	5b                   	pop    %ebx
    1fa4:	5e                   	pop    %esi
    1fa5:	5f                   	pop    %edi
    1fa6:	5d                   	pop    %ebp
    1fa7:	c3                   	ret    
    1fa8:	90                   	nop
    1fa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
    } else {
      unlink(file);
    1fb0:	83 ec 0c             	sub    $0xc,%esp
    1fb3:	56                   	push   %esi
    1fb4:	e8 49 26 00 00       	call   4602 <unlink>
      unlink(file);
    1fb9:	89 34 24             	mov    %esi,(%esp)
    1fbc:	e8 41 26 00 00       	call   4602 <unlink>
      unlink(file);
    1fc1:	89 34 24             	mov    %esi,(%esp)
    1fc4:	e8 39 26 00 00       	call   4602 <unlink>
      unlink(file);
    1fc9:	89 34 24             	mov    %esi,(%esp)
    1fcc:	e8 31 26 00 00       	call   4602 <unlink>
    1fd1:	83 c4 10             	add    $0x10,%esp
    1fd4:	eb 98                	jmp    1f6e <concreate+0x2ce>
    1fd6:	8d 76 00             	lea    0x0(%esi),%esi
    1fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1fe0:	83 ec 08             	sub    $0x8,%esp
    1fe3:	68 61 59 00 00       	push   $0x5961
    1fe8:	6a 01                	push   $0x1
    1fea:	e8 11 27 00 00       	call   4700 <printf>
      exit(0);
    1fef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1ff6:	e8 b7 25 00 00       	call   45b2 <exit>
    1ffb:	83 c4 10             	add    $0x10,%esp
    1ffe:	e9 f3 fe ff ff       	jmp    1ef6 <concreate+0x256>
    if(de.inum == 0)
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
      i = de.name[1] - '0';
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
    2003:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    2006:	83 ec 04             	sub    $0x4,%esp
    2009:	89 55 a0             	mov    %edx,-0x60(%ebp)
    200c:	50                   	push   %eax
    200d:	68 8c 50 00 00       	push   $0x508c
    2012:	6a 01                	push   $0x1
    2014:	e8 e7 26 00 00       	call   4700 <printf>
        exit(0);
    2019:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2020:	e8 8d 25 00 00       	call   45b2 <exit>
    2025:	8b 55 a0             	mov    -0x60(%ebp),%edx
    2028:	83 c4 10             	add    $0x10,%esp
      }
      if(fa[i]){
    202b:	80 7c 15 c0 00       	cmpb   $0x0,-0x40(%ebp,%edx,1)
    2030:	0f 84 df fd ff ff    	je     1e15 <concreate+0x175>
        printf(1, "concreate duplicate file %s\n", de.name);
    2036:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    2039:	83 ec 04             	sub    $0x4,%esp
    203c:	89 55 a0             	mov    %edx,-0x60(%ebp)
    203f:	50                   	push   %eax
    2040:	68 a5 50 00 00       	push   $0x50a5
    2045:	6a 01                	push   $0x1
    2047:	e8 b4 26 00 00       	call   4700 <printf>
        exit(0);
    204c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2053:	e8 5a 25 00 00       	call   45b2 <exit>
    2058:	83 c4 10             	add    $0x10,%esp
    205b:	8b 55 a0             	mov    -0x60(%ebp),%edx
    205e:	e9 b2 fd ff ff       	jmp    1e15 <concreate+0x175>
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "concreate create %s failed\n", file);
    2063:	83 ec 04             	sub    $0x4,%esp
    2066:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    2069:	56                   	push   %esi
    206a:	68 d0 50 00 00       	push   $0x50d0
    206f:	6a 01                	push   $0x1
    2071:	e8 8a 26 00 00       	call   4700 <printf>
        exit(0);
    2076:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    207d:	e8 30 25 00 00       	call   45b2 <exit>
      }
      close(fd);
    2082:	8b 55 a4             	mov    -0x5c(%ebp),%edx
    2085:	89 14 24             	mov    %edx,(%esp)
    2088:	e8 4d 25 00 00       	call   45da <close>
    208d:	83 c4 10             	add    $0x10,%esp
    2090:	e9 82 fc ff ff       	jmp    1d17 <concreate+0x77>
    2095:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2099:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000020a0 <linkunlink>:

// another concurrent link/unlink/create test,
// to look for deadlocks.
void
linkunlink()
{
    20a0:	55                   	push   %ebp
    20a1:	89 e5                	mov    %esp,%ebp
    20a3:	57                   	push   %edi
    20a4:	56                   	push   %esi
    20a5:	53                   	push   %ebx
    20a6:	83 ec 34             	sub    $0x34,%esp
  int pid, i;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "linkunlink test\n");
    20a9:	68 ec 50 00 00       	push   $0x50ec
    20ae:	6a 01                	push   $0x1
    20b0:	e8 4b 26 00 00       	call   4700 <printf>

  unlink("x");
    20b5:	c7 04 24 79 53 00 00 	movl   $0x5379,(%esp)
    20bc:	e8 41 25 00 00       	call   4602 <unlink>
  pid = fork();
    20c1:	e8 e4 24 00 00       	call   45aa <fork>
  if(pid < 0){
    20c6:	83 c4 10             	add    $0x10,%esp
    20c9:	85 c0                	test   %eax,%eax
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
    20cb:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  if(pid < 0){
    20ce:	0f 88 c6 00 00 00    	js     219a <linkunlink+0xfa>
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
    20d4:	bf 61 00 00 00       	mov    $0x61,%edi
    20d9:	0f 85 d9 00 00 00    	jne    21b8 <linkunlink+0x118>
    20df:	bb 64 00 00 00       	mov    $0x64,%ebx
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
    20e4:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
    20e9:	eb 23                	jmp    210e <linkunlink+0x6e>
    20eb:	90                   	nop
    20ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
    20f0:	83 fa 01             	cmp    $0x1,%edx
    20f3:	0f 84 87 00 00 00    	je     2180 <linkunlink+0xe0>
      link("cat", "x");
    } else {
      unlink("x");
    20f9:	83 ec 0c             	sub    $0xc,%esp
    20fc:	68 79 53 00 00       	push   $0x5379
    2101:	e8 fc 24 00 00       	call   4602 <unlink>
    2106:	83 c4 10             	add    $0x10,%esp
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    2109:	83 eb 01             	sub    $0x1,%ebx
    210c:	74 3d                	je     214b <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    210e:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    2114:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    211a:	89 f8                	mov    %edi,%eax
    211c:	f7 e6                	mul    %esi
    211e:	d1 ea                	shr    %edx
    2120:	8d 04 52             	lea    (%edx,%edx,2),%eax
    2123:	89 fa                	mov    %edi,%edx
    2125:	29 c2                	sub    %eax,%edx
    2127:	75 c7                	jne    20f0 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    2129:	83 ec 08             	sub    $0x8,%esp
    212c:	68 02 02 00 00       	push   $0x202
    2131:	68 79 53 00 00       	push   $0x5379
    2136:	e8 b7 24 00 00       	call   45f2 <open>
    213b:	89 04 24             	mov    %eax,(%esp)
    213e:	e8 97 24 00 00       	call   45da <close>
    2143:	83 c4 10             	add    $0x10,%esp
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    2146:	83 eb 01             	sub    $0x1,%ebx
    2149:	75 c3                	jne    210e <linkunlink+0x6e>
    } else {
      unlink("x");
    }
  }

  if(pid)
    214b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    214e:	85 c0                	test   %eax,%eax
    2150:	75 70                	jne    21c2 <linkunlink+0x122>
    wait(&status);
  else
    exit(0);
    2152:	83 ec 0c             	sub    $0xc,%esp
    2155:	6a 00                	push   $0x0
    2157:	e8 56 24 00 00       	call   45b2 <exit>
    215c:	83 c4 10             	add    $0x10,%esp

  printf(1, "linkunlink ok\n");
    215f:	83 ec 08             	sub    $0x8,%esp
    2162:	68 01 51 00 00       	push   $0x5101
    2167:	6a 01                	push   $0x1
    2169:	e8 92 25 00 00       	call   4700 <printf>
}
    216e:	83 c4 10             	add    $0x10,%esp
    2171:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2174:	5b                   	pop    %ebx
    2175:	5e                   	pop    %esi
    2176:	5f                   	pop    %edi
    2177:	5d                   	pop    %ebp
    2178:	c3                   	ret    
    2179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
      link("cat", "x");
    2180:	83 ec 08             	sub    $0x8,%esp
    2183:	68 79 53 00 00       	push   $0x5379
    2188:	68 fd 50 00 00       	push   $0x50fd
    218d:	e8 80 24 00 00       	call   4612 <link>
    2192:	83 c4 10             	add    $0x10,%esp
    2195:	e9 6f ff ff ff       	jmp    2109 <linkunlink+0x69>
  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
  if(pid < 0){
    printf(1, "fork failed\n");
    219a:	83 ec 08             	sub    $0x8,%esp
    219d:	68 61 59 00 00       	push   $0x5961
    21a2:	6a 01                	push   $0x1
    21a4:	e8 57 25 00 00       	call   4700 <printf>
    exit(0);
    21a9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    21b0:	e8 fd 23 00 00       	call   45b2 <exit>
    21b5:	83 c4 10             	add    $0x10,%esp
  }

  unsigned int x = (pid ? 1 : 97);
    21b8:	bf 01 00 00 00       	mov    $0x1,%edi
    21bd:	e9 1d ff ff ff       	jmp    20df <linkunlink+0x3f>
      unlink("x");
    }
  }

  if(pid)
    wait(&status);
    21c2:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    21c5:	83 ec 0c             	sub    $0xc,%esp
    21c8:	50                   	push   %eax
    21c9:	e8 ec 23 00 00       	call   45ba <wait>
    21ce:	83 c4 10             	add    $0x10,%esp
    21d1:	eb 8c                	jmp    215f <linkunlink+0xbf>
    21d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    21d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000021e0 <bigdir>:
}

// directory that uses indirect blocks
void
bigdir(void)
{
    21e0:	55                   	push   %ebp
    21e1:	89 e5                	mov    %esp,%ebp
    21e3:	56                   	push   %esi
    21e4:	53                   	push   %ebx
    21e5:	83 ec 18             	sub    $0x18,%esp
  int i, fd;
  char name[10];

  printf(1, "bigdir test\n");
    21e8:	68 10 51 00 00       	push   $0x5110
    21ed:	6a 01                	push   $0x1
    21ef:	e8 0c 25 00 00       	call   4700 <printf>
  unlink("bd");
    21f4:	c7 04 24 1d 51 00 00 	movl   $0x511d,(%esp)
    21fb:	e8 02 24 00 00       	call   4602 <unlink>

  fd = open("bd", O_CREATE);
    2200:	58                   	pop    %eax
    2201:	5a                   	pop    %edx
    2202:	68 00 02 00 00       	push   $0x200
    2207:	68 1d 51 00 00       	push   $0x511d
    220c:	e8 e1 23 00 00       	call   45f2 <open>
  if(fd < 0){
    2211:	83 c4 10             	add    $0x10,%esp
    2214:	85 c0                	test   %eax,%eax
  char name[10];

  printf(1, "bigdir test\n");
  unlink("bd");

  fd = open("bd", O_CREATE);
    2216:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2218:	0f 88 15 01 00 00    	js     2333 <bigdir+0x153>
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);
    221e:	83 ec 0c             	sub    $0xc,%esp
    2221:	8d 75 ee             	lea    -0x12(%ebp),%esi
    2224:	53                   	push   %ebx

  for(i = 0; i < 500; i++){
    2225:	31 db                	xor    %ebx,%ebx
  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);
    2227:	e8 ae 23 00 00       	call   45da <close>
    222c:	83 c4 10             	add    $0x10,%esp
    222f:	eb 12                	jmp    2243 <bigdir+0x63>
    2231:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

  for(i = 0; i < 500; i++){
    2238:	83 c3 01             	add    $0x1,%ebx
    223b:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2241:	74 5c                	je     229f <bigdir+0xbf>
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    2243:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
    2245:	83 ec 08             	sub    $0x8,%esp
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    2248:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    224c:	c1 f8 06             	sar    $0x6,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
    224f:	56                   	push   %esi
    2250:	68 1d 51 00 00       	push   $0x511d
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    2255:	83 c0 30             	add    $0x30,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    2258:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    225c:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    225f:	89 d8                	mov    %ebx,%eax
    2261:	83 e0 3f             	and    $0x3f,%eax
    2264:	83 c0 30             	add    $0x30,%eax
    2267:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    if(link("bd", name) != 0){
    226a:	e8 a3 23 00 00       	call   4612 <link>
    226f:	83 c4 10             	add    $0x10,%esp
    2272:	85 c0                	test   %eax,%eax
    2274:	74 c2                	je     2238 <bigdir+0x58>
      printf(1, "bigdir link failed\n");
    2276:	83 ec 08             	sub    $0x8,%esp
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    2279:	83 c3 01             	add    $0x1,%ebx
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
      printf(1, "bigdir link failed\n");
    227c:	68 36 51 00 00       	push   $0x5136
    2281:	6a 01                	push   $0x1
    2283:	e8 78 24 00 00       	call   4700 <printf>
      exit(0);
    2288:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    228f:	e8 1e 23 00 00       	call   45b2 <exit>
    2294:	83 c4 10             	add    $0x10,%esp
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    2297:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    229d:	75 a4                	jne    2243 <bigdir+0x63>
      printf(1, "bigdir link failed\n");
      exit(0);
    }
  }

  unlink("bd");
    229f:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    22a2:	31 db                	xor    %ebx,%ebx
      printf(1, "bigdir link failed\n");
      exit(0);
    }
  }

  unlink("bd");
    22a4:	68 1d 51 00 00       	push   $0x511d
    22a9:	e8 54 23 00 00       	call   4602 <unlink>
    22ae:	83 c4 10             	add    $0x10,%esp
    22b1:	eb 10                	jmp    22c3 <bigdir+0xe3>
    22b3:	90                   	nop
    22b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 500; i++){
    22b8:	83 c3 01             	add    $0x1,%ebx
    22bb:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    22c1:	74 57                	je     231a <bigdir+0x13a>
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    22c3:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
    22c5:	83 ec 0c             	sub    $0xc,%esp
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    22c8:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    22cc:	c1 f8 06             	sar    $0x6,%eax
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
    22cf:	56                   	push   %esi
  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    22d0:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    22d4:	83 c0 30             	add    $0x30,%eax
    22d7:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    22da:	89 d8                	mov    %ebx,%eax
    22dc:	83 e0 3f             	and    $0x3f,%eax
    22df:	83 c0 30             	add    $0x30,%eax
    22e2:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    if(unlink(name) != 0){
    22e5:	e8 18 23 00 00       	call   4602 <unlink>
    22ea:	83 c4 10             	add    $0x10,%esp
    22ed:	85 c0                	test   %eax,%eax
    22ef:	74 c7                	je     22b8 <bigdir+0xd8>
      printf(1, "bigdir unlink failed");
    22f1:	83 ec 08             	sub    $0x8,%esp
      exit(0);
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    22f4:	83 c3 01             	add    $0x1,%ebx
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
      printf(1, "bigdir unlink failed");
    22f7:	68 4a 51 00 00       	push   $0x514a
    22fc:	6a 01                	push   $0x1
    22fe:	e8 fd 23 00 00       	call   4700 <printf>
      exit(0);
    2303:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    230a:	e8 a3 22 00 00       	call   45b2 <exit>
    230f:	83 c4 10             	add    $0x10,%esp
      exit(0);
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    2312:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2318:	75 a9                	jne    22c3 <bigdir+0xe3>
      printf(1, "bigdir unlink failed");
      exit(0);
    }
  }

  printf(1, "bigdir ok\n");
    231a:	83 ec 08             	sub    $0x8,%esp
    231d:	68 5f 51 00 00       	push   $0x515f
    2322:	6a 01                	push   $0x1
    2324:	e8 d7 23 00 00       	call   4700 <printf>
}
    2329:	83 c4 10             	add    $0x10,%esp
    232c:	8d 65 f8             	lea    -0x8(%ebp),%esp
    232f:	5b                   	pop    %ebx
    2330:	5e                   	pop    %esi
    2331:	5d                   	pop    %ebp
    2332:	c3                   	ret    
  printf(1, "bigdir test\n");
  unlink("bd");

  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    2333:	83 ec 08             	sub    $0x8,%esp
    2336:	68 20 51 00 00       	push   $0x5120
    233b:	6a 01                	push   $0x1
    233d:	e8 be 23 00 00       	call   4700 <printf>
    exit(0);
    2342:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2349:	e8 64 22 00 00       	call   45b2 <exit>
    234e:	83 c4 10             	add    $0x10,%esp
    2351:	e9 c8 fe ff ff       	jmp    221e <bigdir+0x3e>
    2356:	8d 76 00             	lea    0x0(%esi),%esi
    2359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002360 <subdir>:
  printf(1, "bigdir ok\n");
}

void
subdir(void)
{
    2360:	55                   	push   %ebp
    2361:	89 e5                	mov    %esp,%ebp
    2363:	53                   	push   %ebx
    2364:	83 ec 0c             	sub    $0xc,%esp
  int fd, cc;

  printf(1, "subdir test\n");
    2367:	68 6a 51 00 00       	push   $0x516a
    236c:	6a 01                	push   $0x1
    236e:	e8 8d 23 00 00       	call   4700 <printf>

  unlink("ff");
    2373:	c7 04 24 f3 51 00 00 	movl   $0x51f3,(%esp)
    237a:	e8 83 22 00 00       	call   4602 <unlink>
  if(mkdir("dd") != 0){
    237f:	c7 04 24 90 52 00 00 	movl   $0x5290,(%esp)
    2386:	e8 8f 22 00 00       	call   461a <mkdir>
    238b:	83 c4 10             	add    $0x10,%esp
    238e:	85 c0                	test   %eax,%eax
    2390:	0f 85 52 05 00 00    	jne    28e8 <subdir+0x588>
    printf(1, "subdir mkdir dd failed\n");
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    2396:	83 ec 08             	sub    $0x8,%esp
    2399:	68 02 02 00 00       	push   $0x202
    239e:	68 c9 51 00 00       	push   $0x51c9
    23a3:	e8 4a 22 00 00       	call   45f2 <open>
  if(fd < 0){
    23a8:	83 c4 10             	add    $0x10,%esp
    23ab:	85 c0                	test   %eax,%eax
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    23ad:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    23af:	0f 88 f3 08 00 00    	js     2ca8 <subdir+0x948>
    printf(1, "create dd/ff failed\n");
    exit(0);
  }
  write(fd, "ff", 2);
    23b5:	83 ec 04             	sub    $0x4,%esp
    23b8:	6a 02                	push   $0x2
    23ba:	68 f3 51 00 00       	push   $0x51f3
    23bf:	53                   	push   %ebx
    23c0:	e8 0d 22 00 00       	call   45d2 <write>
  close(fd);
    23c5:	89 1c 24             	mov    %ebx,(%esp)
    23c8:	e8 0d 22 00 00       	call   45da <close>

  if(unlink("dd") >= 0){
    23cd:	c7 04 24 90 52 00 00 	movl   $0x5290,(%esp)
    23d4:	e8 29 22 00 00       	call   4602 <unlink>
    23d9:	83 c4 10             	add    $0x10,%esp
    23dc:	85 c0                	test   %eax,%eax
    23de:	78 1e                	js     23fe <subdir+0x9e>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    23e0:	83 ec 08             	sub    $0x8,%esp
    23e3:	68 5c 5c 00 00       	push   $0x5c5c
    23e8:	6a 01                	push   $0x1
    23ea:	e8 11 23 00 00       	call   4700 <printf>
    exit(0);
    23ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23f6:	e8 b7 21 00 00       	call   45b2 <exit>
    23fb:	83 c4 10             	add    $0x10,%esp
  }

  if(mkdir("/dd/dd") != 0){
    23fe:	83 ec 0c             	sub    $0xc,%esp
    2401:	68 a4 51 00 00       	push   $0x51a4
    2406:	e8 0f 22 00 00       	call   461a <mkdir>
    240b:	83 c4 10             	add    $0x10,%esp
    240e:	85 c0                	test   %eax,%eax
    2410:	0f 85 aa 04 00 00    	jne    28c0 <subdir+0x560>
    printf(1, "subdir mkdir dd/dd failed\n");
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2416:	83 ec 08             	sub    $0x8,%esp
    2419:	68 02 02 00 00       	push   $0x202
    241e:	68 c6 51 00 00       	push   $0x51c6
    2423:	e8 ca 21 00 00       	call   45f2 <open>
  if(fd < 0){
    2428:	83 c4 10             	add    $0x10,%esp
    242b:	85 c0                	test   %eax,%eax
  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    242d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    242f:	0f 88 fb 07 00 00    	js     2c30 <subdir+0x8d0>
    printf(1, "create dd/dd/ff failed\n");
    exit(0);
  }
  write(fd, "FF", 2);
    2435:	83 ec 04             	sub    $0x4,%esp
    2438:	6a 02                	push   $0x2
    243a:	68 e7 51 00 00       	push   $0x51e7
    243f:	53                   	push   %ebx
    2440:	e8 8d 21 00 00       	call   45d2 <write>
  close(fd);
    2445:	89 1c 24             	mov    %ebx,(%esp)
    2448:	e8 8d 21 00 00       	call   45da <close>

  fd = open("dd/dd/../ff", 0);
    244d:	58                   	pop    %eax
    244e:	5a                   	pop    %edx
    244f:	6a 00                	push   $0x0
    2451:	68 ea 51 00 00       	push   $0x51ea
    2456:	e8 97 21 00 00       	call   45f2 <open>
  if(fd < 0){
    245b:	83 c4 10             	add    $0x10,%esp
    245e:	85 c0                	test   %eax,%eax
    exit(0);
  }
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
    2460:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2462:	0f 88 f0 07 00 00    	js     2c58 <subdir+0x8f8>
    printf(1, "open dd/dd/../ff failed\n");
    exit(0);
  }
  cc = read(fd, buf, sizeof(buf));
    2468:	83 ec 04             	sub    $0x4,%esp
    246b:	68 00 20 00 00       	push   $0x2000
    2470:	68 e0 92 00 00       	push   $0x92e0
    2475:	53                   	push   %ebx
    2476:	e8 4f 21 00 00       	call   45ca <read>
  if(cc != 2 || buf[0] != 'f'){
    247b:	83 c4 10             	add    $0x10,%esp
    247e:	83 f8 02             	cmp    $0x2,%eax
    2481:	0f 84 21 04 00 00    	je     28a8 <subdir+0x548>
    printf(1, "dd/dd/../ff wrong content\n");
    2487:	83 ec 08             	sub    $0x8,%esp
    248a:	68 0f 52 00 00       	push   $0x520f
    248f:	6a 01                	push   $0x1
    2491:	e8 6a 22 00 00       	call   4700 <printf>
    exit(0);
    2496:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    249d:	e8 10 21 00 00       	call   45b2 <exit>
    24a2:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    24a5:	83 ec 0c             	sub    $0xc,%esp
    24a8:	53                   	push   %ebx
    24a9:	e8 2c 21 00 00       	call   45da <close>

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    24ae:	59                   	pop    %ecx
    24af:	5b                   	pop    %ebx
    24b0:	68 2a 52 00 00       	push   $0x522a
    24b5:	68 c6 51 00 00       	push   $0x51c6
    24ba:	e8 53 21 00 00       	call   4612 <link>
    24bf:	83 c4 10             	add    $0x10,%esp
    24c2:	85 c0                	test   %eax,%eax
    24c4:	0f 85 16 07 00 00    	jne    2be0 <subdir+0x880>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit(0);
  }

  if(unlink("dd/dd/ff") != 0){
    24ca:	83 ec 0c             	sub    $0xc,%esp
    24cd:	68 c6 51 00 00       	push   $0x51c6
    24d2:	e8 2b 21 00 00       	call   4602 <unlink>
    24d7:	83 c4 10             	add    $0x10,%esp
    24da:	85 c0                	test   %eax,%eax
    24dc:	0f 85 d6 06 00 00    	jne    2bb8 <subdir+0x858>
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    24e2:	83 ec 08             	sub    $0x8,%esp
    24e5:	6a 00                	push   $0x0
    24e7:	68 c6 51 00 00       	push   $0x51c6
    24ec:	e8 01 21 00 00       	call   45f2 <open>
    24f1:	83 c4 10             	add    $0x10,%esp
    24f4:	85 c0                	test   %eax,%eax
    24f6:	78 1e                	js     2516 <subdir+0x1b6>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    24f8:	83 ec 08             	sub    $0x8,%esp
    24fb:	68 a8 5c 00 00       	push   $0x5ca8
    2500:	6a 01                	push   $0x1
    2502:	e8 f9 21 00 00       	call   4700 <printf>
    exit(0);
    2507:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    250e:	e8 9f 20 00 00       	call   45b2 <exit>
    2513:	83 c4 10             	add    $0x10,%esp
  }

  if(chdir("dd") != 0){
    2516:	83 ec 0c             	sub    $0xc,%esp
    2519:	68 90 52 00 00       	push   $0x5290
    251e:	e8 ff 20 00 00       	call   4622 <chdir>
    2523:	83 c4 10             	add    $0x10,%esp
    2526:	85 c0                	test   %eax,%eax
    2528:	0f 85 62 06 00 00    	jne    2b90 <subdir+0x830>
    printf(1, "chdir dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../dd") != 0){
    252e:	83 ec 0c             	sub    $0xc,%esp
    2531:	68 5e 52 00 00       	push   $0x525e
    2536:	e8 e7 20 00 00       	call   4622 <chdir>
    253b:	83 c4 10             	add    $0x10,%esp
    253e:	85 c0                	test   %eax,%eax
    2540:	0f 85 22 06 00 00    	jne    2b68 <subdir+0x808>
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../../dd") != 0){
    2546:	83 ec 0c             	sub    $0xc,%esp
    2549:	68 84 52 00 00       	push   $0x5284
    254e:	e8 cf 20 00 00       	call   4622 <chdir>
    2553:	83 c4 10             	add    $0x10,%esp
    2556:	85 c0                	test   %eax,%eax
    2558:	0f 85 e2 05 00 00    	jne    2b40 <subdir+0x7e0>
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("./..") != 0){
    255e:	83 ec 0c             	sub    $0xc,%esp
    2561:	68 93 52 00 00       	push   $0x5293
    2566:	e8 b7 20 00 00       	call   4622 <chdir>
    256b:	83 c4 10             	add    $0x10,%esp
    256e:	85 c0                	test   %eax,%eax
    2570:	0f 85 a2 05 00 00    	jne    2b18 <subdir+0x7b8>
    printf(1, "chdir ./.. failed\n");
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
    2576:	83 ec 08             	sub    $0x8,%esp
    2579:	6a 00                	push   $0x0
    257b:	68 2a 52 00 00       	push   $0x522a
    2580:	e8 6d 20 00 00       	call   45f2 <open>
  if(fd < 0){
    2585:	83 c4 10             	add    $0x10,%esp
    2588:	85 c0                	test   %eax,%eax
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
    258a:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    258c:	0f 88 ee 06 00 00    	js     2c80 <subdir+0x920>
    printf(1, "open dd/dd/ffff failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    2592:	83 ec 04             	sub    $0x4,%esp
    2595:	68 00 20 00 00       	push   $0x2000
    259a:	68 e0 92 00 00       	push   $0x92e0
    259f:	53                   	push   %ebx
    25a0:	e8 25 20 00 00       	call   45ca <read>
    25a5:	83 c4 10             	add    $0x10,%esp
    25a8:	83 f8 02             	cmp    $0x2,%eax
    25ab:	74 1e                	je     25cb <subdir+0x26b>
    printf(1, "read dd/dd/ffff wrong len\n");
    25ad:	83 ec 08             	sub    $0x8,%esp
    25b0:	68 c3 52 00 00       	push   $0x52c3
    25b5:	6a 01                	push   $0x1
    25b7:	e8 44 21 00 00       	call   4700 <printf>
    exit(0);
    25bc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25c3:	e8 ea 1f 00 00       	call   45b2 <exit>
    25c8:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    25cb:	83 ec 0c             	sub    $0xc,%esp
    25ce:	53                   	push   %ebx
    25cf:	e8 06 20 00 00       	call   45da <close>

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    25d4:	58                   	pop    %eax
    25d5:	5a                   	pop    %edx
    25d6:	6a 00                	push   $0x0
    25d8:	68 c6 51 00 00       	push   $0x51c6
    25dd:	e8 10 20 00 00       	call   45f2 <open>
    25e2:	83 c4 10             	add    $0x10,%esp
    25e5:	85 c0                	test   %eax,%eax
    25e7:	78 1e                	js     2607 <subdir+0x2a7>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    25e9:	83 ec 08             	sub    $0x8,%esp
    25ec:	68 cc 5c 00 00       	push   $0x5ccc
    25f1:	6a 01                	push   $0x1
    25f3:	e8 08 21 00 00       	call   4700 <printf>
    exit(0);
    25f8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25ff:	e8 ae 1f 00 00       	call   45b2 <exit>
    2604:	83 c4 10             	add    $0x10,%esp
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2607:	83 ec 08             	sub    $0x8,%esp
    260a:	68 02 02 00 00       	push   $0x202
    260f:	68 de 52 00 00       	push   $0x52de
    2614:	e8 d9 1f 00 00       	call   45f2 <open>
    2619:	83 c4 10             	add    $0x10,%esp
    261c:	85 c0                	test   %eax,%eax
    261e:	78 1e                	js     263e <subdir+0x2de>
    printf(1, "create dd/ff/ff succeeded!\n");
    2620:	83 ec 08             	sub    $0x8,%esp
    2623:	68 e7 52 00 00       	push   $0x52e7
    2628:	6a 01                	push   $0x1
    262a:	e8 d1 20 00 00       	call   4700 <printf>
    exit(0);
    262f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2636:	e8 77 1f 00 00       	call   45b2 <exit>
    263b:	83 c4 10             	add    $0x10,%esp
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    263e:	83 ec 08             	sub    $0x8,%esp
    2641:	68 02 02 00 00       	push   $0x202
    2646:	68 03 53 00 00       	push   $0x5303
    264b:	e8 a2 1f 00 00       	call   45f2 <open>
    2650:	83 c4 10             	add    $0x10,%esp
    2653:	85 c0                	test   %eax,%eax
    2655:	78 1e                	js     2675 <subdir+0x315>
    printf(1, "create dd/xx/ff succeeded!\n");
    2657:	83 ec 08             	sub    $0x8,%esp
    265a:	68 0c 53 00 00       	push   $0x530c
    265f:	6a 01                	push   $0x1
    2661:	e8 9a 20 00 00       	call   4700 <printf>
    exit(0);
    2666:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    266d:	e8 40 1f 00 00       	call   45b2 <exit>
    2672:	83 c4 10             	add    $0x10,%esp
  }
  if(open("dd", O_CREATE) >= 0){
    2675:	83 ec 08             	sub    $0x8,%esp
    2678:	68 00 02 00 00       	push   $0x200
    267d:	68 90 52 00 00       	push   $0x5290
    2682:	e8 6b 1f 00 00       	call   45f2 <open>
    2687:	83 c4 10             	add    $0x10,%esp
    268a:	85 c0                	test   %eax,%eax
    268c:	78 1e                	js     26ac <subdir+0x34c>
    printf(1, "create dd succeeded!\n");
    268e:	83 ec 08             	sub    $0x8,%esp
    2691:	68 28 53 00 00       	push   $0x5328
    2696:	6a 01                	push   $0x1
    2698:	e8 63 20 00 00       	call   4700 <printf>
    exit(0);
    269d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26a4:	e8 09 1f 00 00       	call   45b2 <exit>
    26a9:	83 c4 10             	add    $0x10,%esp
  }
  if(open("dd", O_RDWR) >= 0){
    26ac:	83 ec 08             	sub    $0x8,%esp
    26af:	6a 02                	push   $0x2
    26b1:	68 90 52 00 00       	push   $0x5290
    26b6:	e8 37 1f 00 00       	call   45f2 <open>
    26bb:	83 c4 10             	add    $0x10,%esp
    26be:	85 c0                	test   %eax,%eax
    26c0:	78 1e                	js     26e0 <subdir+0x380>
    printf(1, "open dd rdwr succeeded!\n");
    26c2:	83 ec 08             	sub    $0x8,%esp
    26c5:	68 3e 53 00 00       	push   $0x533e
    26ca:	6a 01                	push   $0x1
    26cc:	e8 2f 20 00 00       	call   4700 <printf>
    exit(0);
    26d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26d8:	e8 d5 1e 00 00       	call   45b2 <exit>
    26dd:	83 c4 10             	add    $0x10,%esp
  }
  if(open("dd", O_WRONLY) >= 0){
    26e0:	83 ec 08             	sub    $0x8,%esp
    26e3:	6a 01                	push   $0x1
    26e5:	68 90 52 00 00       	push   $0x5290
    26ea:	e8 03 1f 00 00       	call   45f2 <open>
    26ef:	83 c4 10             	add    $0x10,%esp
    26f2:	85 c0                	test   %eax,%eax
    26f4:	78 1e                	js     2714 <subdir+0x3b4>
    printf(1, "open dd wronly succeeded!\n");
    26f6:	83 ec 08             	sub    $0x8,%esp
    26f9:	68 57 53 00 00       	push   $0x5357
    26fe:	6a 01                	push   $0x1
    2700:	e8 fb 1f 00 00       	call   4700 <printf>
    exit(0);
    2705:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    270c:	e8 a1 1e 00 00       	call   45b2 <exit>
    2711:	83 c4 10             	add    $0x10,%esp
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    2714:	83 ec 08             	sub    $0x8,%esp
    2717:	68 72 53 00 00       	push   $0x5372
    271c:	68 de 52 00 00       	push   $0x52de
    2721:	e8 ec 1e 00 00       	call   4612 <link>
    2726:	83 c4 10             	add    $0x10,%esp
    2729:	85 c0                	test   %eax,%eax
    272b:	0f 84 bf 03 00 00    	je     2af0 <subdir+0x790>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    2731:	83 ec 08             	sub    $0x8,%esp
    2734:	68 72 53 00 00       	push   $0x5372
    2739:	68 03 53 00 00       	push   $0x5303
    273e:	e8 cf 1e 00 00       	call   4612 <link>
    2743:	83 c4 10             	add    $0x10,%esp
    2746:	85 c0                	test   %eax,%eax
    2748:	0f 84 7a 03 00 00    	je     2ac8 <subdir+0x768>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    274e:	83 ec 08             	sub    $0x8,%esp
    2751:	68 2a 52 00 00       	push   $0x522a
    2756:	68 c9 51 00 00       	push   $0x51c9
    275b:	e8 b2 1e 00 00       	call   4612 <link>
    2760:	83 c4 10             	add    $0x10,%esp
    2763:	85 c0                	test   %eax,%eax
    2765:	0f 84 35 03 00 00    	je     2aa0 <subdir+0x740>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/ff/ff") == 0){
    276b:	83 ec 0c             	sub    $0xc,%esp
    276e:	68 de 52 00 00       	push   $0x52de
    2773:	e8 a2 1e 00 00       	call   461a <mkdir>
    2778:	83 c4 10             	add    $0x10,%esp
    277b:	85 c0                	test   %eax,%eax
    277d:	0f 84 f5 02 00 00    	je     2a78 <subdir+0x718>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/xx/ff") == 0){
    2783:	83 ec 0c             	sub    $0xc,%esp
    2786:	68 03 53 00 00       	push   $0x5303
    278b:	e8 8a 1e 00 00       	call   461a <mkdir>
    2790:	83 c4 10             	add    $0x10,%esp
    2793:	85 c0                	test   %eax,%eax
    2795:	0f 84 b5 02 00 00    	je     2a50 <subdir+0x6f0>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/dd/ffff") == 0){
    279b:	83 ec 0c             	sub    $0xc,%esp
    279e:	68 2a 52 00 00       	push   $0x522a
    27a3:	e8 72 1e 00 00       	call   461a <mkdir>
    27a8:	83 c4 10             	add    $0x10,%esp
    27ab:	85 c0                	test   %eax,%eax
    27ad:	0f 84 75 02 00 00    	je     2a28 <subdir+0x6c8>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/xx/ff") == 0){
    27b3:	83 ec 0c             	sub    $0xc,%esp
    27b6:	68 03 53 00 00       	push   $0x5303
    27bb:	e8 42 1e 00 00       	call   4602 <unlink>
    27c0:	83 c4 10             	add    $0x10,%esp
    27c3:	85 c0                	test   %eax,%eax
    27c5:	0f 84 35 02 00 00    	je     2a00 <subdir+0x6a0>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/ff/ff") == 0){
    27cb:	83 ec 0c             	sub    $0xc,%esp
    27ce:	68 de 52 00 00       	push   $0x52de
    27d3:	e8 2a 1e 00 00       	call   4602 <unlink>
    27d8:	83 c4 10             	add    $0x10,%esp
    27db:	85 c0                	test   %eax,%eax
    27dd:	0f 84 f5 01 00 00    	je     29d8 <subdir+0x678>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/ff") == 0){
    27e3:	83 ec 0c             	sub    $0xc,%esp
    27e6:	68 c9 51 00 00       	push   $0x51c9
    27eb:	e8 32 1e 00 00       	call   4622 <chdir>
    27f0:	83 c4 10             	add    $0x10,%esp
    27f3:	85 c0                	test   %eax,%eax
    27f5:	0f 84 b5 01 00 00    	je     29b0 <subdir+0x650>
    printf(1, "chdir dd/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/xx") == 0){
    27fb:	83 ec 0c             	sub    $0xc,%esp
    27fe:	68 75 53 00 00       	push   $0x5375
    2803:	e8 1a 1e 00 00       	call   4622 <chdir>
    2808:	83 c4 10             	add    $0x10,%esp
    280b:	85 c0                	test   %eax,%eax
    280d:	0f 84 75 01 00 00    	je     2988 <subdir+0x628>
    printf(1, "chdir dd/xx succeeded!\n");
    exit(0);
  }

  if(unlink("dd/dd/ffff") != 0){
    2813:	83 ec 0c             	sub    $0xc,%esp
    2816:	68 2a 52 00 00       	push   $0x522a
    281b:	e8 e2 1d 00 00       	call   4602 <unlink>
    2820:	83 c4 10             	add    $0x10,%esp
    2823:	85 c0                	test   %eax,%eax
    2825:	0f 85 35 01 00 00    	jne    2960 <subdir+0x600>
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd/ff") != 0){
    282b:	83 ec 0c             	sub    $0xc,%esp
    282e:	68 c9 51 00 00       	push   $0x51c9
    2833:	e8 ca 1d 00 00       	call   4602 <unlink>
    2838:	83 c4 10             	add    $0x10,%esp
    283b:	85 c0                	test   %eax,%eax
    283d:	0f 85 f5 00 00 00    	jne    2938 <subdir+0x5d8>
    printf(1, "unlink dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd") == 0){
    2843:	83 ec 0c             	sub    $0xc,%esp
    2846:	68 90 52 00 00       	push   $0x5290
    284b:	e8 b2 1d 00 00       	call   4602 <unlink>
    2850:	83 c4 10             	add    $0x10,%esp
    2853:	85 c0                	test   %eax,%eax
    2855:	0f 84 b5 00 00 00    	je     2910 <subdir+0x5b0>
    printf(1, "unlink non-empty dd succeeded!\n");
    exit(0);
  }
  if(unlink("dd/dd") < 0){
    285b:	83 ec 0c             	sub    $0xc,%esp
    285e:	68 a5 51 00 00       	push   $0x51a5
    2863:	e8 9a 1d 00 00       	call   4602 <unlink>
    2868:	83 c4 10             	add    $0x10,%esp
    286b:	85 c0                	test   %eax,%eax
    286d:	0f 88 5d 04 00 00    	js     2cd0 <subdir+0x970>
    printf(1, "unlink dd/dd failed\n");
    exit(0);
  }
  if(unlink("dd") < 0){
    2873:	83 ec 0c             	sub    $0xc,%esp
    2876:	68 90 52 00 00       	push   $0x5290
    287b:	e8 82 1d 00 00       	call   4602 <unlink>
    2880:	83 c4 10             	add    $0x10,%esp
    2883:	85 c0                	test   %eax,%eax
    2885:	0f 88 7d 03 00 00    	js     2c08 <subdir+0x8a8>
    printf(1, "unlink dd failed\n");
    exit(0);
  }

  printf(1, "subdir ok\n");
    288b:	83 ec 08             	sub    $0x8,%esp
    288e:	68 72 54 00 00       	push   $0x5472
    2893:	6a 01                	push   $0x1
    2895:	e8 66 1e 00 00       	call   4700 <printf>
}
    289a:	83 c4 10             	add    $0x10,%esp
    289d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    28a0:	c9                   	leave  
    28a1:	c3                   	ret    
    28a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  if(fd < 0){
    printf(1, "open dd/dd/../ff failed\n");
    exit(0);
  }
  cc = read(fd, buf, sizeof(buf));
  if(cc != 2 || buf[0] != 'f'){
    28a8:	80 3d e0 92 00 00 66 	cmpb   $0x66,0x92e0
    28af:	0f 85 d2 fb ff ff    	jne    2487 <subdir+0x127>
    28b5:	e9 eb fb ff ff       	jmp    24a5 <subdir+0x145>
    28ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit(0);
  }

  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    28c0:	83 ec 08             	sub    $0x8,%esp
    28c3:	68 ab 51 00 00       	push   $0x51ab
    28c8:	6a 01                	push   $0x1
    28ca:	e8 31 1e 00 00       	call   4700 <printf>
    exit(0);
    28cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    28d6:	e8 d7 1c 00 00       	call   45b2 <exit>
    28db:	83 c4 10             	add    $0x10,%esp
    28de:	e9 33 fb ff ff       	jmp    2416 <subdir+0xb6>
    28e3:	90                   	nop
    28e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  printf(1, "subdir test\n");

  unlink("ff");
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    28e8:	83 ec 08             	sub    $0x8,%esp
    28eb:	68 77 51 00 00       	push   $0x5177
    28f0:	6a 01                	push   $0x1
    28f2:	e8 09 1e 00 00       	call   4700 <printf>
    exit(0);
    28f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    28fe:	e8 af 1c 00 00       	call   45b2 <exit>
    2903:	83 c4 10             	add    $0x10,%esp
    2906:	e9 8b fa ff ff       	jmp    2396 <subdir+0x36>
    290b:	90                   	nop
    290c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    2910:	83 ec 08             	sub    $0x8,%esp
    2913:	68 60 5d 00 00       	push   $0x5d60
    2918:	6a 01                	push   $0x1
    291a:	e8 e1 1d 00 00       	call   4700 <printf>
    exit(0);
    291f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2926:	e8 87 1c 00 00       	call   45b2 <exit>
    292b:	83 c4 10             	add    $0x10,%esp
    292e:	e9 28 ff ff ff       	jmp    285b <subdir+0x4fb>
    2933:	90                   	nop
    2934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/dd/ffff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    2938:	83 ec 08             	sub    $0x8,%esp
    293b:	68 36 54 00 00       	push   $0x5436
    2940:	6a 01                	push   $0x1
    2942:	e8 b9 1d 00 00       	call   4700 <printf>
    exit(0);
    2947:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    294e:	e8 5f 1c 00 00       	call   45b2 <exit>
    2953:	83 c4 10             	add    $0x10,%esp
    2956:	e9 e8 fe ff ff       	jmp    2843 <subdir+0x4e3>
    295b:	90                   	nop
    295c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/xx succeeded!\n");
    exit(0);
  }

  if(unlink("dd/dd/ffff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    2960:	83 ec 08             	sub    $0x8,%esp
    2963:	68 35 52 00 00       	push   $0x5235
    2968:	6a 01                	push   $0x1
    296a:	e8 91 1d 00 00       	call   4700 <printf>
    exit(0);
    296f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2976:	e8 37 1c 00 00       	call   45b2 <exit>
    297b:	83 c4 10             	add    $0x10,%esp
    297e:	e9 a8 fe ff ff       	jmp    282b <subdir+0x4cb>
    2983:	90                   	nop
    2984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/xx") == 0){
    printf(1, "chdir dd/xx succeeded!\n");
    2988:	83 ec 08             	sub    $0x8,%esp
    298b:	68 1e 54 00 00       	push   $0x541e
    2990:	6a 01                	push   $0x1
    2992:	e8 69 1d 00 00       	call   4700 <printf>
    exit(0);
    2997:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    299e:	e8 0f 1c 00 00       	call   45b2 <exit>
    29a3:	83 c4 10             	add    $0x10,%esp
    29a6:	e9 68 fe ff ff       	jmp    2813 <subdir+0x4b3>
    29ab:	90                   	nop
    29ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    29b0:	83 ec 08             	sub    $0x8,%esp
    29b3:	68 06 54 00 00       	push   $0x5406
    29b8:	6a 01                	push   $0x1
    29ba:	e8 41 1d 00 00       	call   4700 <printf>
    exit(0);
    29bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29c6:	e8 e7 1b 00 00       	call   45b2 <exit>
    29cb:	83 c4 10             	add    $0x10,%esp
    29ce:	e9 28 fe ff ff       	jmp    27fb <subdir+0x49b>
    29d3:	90                   	nop
    29d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    29d8:	83 ec 08             	sub    $0x8,%esp
    29db:	68 ea 53 00 00       	push   $0x53ea
    29e0:	6a 01                	push   $0x1
    29e2:	e8 19 1d 00 00       	call   4700 <printf>
    exit(0);
    29e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29ee:	e8 bf 1b 00 00       	call   45b2 <exit>
    29f3:	83 c4 10             	add    $0x10,%esp
    29f6:	e9 e8 fd ff ff       	jmp    27e3 <subdir+0x483>
    29fb:	90                   	nop
    29fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2a00:	83 ec 08             	sub    $0x8,%esp
    2a03:	68 ce 53 00 00       	push   $0x53ce
    2a08:	6a 01                	push   $0x1
    2a0a:	e8 f1 1c 00 00       	call   4700 <printf>
    exit(0);
    2a0f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a16:	e8 97 1b 00 00       	call   45b2 <exit>
    2a1b:	83 c4 10             	add    $0x10,%esp
    2a1e:	e9 a8 fd ff ff       	jmp    27cb <subdir+0x46b>
    2a23:	90                   	nop
    2a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2a28:	83 ec 08             	sub    $0x8,%esp
    2a2b:	68 b1 53 00 00       	push   $0x53b1
    2a30:	6a 01                	push   $0x1
    2a32:	e8 c9 1c 00 00       	call   4700 <printf>
    exit(0);
    2a37:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a3e:	e8 6f 1b 00 00       	call   45b2 <exit>
    2a43:	83 c4 10             	add    $0x10,%esp
    2a46:	e9 68 fd ff ff       	jmp    27b3 <subdir+0x453>
    2a4b:	90                   	nop
    2a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2a50:	83 ec 08             	sub    $0x8,%esp
    2a53:	68 96 53 00 00       	push   $0x5396
    2a58:	6a 01                	push   $0x1
    2a5a:	e8 a1 1c 00 00       	call   4700 <printf>
    exit(0);
    2a5f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a66:	e8 47 1b 00 00       	call   45b2 <exit>
    2a6b:	83 c4 10             	add    $0x10,%esp
    2a6e:	e9 28 fd ff ff       	jmp    279b <subdir+0x43b>
    2a73:	90                   	nop
    2a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2a78:	83 ec 08             	sub    $0x8,%esp
    2a7b:	68 7b 53 00 00       	push   $0x537b
    2a80:	6a 01                	push   $0x1
    2a82:	e8 79 1c 00 00       	call   4700 <printf>
    exit(0);
    2a87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a8e:	e8 1f 1b 00 00       	call   45b2 <exit>
    2a93:	83 c4 10             	add    $0x10,%esp
    2a96:	e9 e8 fc ff ff       	jmp    2783 <subdir+0x423>
    2a9b:	90                   	nop
    2a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2aa0:	83 ec 08             	sub    $0x8,%esp
    2aa3:	68 3c 5d 00 00       	push   $0x5d3c
    2aa8:	6a 01                	push   $0x1
    2aaa:	e8 51 1c 00 00       	call   4700 <printf>
    exit(0);
    2aaf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ab6:	e8 f7 1a 00 00       	call   45b2 <exit>
    2abb:	83 c4 10             	add    $0x10,%esp
    2abe:	e9 a8 fc ff ff       	jmp    276b <subdir+0x40b>
    2ac3:	90                   	nop
    2ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2ac8:	83 ec 08             	sub    $0x8,%esp
    2acb:	68 18 5d 00 00       	push   $0x5d18
    2ad0:	6a 01                	push   $0x1
    2ad2:	e8 29 1c 00 00       	call   4700 <printf>
    exit(0);
    2ad7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ade:	e8 cf 1a 00 00       	call   45b2 <exit>
    2ae3:	83 c4 10             	add    $0x10,%esp
    2ae6:	e9 63 fc ff ff       	jmp    274e <subdir+0x3ee>
    2aeb:	90                   	nop
    2aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    exit(0);
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    2af0:	83 ec 08             	sub    $0x8,%esp
    2af3:	68 f4 5c 00 00       	push   $0x5cf4
    2af8:	6a 01                	push   $0x1
    2afa:	e8 01 1c 00 00       	call   4700 <printf>
    exit(0);
    2aff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b06:	e8 a7 1a 00 00       	call   45b2 <exit>
    2b0b:	83 c4 10             	add    $0x10,%esp
    2b0e:	e9 1e fc ff ff       	jmp    2731 <subdir+0x3d1>
    2b13:	90                   	nop
    2b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dd/../../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    2b18:	83 ec 08             	sub    $0x8,%esp
    2b1b:	68 98 52 00 00       	push   $0x5298
    2b20:	6a 01                	push   $0x1
    2b22:	e8 d9 1b 00 00       	call   4700 <printf>
    exit(0);
    2b27:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b2e:	e8 7f 1a 00 00       	call   45b2 <exit>
    2b33:	83 c4 10             	add    $0x10,%esp
    2b36:	e9 3b fa ff ff       	jmp    2576 <subdir+0x216>
    2b3b:	90                   	nop
    2b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dd/../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    2b40:	83 ec 08             	sub    $0x8,%esp
    2b43:	68 6a 52 00 00       	push   $0x526a
    2b48:	6a 01                	push   $0x1
    2b4a:	e8 b1 1b 00 00       	call   4700 <printf>
    exit(0);
    2b4f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b56:	e8 57 1a 00 00       	call   45b2 <exit>
    2b5b:	83 c4 10             	add    $0x10,%esp
    2b5e:	e9 fb f9 ff ff       	jmp    255e <subdir+0x1fe>
    2b63:	90                   	nop
    2b64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    2b68:	83 ec 08             	sub    $0x8,%esp
    2b6b:	68 6a 52 00 00       	push   $0x526a
    2b70:	6a 01                	push   $0x1
    2b72:	e8 89 1b 00 00       	call   4700 <printf>
    exit(0);
    2b77:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b7e:	e8 2f 1a 00 00       	call   45b2 <exit>
    2b83:	83 c4 10             	add    $0x10,%esp
    2b86:	e9 bb f9 ff ff       	jmp    2546 <subdir+0x1e6>
    2b8b:	90                   	nop
    2b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit(0);
  }

  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    2b90:	83 ec 08             	sub    $0x8,%esp
    2b93:	68 4d 52 00 00       	push   $0x524d
    2b98:	6a 01                	push   $0x1
    2b9a:	e8 61 1b 00 00       	call   4700 <printf>
    exit(0);
    2b9f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ba6:	e8 07 1a 00 00       	call   45b2 <exit>
    2bab:	83 c4 10             	add    $0x10,%esp
    2bae:	e9 7b f9 ff ff       	jmp    252e <subdir+0x1ce>
    2bb3:	90                   	nop
    2bb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit(0);
  }

  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    2bb8:	83 ec 08             	sub    $0x8,%esp
    2bbb:	68 35 52 00 00       	push   $0x5235
    2bc0:	6a 01                	push   $0x1
    2bc2:	e8 39 1b 00 00       	call   4700 <printf>
    exit(0);
    2bc7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bce:	e8 df 19 00 00       	call   45b2 <exit>
    2bd3:	83 c4 10             	add    $0x10,%esp
    2bd6:	e9 07 f9 ff ff       	jmp    24e2 <subdir+0x182>
    2bdb:	90                   	nop
    2bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }
  close(fd);

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2be0:	83 ec 08             	sub    $0x8,%esp
    2be3:	68 84 5c 00 00       	push   $0x5c84
    2be8:	6a 01                	push   $0x1
    2bea:	e8 11 1b 00 00       	call   4700 <printf>
    exit(0);
    2bef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bf6:	e8 b7 19 00 00       	call   45b2 <exit>
    2bfb:	83 c4 10             	add    $0x10,%esp
    2bfe:	e9 c7 f8 ff ff       	jmp    24ca <subdir+0x16a>
    2c03:	90                   	nop
    2c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    exit(0);
  }
  if(unlink("dd") < 0){
    printf(1, "unlink dd failed\n");
    2c08:	83 ec 08             	sub    $0x8,%esp
    2c0b:	68 60 54 00 00       	push   $0x5460
    2c10:	6a 01                	push   $0x1
    2c12:	e8 e9 1a 00 00       	call   4700 <printf>
    exit(0);
    2c17:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c1e:	e8 8f 19 00 00       	call   45b2 <exit>
    2c23:	83 c4 10             	add    $0x10,%esp
    2c26:	e9 60 fc ff ff       	jmp    288b <subdir+0x52b>
    2c2b:	90                   	nop
    2c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/dd/ff failed\n");
    2c30:	83 ec 08             	sub    $0x8,%esp
    2c33:	68 cf 51 00 00       	push   $0x51cf
    2c38:	6a 01                	push   $0x1
    2c3a:	e8 c1 1a 00 00       	call   4700 <printf>
    exit(0);
    2c3f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c46:	e8 67 19 00 00       	call   45b2 <exit>
    2c4b:	83 c4 10             	add    $0x10,%esp
    2c4e:	e9 e2 f7 ff ff       	jmp    2435 <subdir+0xd5>
    2c53:	90                   	nop
    2c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/../ff failed\n");
    2c58:	83 ec 08             	sub    $0x8,%esp
    2c5b:	68 f6 51 00 00       	push   $0x51f6
    2c60:	6a 01                	push   $0x1
    2c62:	e8 99 1a 00 00       	call   4700 <printf>
    exit(0);
    2c67:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c6e:	e8 3f 19 00 00       	call   45b2 <exit>
    2c73:	83 c4 10             	add    $0x10,%esp
    2c76:	e9 ed f7 ff ff       	jmp    2468 <subdir+0x108>
    2c7b:	90                   	nop
    2c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    2c80:	83 ec 08             	sub    $0x8,%esp
    2c83:	68 ab 52 00 00       	push   $0x52ab
    2c88:	6a 01                	push   $0x1
    2c8a:	e8 71 1a 00 00       	call   4700 <printf>
    exit(0);
    2c8f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c96:	e8 17 19 00 00       	call   45b2 <exit>
    2c9b:	83 c4 10             	add    $0x10,%esp
    2c9e:	e9 ef f8 ff ff       	jmp    2592 <subdir+0x232>
    2ca3:	90                   	nop
    2ca4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/ff failed\n");
    2ca8:	83 ec 08             	sub    $0x8,%esp
    2cab:	68 8f 51 00 00       	push   $0x518f
    2cb0:	6a 01                	push   $0x1
    2cb2:	e8 49 1a 00 00       	call   4700 <printf>
    exit(0);
    2cb7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2cbe:	e8 ef 18 00 00       	call   45b2 <exit>
    2cc3:	83 c4 10             	add    $0x10,%esp
    2cc6:	e9 ea f6 ff ff       	jmp    23b5 <subdir+0x55>
    2ccb:	90                   	nop
    2ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    exit(0);
  }
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    2cd0:	83 ec 08             	sub    $0x8,%esp
    2cd3:	68 4b 54 00 00       	push   $0x544b
    2cd8:	6a 01                	push   $0x1
    2cda:	e8 21 1a 00 00       	call   4700 <printf>
    exit(0);
    2cdf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ce6:	e8 c7 18 00 00       	call   45b2 <exit>
    2ceb:	83 c4 10             	add    $0x10,%esp
    2cee:	e9 80 fb ff ff       	jmp    2873 <subdir+0x513>
    2cf3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2cf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002d00 <bigwrite>:
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    2d00:	55                   	push   %ebp
    2d01:	89 e5                	mov    %esp,%ebp
    2d03:	57                   	push   %edi
    2d04:	56                   	push   %esi
    2d05:	53                   	push   %ebx
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2d06:	bb f3 01 00 00       	mov    $0x1f3,%ebx
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    2d0b:	83 ec 14             	sub    $0x14,%esp
  int fd, sz;

  printf(1, "bigwrite test\n");
    2d0e:	68 7d 54 00 00       	push   $0x547d
    2d13:	6a 01                	push   $0x1
    2d15:	e8 e6 19 00 00       	call   4700 <printf>

  unlink("bigwrite");
    2d1a:	c7 04 24 8c 54 00 00 	movl   $0x548c,(%esp)
    2d21:	e8 dc 18 00 00       	call   4602 <unlink>
    2d26:	83 c4 10             	add    $0x10,%esp
    2d29:	eb 68                	jmp    2d93 <bigwrite+0x93>
    2d2b:	90                   	nop
    2d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(sz = 499; sz < 12*512; sz += 471){
    2d30:	be 02 00 00 00       	mov    $0x2,%esi
      printf(1, "cannot create bigwrite\n");
      exit(0);
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    2d35:	83 ec 04             	sub    $0x4,%esp
    2d38:	53                   	push   %ebx
    2d39:	68 e0 92 00 00       	push   $0x92e0
    2d3e:	57                   	push   %edi
    2d3f:	e8 8e 18 00 00       	call   45d2 <write>
      if(cc != sz){
    2d44:	83 c4 10             	add    $0x10,%esp
    2d47:	39 d8                	cmp    %ebx,%eax
    2d49:	74 1d                	je     2d68 <bigwrite+0x68>
        printf(1, "write(%d) ret %d\n", sz, cc);
    2d4b:	50                   	push   %eax
    2d4c:	53                   	push   %ebx
    2d4d:	68 ad 54 00 00       	push   $0x54ad
    2d52:	6a 01                	push   $0x1
    2d54:	e8 a7 19 00 00       	call   4700 <printf>
        exit(0);
    2d59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d60:	e8 4d 18 00 00       	call   45b2 <exit>
    2d65:	83 c4 10             	add    $0x10,%esp
    if(fd < 0){
      printf(1, "cannot create bigwrite\n");
      exit(0);
    }
    int i;
    for(i = 0; i < 2; i++){
    2d68:	83 ee 01             	sub    $0x1,%esi
    2d6b:	75 c8                	jne    2d35 <bigwrite+0x35>
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit(0);
      }
    }
    close(fd);
    2d6d:	83 ec 0c             	sub    $0xc,%esp
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2d70:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit(0);
      }
    }
    close(fd);
    2d76:	57                   	push   %edi
    2d77:	e8 5e 18 00 00       	call   45da <close>
    unlink("bigwrite");
    2d7c:	c7 04 24 8c 54 00 00 	movl   $0x548c,(%esp)
    2d83:	e8 7a 18 00 00       	call   4602 <unlink>
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2d88:	83 c4 10             	add    $0x10,%esp
    2d8b:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    2d91:	74 45                	je     2dd8 <bigwrite+0xd8>
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2d93:	83 ec 08             	sub    $0x8,%esp
    2d96:	68 02 02 00 00       	push   $0x202
    2d9b:	68 8c 54 00 00       	push   $0x548c
    2da0:	e8 4d 18 00 00       	call   45f2 <open>
    if(fd < 0){
    2da5:	83 c4 10             	add    $0x10,%esp
    2da8:	85 c0                	test   %eax,%eax

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2daa:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    2dac:	79 82                	jns    2d30 <bigwrite+0x30>
      printf(1, "cannot create bigwrite\n");
    2dae:	83 ec 08             	sub    $0x8,%esp
    2db1:	68 95 54 00 00       	push   $0x5495
    2db6:	6a 01                	push   $0x1
    2db8:	e8 43 19 00 00       	call   4700 <printf>
      exit(0);
    2dbd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dc4:	e8 e9 17 00 00       	call   45b2 <exit>
    2dc9:	83 c4 10             	add    $0x10,%esp
    2dcc:	e9 5f ff ff ff       	jmp    2d30 <bigwrite+0x30>
    2dd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
    close(fd);
    unlink("bigwrite");
  }

  printf(1, "bigwrite ok\n");
    2dd8:	83 ec 08             	sub    $0x8,%esp
    2ddb:	68 bf 54 00 00       	push   $0x54bf
    2de0:	6a 01                	push   $0x1
    2de2:	e8 19 19 00 00       	call   4700 <printf>
}
    2de7:	83 c4 10             	add    $0x10,%esp
    2dea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2ded:	5b                   	pop    %ebx
    2dee:	5e                   	pop    %esi
    2def:	5f                   	pop    %edi
    2df0:	5d                   	pop    %ebp
    2df1:	c3                   	ret    
    2df2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2df9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002e00 <bigfile>:

void
bigfile(void)
{
    2e00:	55                   	push   %ebp
    2e01:	89 e5                	mov    %esp,%ebp
    2e03:	57                   	push   %edi
    2e04:	56                   	push   %esi
    2e05:	53                   	push   %ebx
    2e06:	83 ec 24             	sub    $0x24,%esp
  int fd, i, total, cc;

  printf(1, "bigfile test\n");
    2e09:	68 cc 54 00 00       	push   $0x54cc
    2e0e:	6a 01                	push   $0x1
    2e10:	e8 eb 18 00 00       	call   4700 <printf>

  unlink("bigfile");
    2e15:	c7 04 24 e8 54 00 00 	movl   $0x54e8,(%esp)
    2e1c:	e8 e1 17 00 00       	call   4602 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2e21:	5e                   	pop    %esi
    2e22:	5f                   	pop    %edi
    2e23:	68 02 02 00 00       	push   $0x202
    2e28:	68 e8 54 00 00       	push   $0x54e8
    2e2d:	e8 c0 17 00 00       	call   45f2 <open>
  if(fd < 0){
    2e32:	83 c4 10             	add    $0x10,%esp
    2e35:	85 c0                	test   %eax,%eax
  int fd, i, total, cc;

  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
    2e37:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2e39:	0f 88 9b 01 00 00    	js     2fda <bigfile+0x1da>
  printf(1, "bigwrite ok\n");
}

void
bigfile(void)
{
    2e3f:	31 db                	xor    %ebx,%ebx
    2e41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if(fd < 0){
    printf(1, "cannot create bigfile");
    exit(0);
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    2e48:	83 ec 04             	sub    $0x4,%esp
    2e4b:	68 58 02 00 00       	push   $0x258
    2e50:	53                   	push   %ebx
    2e51:	68 e0 92 00 00       	push   $0x92e0
    2e56:	e8 c5 15 00 00       	call   4420 <memset>
    if(write(fd, buf, 600) != 600){
    2e5b:	83 c4 0c             	add    $0xc,%esp
    2e5e:	68 58 02 00 00       	push   $0x258
    2e63:	68 e0 92 00 00       	push   $0x92e0
    2e68:	56                   	push   %esi
    2e69:	e8 64 17 00 00       	call   45d2 <write>
    2e6e:	83 c4 10             	add    $0x10,%esp
    2e71:	3d 58 02 00 00       	cmp    $0x258,%eax
    2e76:	74 1e                	je     2e96 <bigfile+0x96>
      printf(1, "write bigfile failed\n");
    2e78:	83 ec 08             	sub    $0x8,%esp
    2e7b:	68 f0 54 00 00       	push   $0x54f0
    2e80:	6a 01                	push   $0x1
    2e82:	e8 79 18 00 00       	call   4700 <printf>
      exit(0);
    2e87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e8e:	e8 1f 17 00 00       	call   45b2 <exit>
    2e93:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    exit(0);
  }
  for(i = 0; i < 20; i++){
    2e96:	83 c3 01             	add    $0x1,%ebx
    2e99:	83 fb 14             	cmp    $0x14,%ebx
    2e9c:	75 aa                	jne    2e48 <bigfile+0x48>
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
      exit(0);
    }
  }
  close(fd);
    2e9e:	83 ec 0c             	sub    $0xc,%esp
    2ea1:	56                   	push   %esi
    2ea2:	e8 33 17 00 00       	call   45da <close>

  fd = open("bigfile", 0);
    2ea7:	59                   	pop    %ecx
    2ea8:	5b                   	pop    %ebx
    2ea9:	6a 00                	push   $0x0
    2eab:	68 e8 54 00 00       	push   $0x54e8
    2eb0:	e8 3d 17 00 00       	call   45f2 <open>
  if(fd < 0){
    2eb5:	83 c4 10             	add    $0x10,%esp
    2eb8:	85 c0                	test   %eax,%eax
      exit(0);
    }
  }
  close(fd);

  fd = open("bigfile", 0);
    2eba:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(fd < 0){
    2ebd:	0f 88 3a 01 00 00    	js     2ffd <bigfile+0x1fd>
  printf(1, "bigwrite ok\n");
}

void
bigfile(void)
{
    2ec3:	31 f6                	xor    %esi,%esi
    2ec5:	31 db                	xor    %ebx,%ebx
    2ec7:	eb 44                	jmp    2f0d <bigfile+0x10d>
    2ec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
    if(cc != 300){
      printf(1, "short read bigfile\n");
      exit(0);
    }
    if(buf[0] != i/2 || buf[299] != i/2){
    2ed0:	0f be 05 e0 92 00 00 	movsbl 0x92e0,%eax
    2ed7:	89 d9                	mov    %ebx,%ecx
    2ed9:	d1 f9                	sar    %ecx
    2edb:	39 c8                	cmp    %ecx,%eax
    2edd:	75 0b                	jne    2eea <bigfile+0xea>
    2edf:	0f be 0d 0b 94 00 00 	movsbl 0x940b,%ecx
    2ee6:	39 c8                	cmp    %ecx,%eax
    2ee8:	74 1e                	je     2f08 <bigfile+0x108>
      printf(1, "read bigfile wrong data\n");
    2eea:	83 ec 08             	sub    $0x8,%esp
    2eed:	68 44 55 00 00       	push   $0x5544
    2ef2:	6a 01                	push   $0x1
    2ef4:	e8 07 18 00 00       	call   4700 <printf>
      exit(0);
    2ef9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f00:	e8 ad 16 00 00       	call   45b2 <exit>
    2f05:	83 c4 10             	add    $0x10,%esp
    }
    total += cc;
    2f08:	01 fe                	add    %edi,%esi
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    exit(0);
  }
  total = 0;
  for(i = 0; ; i++){
    2f0a:	83 c3 01             	add    $0x1,%ebx
    cc = read(fd, buf, 300);
    2f0d:	83 ec 04             	sub    $0x4,%esp
    2f10:	68 2c 01 00 00       	push   $0x12c
    2f15:	68 e0 92 00 00       	push   $0x92e0
    2f1a:	ff 75 e4             	pushl  -0x1c(%ebp)
    2f1d:	e8 a8 16 00 00       	call   45ca <read>
    if(cc < 0){
    2f22:	83 c4 10             	add    $0x10,%esp
    2f25:	85 c0                	test   %eax,%eax
    printf(1, "cannot open bigfile\n");
    exit(0);
  }
  total = 0;
  for(i = 0; ; i++){
    cc = read(fd, buf, 300);
    2f27:	89 c7                	mov    %eax,%edi
    if(cc < 0){
    2f29:	78 35                	js     2f60 <bigfile+0x160>
      printf(1, "read bigfile failed\n");
      exit(0);
    }
    if(cc == 0)
    2f2b:	74 53                	je     2f80 <bigfile+0x180>
      break;
    if(cc != 300){
    2f2d:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2f32:	74 9c                	je     2ed0 <bigfile+0xd0>
      printf(1, "short read bigfile\n");
    2f34:	83 ec 08             	sub    $0x8,%esp
    2f37:	68 30 55 00 00       	push   $0x5530
    2f3c:	6a 01                	push   $0x1
    2f3e:	e8 bd 17 00 00       	call   4700 <printf>
      exit(0);
    2f43:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f4a:	e8 63 16 00 00       	call   45b2 <exit>
    2f4f:	83 c4 10             	add    $0x10,%esp
    2f52:	e9 79 ff ff ff       	jmp    2ed0 <bigfile+0xd0>
    2f57:	89 f6                	mov    %esi,%esi
    2f59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  }
  total = 0;
  for(i = 0; ; i++){
    cc = read(fd, buf, 300);
    if(cc < 0){
      printf(1, "read bigfile failed\n");
    2f60:	83 ec 08             	sub    $0x8,%esp
    2f63:	68 1b 55 00 00       	push   $0x551b
    2f68:	6a 01                	push   $0x1
    2f6a:	e8 91 17 00 00       	call   4700 <printf>
      exit(0);
    2f6f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f76:	e8 37 16 00 00       	call   45b2 <exit>
    2f7b:	83 c4 10             	add    $0x10,%esp
    2f7e:	eb b4                	jmp    2f34 <bigfile+0x134>
      printf(1, "read bigfile wrong data\n");
      exit(0);
    }
    total += cc;
  }
  close(fd);
    2f80:	83 ec 0c             	sub    $0xc,%esp
    2f83:	ff 75 e4             	pushl  -0x1c(%ebp)
    2f86:	e8 4f 16 00 00       	call   45da <close>
  if(total != 20*600){
    2f8b:	83 c4 10             	add    $0x10,%esp
    2f8e:	81 fe e0 2e 00 00    	cmp    $0x2ee0,%esi
    2f94:	74 1e                	je     2fb4 <bigfile+0x1b4>
    printf(1, "read bigfile wrong total\n");
    2f96:	83 ec 08             	sub    $0x8,%esp
    2f99:	68 5d 55 00 00       	push   $0x555d
    2f9e:	6a 01                	push   $0x1
    2fa0:	e8 5b 17 00 00       	call   4700 <printf>
    exit(0);
    2fa5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fac:	e8 01 16 00 00       	call   45b2 <exit>
    2fb1:	83 c4 10             	add    $0x10,%esp
  }
  unlink("bigfile");
    2fb4:	83 ec 0c             	sub    $0xc,%esp
    2fb7:	68 e8 54 00 00       	push   $0x54e8
    2fbc:	e8 41 16 00 00       	call   4602 <unlink>

  printf(1, "bigfile test ok\n");
    2fc1:	58                   	pop    %eax
    2fc2:	5a                   	pop    %edx
    2fc3:	68 77 55 00 00       	push   $0x5577
    2fc8:	6a 01                	push   $0x1
    2fca:	e8 31 17 00 00       	call   4700 <printf>
}
    2fcf:	83 c4 10             	add    $0x10,%esp
    2fd2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fd5:	5b                   	pop    %ebx
    2fd6:	5e                   	pop    %esi
    2fd7:	5f                   	pop    %edi
    2fd8:	5d                   	pop    %ebp
    2fd9:	c3                   	ret    
  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    2fda:	83 ec 08             	sub    $0x8,%esp
    2fdd:	68 da 54 00 00       	push   $0x54da
    2fe2:	6a 01                	push   $0x1
    2fe4:	e8 17 17 00 00       	call   4700 <printf>
    exit(0);
    2fe9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ff0:	e8 bd 15 00 00       	call   45b2 <exit>
    2ff5:	83 c4 10             	add    $0x10,%esp
    2ff8:	e9 42 fe ff ff       	jmp    2e3f <bigfile+0x3f>
  }
  close(fd);

  fd = open("bigfile", 0);
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    2ffd:	83 ec 08             	sub    $0x8,%esp
    3000:	68 06 55 00 00       	push   $0x5506
    3005:	6a 01                	push   $0x1
    3007:	e8 f4 16 00 00       	call   4700 <printf>
    exit(0);
    300c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3013:	e8 9a 15 00 00       	call   45b2 <exit>
    3018:	83 c4 10             	add    $0x10,%esp
    301b:	e9 a3 fe ff ff       	jmp    2ec3 <bigfile+0xc3>

00003020 <fourteen>:
  printf(1, "bigfile test ok\n");
}

void
fourteen(void)
{
    3020:	55                   	push   %ebp
    3021:	89 e5                	mov    %esp,%ebp
    3023:	53                   	push   %ebx
    3024:	83 ec 0c             	sub    $0xc,%esp
  int fd;

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");
    3027:	68 88 55 00 00       	push   $0x5588
    302c:	6a 01                	push   $0x1
    302e:	e8 cd 16 00 00       	call   4700 <printf>

  if(mkdir("12345678901234") != 0){
    3033:	c7 04 24 c3 55 00 00 	movl   $0x55c3,(%esp)
    303a:	e8 db 15 00 00       	call   461a <mkdir>
    303f:	83 c4 10             	add    $0x10,%esp
    3042:	85 c0                	test   %eax,%eax
    3044:	0f 85 0e 01 00 00    	jne    3158 <fourteen+0x138>
    printf(1, "mkdir 12345678901234 failed\n");
    exit(0);
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    304a:	83 ec 0c             	sub    $0xc,%esp
    304d:	68 80 5d 00 00       	push   $0x5d80
    3052:	e8 c3 15 00 00       	call   461a <mkdir>
    3057:	83 c4 10             	add    $0x10,%esp
    305a:	85 c0                	test   %eax,%eax
    305c:	0f 85 ce 00 00 00    	jne    3130 <fourteen+0x110>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit(0);
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    3062:	83 ec 08             	sub    $0x8,%esp
    3065:	68 00 02 00 00       	push   $0x200
    306a:	68 d0 5d 00 00       	push   $0x5dd0
    306f:	e8 7e 15 00 00       	call   45f2 <open>
  if(fd < 0){
    3074:	83 c4 10             	add    $0x10,%esp
    3077:	85 c0                	test   %eax,%eax
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit(0);
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    3079:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    307b:	0f 88 27 01 00 00    	js     31a8 <fourteen+0x188>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    exit(0);
  }
  close(fd);
    3081:	83 ec 0c             	sub    $0xc,%esp
    3084:	53                   	push   %ebx
    3085:	e8 50 15 00 00       	call   45da <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    308a:	58                   	pop    %eax
    308b:	5a                   	pop    %edx
    308c:	6a 00                	push   $0x0
    308e:	68 40 5e 00 00       	push   $0x5e40
    3093:	e8 5a 15 00 00       	call   45f2 <open>
  if(fd < 0){
    3098:	83 c4 10             	add    $0x10,%esp
    309b:	85 c0                	test   %eax,%eax
  if(fd < 0){
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    exit(0);
  }
  close(fd);
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    309d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    309f:	0f 88 db 00 00 00    	js     3180 <fourteen+0x160>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    exit(0);
  }
  close(fd);
    30a5:	83 ec 0c             	sub    $0xc,%esp
    30a8:	53                   	push   %ebx
    30a9:	e8 2c 15 00 00       	call   45da <close>

  if(mkdir("12345678901234/12345678901234") == 0){
    30ae:	c7 04 24 b4 55 00 00 	movl   $0x55b4,(%esp)
    30b5:	e8 60 15 00 00       	call   461a <mkdir>
    30ba:	83 c4 10             	add    $0x10,%esp
    30bd:	85 c0                	test   %eax,%eax
    30bf:	74 4f                	je     3110 <fourteen+0xf0>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit(0);
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    30c1:	83 ec 0c             	sub    $0xc,%esp
    30c4:	68 dc 5e 00 00       	push   $0x5edc
    30c9:	e8 4c 15 00 00       	call   461a <mkdir>
    30ce:	83 c4 10             	add    $0x10,%esp
    30d1:	85 c0                	test   %eax,%eax
    30d3:	75 1e                	jne    30f3 <fourteen+0xd3>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    30d5:	83 ec 08             	sub    $0x8,%esp
    30d8:	68 fc 5e 00 00       	push   $0x5efc
    30dd:	6a 01                	push   $0x1
    30df:	e8 1c 16 00 00       	call   4700 <printf>
    exit(0);
    30e4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30eb:	e8 c2 14 00 00       	call   45b2 <exit>
    30f0:	83 c4 10             	add    $0x10,%esp
  }

  printf(1, "fourteen ok\n");
    30f3:	83 ec 08             	sub    $0x8,%esp
    30f6:	68 d2 55 00 00       	push   $0x55d2
    30fb:	6a 01                	push   $0x1
    30fd:	e8 fe 15 00 00       	call   4700 <printf>
}
    3102:	83 c4 10             	add    $0x10,%esp
    3105:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3108:	c9                   	leave  
    3109:	c3                   	ret    
    310a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit(0);
  }
  close(fd);

  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    3110:	83 ec 08             	sub    $0x8,%esp
    3113:	68 ac 5e 00 00       	push   $0x5eac
    3118:	6a 01                	push   $0x1
    311a:	e8 e1 15 00 00       	call   4700 <printf>
    exit(0);
    311f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3126:	e8 87 14 00 00       	call   45b2 <exit>
    312b:	83 c4 10             	add    $0x10,%esp
    312e:	eb 91                	jmp    30c1 <fourteen+0xa1>
  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    exit(0);
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    3130:	83 ec 08             	sub    $0x8,%esp
    3133:	68 a0 5d 00 00       	push   $0x5da0
    3138:	6a 01                	push   $0x1
    313a:	e8 c1 15 00 00       	call   4700 <printf>
    exit(0);
    313f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3146:	e8 67 14 00 00       	call   45b2 <exit>
    314b:	83 c4 10             	add    $0x10,%esp
    314e:	e9 0f ff ff ff       	jmp    3062 <fourteen+0x42>
    3153:	90                   	nop
    3154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");

  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    3158:	83 ec 08             	sub    $0x8,%esp
    315b:	68 97 55 00 00       	push   $0x5597
    3160:	6a 01                	push   $0x1
    3162:	e8 99 15 00 00       	call   4700 <printf>
    exit(0);
    3167:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    316e:	e8 3f 14 00 00       	call   45b2 <exit>
    3173:	83 c4 10             	add    $0x10,%esp
    3176:	e9 cf fe ff ff       	jmp    304a <fourteen+0x2a>
    317b:	90                   	nop
    317c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(0);
  }
  close(fd);
  fd = open("12345678901234/12345678901234/12345678901234", 0);
  if(fd < 0){
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    3180:	83 ec 08             	sub    $0x8,%esp
    3183:	68 70 5e 00 00       	push   $0x5e70
    3188:	6a 01                	push   $0x1
    318a:	e8 71 15 00 00       	call   4700 <printf>
    exit(0);
    318f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3196:	e8 17 14 00 00       	call   45b2 <exit>
    319b:	83 c4 10             	add    $0x10,%esp
    319e:	e9 02 ff ff ff       	jmp    30a5 <fourteen+0x85>
    31a3:	90                   	nop
    31a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit(0);
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
  if(fd < 0){
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    31a8:	83 ec 08             	sub    $0x8,%esp
    31ab:	68 00 5e 00 00       	push   $0x5e00
    31b0:	6a 01                	push   $0x1
    31b2:	e8 49 15 00 00       	call   4700 <printf>
    exit(0);
    31b7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31be:	e8 ef 13 00 00       	call   45b2 <exit>
    31c3:	83 c4 10             	add    $0x10,%esp
    31c6:	e9 b6 fe ff ff       	jmp    3081 <fourteen+0x61>
    31cb:	90                   	nop
    31cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000031d0 <rmdot>:
  printf(1, "fourteen ok\n");
}

void
rmdot(void)
{
    31d0:	55                   	push   %ebp
    31d1:	89 e5                	mov    %esp,%ebp
    31d3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    31d6:	68 df 55 00 00       	push   $0x55df
    31db:	6a 01                	push   $0x1
    31dd:	e8 1e 15 00 00       	call   4700 <printf>
  if(mkdir("dots") != 0){
    31e2:	c7 04 24 eb 55 00 00 	movl   $0x55eb,(%esp)
    31e9:	e8 2c 14 00 00       	call   461a <mkdir>
    31ee:	83 c4 10             	add    $0x10,%esp
    31f1:	85 c0                	test   %eax,%eax
    31f3:	0f 85 bf 01 00 00    	jne    33b8 <rmdot+0x1e8>
    printf(1, "mkdir dots failed\n");
    exit(0);
  }
  if(chdir("dots") != 0){
    31f9:	83 ec 0c             	sub    $0xc,%esp
    31fc:	68 eb 55 00 00       	push   $0x55eb
    3201:	e8 1c 14 00 00       	call   4622 <chdir>
    3206:	83 c4 10             	add    $0x10,%esp
    3209:	85 c0                	test   %eax,%eax
    320b:	0f 85 7f 01 00 00    	jne    3390 <rmdot+0x1c0>
    printf(1, "chdir dots failed\n");
    exit(0);
  }
  if(unlink(".") == 0){
    3211:	83 ec 0c             	sub    $0xc,%esp
    3214:	68 96 52 00 00       	push   $0x5296
    3219:	e8 e4 13 00 00       	call   4602 <unlink>
    321e:	83 c4 10             	add    $0x10,%esp
    3221:	85 c0                	test   %eax,%eax
    3223:	0f 84 3f 01 00 00    	je     3368 <rmdot+0x198>
    printf(1, "rm . worked!\n");
    exit(0);
  }
  if(unlink("..") == 0){
    3229:	83 ec 0c             	sub    $0xc,%esp
    322c:	68 95 52 00 00       	push   $0x5295
    3231:	e8 cc 13 00 00       	call   4602 <unlink>
    3236:	83 c4 10             	add    $0x10,%esp
    3239:	85 c0                	test   %eax,%eax
    323b:	0f 84 ff 00 00 00    	je     3340 <rmdot+0x170>
    printf(1, "rm .. worked!\n");
    exit(0);
  }
  if(chdir("/") != 0){
    3241:	83 ec 0c             	sub    $0xc,%esp
    3244:	68 69 4a 00 00       	push   $0x4a69
    3249:	e8 d4 13 00 00       	call   4622 <chdir>
    324e:	83 c4 10             	add    $0x10,%esp
    3251:	85 c0                	test   %eax,%eax
    3253:	0f 85 bf 00 00 00    	jne    3318 <rmdot+0x148>
    printf(1, "chdir / failed\n");
    exit(0);
  }
  if(unlink("dots/.") == 0){
    3259:	83 ec 0c             	sub    $0xc,%esp
    325c:	68 33 56 00 00       	push   $0x5633
    3261:	e8 9c 13 00 00       	call   4602 <unlink>
    3266:	83 c4 10             	add    $0x10,%esp
    3269:	85 c0                	test   %eax,%eax
    326b:	0f 84 7f 00 00 00    	je     32f0 <rmdot+0x120>
    printf(1, "unlink dots/. worked!\n");
    exit(0);
  }
  if(unlink("dots/..") == 0){
    3271:	83 ec 0c             	sub    $0xc,%esp
    3274:	68 51 56 00 00       	push   $0x5651
    3279:	e8 84 13 00 00       	call   4602 <unlink>
    327e:	83 c4 10             	add    $0x10,%esp
    3281:	85 c0                	test   %eax,%eax
    3283:	74 4b                	je     32d0 <rmdot+0x100>
    printf(1, "unlink dots/.. worked!\n");
    exit(0);
  }
  if(unlink("dots") != 0){
    3285:	83 ec 0c             	sub    $0xc,%esp
    3288:	68 eb 55 00 00       	push   $0x55eb
    328d:	e8 70 13 00 00       	call   4602 <unlink>
    3292:	83 c4 10             	add    $0x10,%esp
    3295:	85 c0                	test   %eax,%eax
    3297:	74 1e                	je     32b7 <rmdot+0xe7>
    printf(1, "unlink dots failed!\n");
    3299:	83 ec 08             	sub    $0x8,%esp
    329c:	68 71 56 00 00       	push   $0x5671
    32a1:	6a 01                	push   $0x1
    32a3:	e8 58 14 00 00       	call   4700 <printf>
    exit(0);
    32a8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32af:	e8 fe 12 00 00       	call   45b2 <exit>
    32b4:	83 c4 10             	add    $0x10,%esp
  }
  printf(1, "rmdot ok\n");
    32b7:	83 ec 08             	sub    $0x8,%esp
    32ba:	68 86 56 00 00       	push   $0x5686
    32bf:	6a 01                	push   $0x1
    32c1:	e8 3a 14 00 00       	call   4700 <printf>
}
    32c6:	83 c4 10             	add    $0x10,%esp
    32c9:	c9                   	leave  
    32ca:	c3                   	ret    
    32cb:	90                   	nop
    32cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    exit(0);
  }
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    32d0:	83 ec 08             	sub    $0x8,%esp
    32d3:	68 59 56 00 00       	push   $0x5659
    32d8:	6a 01                	push   $0x1
    32da:	e8 21 14 00 00       	call   4700 <printf>
    exit(0);
    32df:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32e6:	e8 c7 12 00 00       	call   45b2 <exit>
    32eb:	83 c4 10             	add    $0x10,%esp
    32ee:	eb 95                	jmp    3285 <rmdot+0xb5>
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    exit(0);
  }
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    32f0:	83 ec 08             	sub    $0x8,%esp
    32f3:	68 3a 56 00 00       	push   $0x563a
    32f8:	6a 01                	push   $0x1
    32fa:	e8 01 14 00 00       	call   4700 <printf>
    exit(0);
    32ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3306:	e8 a7 12 00 00       	call   45b2 <exit>
    330b:	83 c4 10             	add    $0x10,%esp
    330e:	e9 5e ff ff ff       	jmp    3271 <rmdot+0xa1>
    3313:	90                   	nop
    3314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    exit(0);
  }
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    3318:	83 ec 08             	sub    $0x8,%esp
    331b:	68 6b 4a 00 00       	push   $0x4a6b
    3320:	6a 01                	push   $0x1
    3322:	e8 d9 13 00 00       	call   4700 <printf>
    exit(0);
    3327:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    332e:	e8 7f 12 00 00       	call   45b2 <exit>
    3333:	83 c4 10             	add    $0x10,%esp
    3336:	e9 1e ff ff ff       	jmp    3259 <rmdot+0x89>
    333b:	90                   	nop
    333c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    exit(0);
  }
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    3340:	83 ec 08             	sub    $0x8,%esp
    3343:	68 24 56 00 00       	push   $0x5624
    3348:	6a 01                	push   $0x1
    334a:	e8 b1 13 00 00       	call   4700 <printf>
    exit(0);
    334f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3356:	e8 57 12 00 00       	call   45b2 <exit>
    335b:	83 c4 10             	add    $0x10,%esp
    335e:	e9 de fe ff ff       	jmp    3241 <rmdot+0x71>
    3363:	90                   	nop
    3364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    exit(0);
  }
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    3368:	83 ec 08             	sub    $0x8,%esp
    336b:	68 16 56 00 00       	push   $0x5616
    3370:	6a 01                	push   $0x1
    3372:	e8 89 13 00 00       	call   4700 <printf>
    exit(0);
    3377:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    337e:	e8 2f 12 00 00       	call   45b2 <exit>
    3383:	83 c4 10             	add    $0x10,%esp
    3386:	e9 9e fe ff ff       	jmp    3229 <rmdot+0x59>
    338b:	90                   	nop
    338c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    exit(0);
  }
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    3390:	83 ec 08             	sub    $0x8,%esp
    3393:	68 03 56 00 00       	push   $0x5603
    3398:	6a 01                	push   $0x1
    339a:	e8 61 13 00 00       	call   4700 <printf>
    exit(0);
    339f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33a6:	e8 07 12 00 00       	call   45b2 <exit>
    33ab:	83 c4 10             	add    $0x10,%esp
    33ae:	e9 5e fe ff ff       	jmp    3211 <rmdot+0x41>
    33b3:	90                   	nop
    33b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
void
rmdot(void)
{
  printf(1, "rmdot test\n");
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    33b8:	83 ec 08             	sub    $0x8,%esp
    33bb:	68 f0 55 00 00       	push   $0x55f0
    33c0:	6a 01                	push   $0x1
    33c2:	e8 39 13 00 00       	call   4700 <printf>
    exit(0);
    33c7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33ce:	e8 df 11 00 00       	call   45b2 <exit>
    33d3:	83 c4 10             	add    $0x10,%esp
    33d6:	e9 1e fe ff ff       	jmp    31f9 <rmdot+0x29>
    33db:	90                   	nop
    33dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000033e0 <dirfile>:
  printf(1, "rmdot ok\n");
}

void
dirfile(void)
{
    33e0:	55                   	push   %ebp
    33e1:	89 e5                	mov    %esp,%ebp
    33e3:	53                   	push   %ebx
    33e4:	83 ec 0c             	sub    $0xc,%esp
  int fd;

  printf(1, "dir vs file\n");
    33e7:	68 90 56 00 00       	push   $0x5690
    33ec:	6a 01                	push   $0x1
    33ee:	e8 0d 13 00 00       	call   4700 <printf>

  fd = open("dirfile", O_CREATE);
    33f3:	59                   	pop    %ecx
    33f4:	5b                   	pop    %ebx
    33f5:	68 00 02 00 00       	push   $0x200
    33fa:	68 9d 56 00 00       	push   $0x569d
    33ff:	e8 ee 11 00 00       	call   45f2 <open>
  if(fd < 0){
    3404:	83 c4 10             	add    $0x10,%esp
    3407:	85 c0                	test   %eax,%eax
{
  int fd;

  printf(1, "dir vs file\n");

  fd = open("dirfile", O_CREATE);
    3409:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    340b:	0f 88 57 02 00 00    	js     3668 <dirfile+0x288>
    printf(1, "create dirfile failed\n");
    exit(0);
  }
  close(fd);
    3411:	83 ec 0c             	sub    $0xc,%esp
    3414:	53                   	push   %ebx
    3415:	e8 c0 11 00 00       	call   45da <close>
  if(chdir("dirfile") == 0){
    341a:	c7 04 24 9d 56 00 00 	movl   $0x569d,(%esp)
    3421:	e8 fc 11 00 00       	call   4622 <chdir>
    3426:	83 c4 10             	add    $0x10,%esp
    3429:	85 c0                	test   %eax,%eax
    342b:	0f 84 6f 01 00 00    	je     35a0 <dirfile+0x1c0>
    printf(1, "chdir dirfile succeeded!\n");
    exit(0);
  }
  fd = open("dirfile/xx", 0);
    3431:	83 ec 08             	sub    $0x8,%esp
    3434:	6a 00                	push   $0x0
    3436:	68 d6 56 00 00       	push   $0x56d6
    343b:	e8 b2 11 00 00       	call   45f2 <open>
  if(fd >= 0){
    3440:	83 c4 10             	add    $0x10,%esp
    3443:	85 c0                	test   %eax,%eax
    3445:	78 1e                	js     3465 <dirfile+0x85>
    printf(1, "create dirfile/xx succeeded!\n");
    3447:	83 ec 08             	sub    $0x8,%esp
    344a:	68 e1 56 00 00       	push   $0x56e1
    344f:	6a 01                	push   $0x1
    3451:	e8 aa 12 00 00       	call   4700 <printf>
    exit(0);
    3456:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    345d:	e8 50 11 00 00       	call   45b2 <exit>
    3462:	83 c4 10             	add    $0x10,%esp
  }
  fd = open("dirfile/xx", O_CREATE);
    3465:	83 ec 08             	sub    $0x8,%esp
    3468:	68 00 02 00 00       	push   $0x200
    346d:	68 d6 56 00 00       	push   $0x56d6
    3472:	e8 7b 11 00 00       	call   45f2 <open>
  if(fd >= 0){
    3477:	83 c4 10             	add    $0x10,%esp
    347a:	85 c0                	test   %eax,%eax
    347c:	78 1e                	js     349c <dirfile+0xbc>
    printf(1, "create dirfile/xx succeeded!\n");
    347e:	83 ec 08             	sub    $0x8,%esp
    3481:	68 e1 56 00 00       	push   $0x56e1
    3486:	6a 01                	push   $0x1
    3488:	e8 73 12 00 00       	call   4700 <printf>
    exit(0);
    348d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3494:	e8 19 11 00 00       	call   45b2 <exit>
    3499:	83 c4 10             	add    $0x10,%esp
  }
  if(mkdir("dirfile/xx") == 0){
    349c:	83 ec 0c             	sub    $0xc,%esp
    349f:	68 d6 56 00 00       	push   $0x56d6
    34a4:	e8 71 11 00 00       	call   461a <mkdir>
    34a9:	83 c4 10             	add    $0x10,%esp
    34ac:	85 c0                	test   %eax,%eax
    34ae:	0f 84 8c 01 00 00    	je     3640 <dirfile+0x260>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile/xx") == 0){
    34b4:	83 ec 0c             	sub    $0xc,%esp
    34b7:	68 d6 56 00 00       	push   $0x56d6
    34bc:	e8 41 11 00 00       	call   4602 <unlink>
    34c1:	83 c4 10             	add    $0x10,%esp
    34c4:	85 c0                	test   %eax,%eax
    34c6:	0f 84 4c 01 00 00    	je     3618 <dirfile+0x238>
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit(0);
  }
  if(link("README", "dirfile/xx") == 0){
    34cc:	83 ec 08             	sub    $0x8,%esp
    34cf:	68 d6 56 00 00       	push   $0x56d6
    34d4:	68 3a 57 00 00       	push   $0x573a
    34d9:	e8 34 11 00 00       	call   4612 <link>
    34de:	83 c4 10             	add    $0x10,%esp
    34e1:	85 c0                	test   %eax,%eax
    34e3:	0f 84 07 01 00 00    	je     35f0 <dirfile+0x210>
    printf(1, "link to dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile") != 0){
    34e9:	83 ec 0c             	sub    $0xc,%esp
    34ec:	68 9d 56 00 00       	push   $0x569d
    34f1:	e8 0c 11 00 00       	call   4602 <unlink>
    34f6:	83 c4 10             	add    $0x10,%esp
    34f9:	85 c0                	test   %eax,%eax
    34fb:	0f 85 c7 00 00 00    	jne    35c8 <dirfile+0x1e8>
    printf(1, "unlink dirfile failed!\n");
    exit(0);
  }

  fd = open(".", O_RDWR);
    3501:	83 ec 08             	sub    $0x8,%esp
    3504:	6a 02                	push   $0x2
    3506:	68 96 52 00 00       	push   $0x5296
    350b:	e8 e2 10 00 00       	call   45f2 <open>
  if(fd >= 0){
    3510:	83 c4 10             	add    $0x10,%esp
    3513:	85 c0                	test   %eax,%eax
    3515:	78 1e                	js     3535 <dirfile+0x155>
    printf(1, "open . for writing succeeded!\n");
    3517:	83 ec 08             	sub    $0x8,%esp
    351a:	68 50 5f 00 00       	push   $0x5f50
    351f:	6a 01                	push   $0x1
    3521:	e8 da 11 00 00       	call   4700 <printf>
    exit(0);
    3526:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    352d:	e8 80 10 00 00       	call   45b2 <exit>
    3532:	83 c4 10             	add    $0x10,%esp
  }
  fd = open(".", 0);
    3535:	83 ec 08             	sub    $0x8,%esp
    3538:	6a 00                	push   $0x0
    353a:	68 96 52 00 00       	push   $0x5296
    353f:	e8 ae 10 00 00       	call   45f2 <open>
  if(write(fd, "x", 1) > 0){
    3544:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    exit(0);
  }
  fd = open(".", 0);
    3547:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    3549:	6a 01                	push   $0x1
    354b:	68 79 53 00 00       	push   $0x5379
    3550:	50                   	push   %eax
    3551:	e8 7c 10 00 00       	call   45d2 <write>
    3556:	83 c4 10             	add    $0x10,%esp
    3559:	85 c0                	test   %eax,%eax
    355b:	7e 1e                	jle    357b <dirfile+0x19b>
    printf(1, "write . succeeded!\n");
    355d:	83 ec 08             	sub    $0x8,%esp
    3560:	68 59 57 00 00       	push   $0x5759
    3565:	6a 01                	push   $0x1
    3567:	e8 94 11 00 00       	call   4700 <printf>
    exit(0);
    356c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3573:	e8 3a 10 00 00       	call   45b2 <exit>
    3578:	83 c4 10             	add    $0x10,%esp
  }
  close(fd);
    357b:	83 ec 0c             	sub    $0xc,%esp
    357e:	53                   	push   %ebx
    357f:	e8 56 10 00 00       	call   45da <close>

  printf(1, "dir vs file OK\n");
    3584:	58                   	pop    %eax
    3585:	5a                   	pop    %edx
    3586:	68 6d 57 00 00       	push   $0x576d
    358b:	6a 01                	push   $0x1
    358d:	e8 6e 11 00 00       	call   4700 <printf>
}
    3592:	83 c4 10             	add    $0x10,%esp
    3595:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3598:	c9                   	leave  
    3599:	c3                   	ret    
    359a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "create dirfile failed\n");
    exit(0);
  }
  close(fd);
  if(chdir("dirfile") == 0){
    printf(1, "chdir dirfile succeeded!\n");
    35a0:	83 ec 08             	sub    $0x8,%esp
    35a3:	68 bc 56 00 00       	push   $0x56bc
    35a8:	6a 01                	push   $0x1
    35aa:	e8 51 11 00 00       	call   4700 <printf>
    exit(0);
    35af:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35b6:	e8 f7 0f 00 00       	call   45b2 <exit>
    35bb:	83 c4 10             	add    $0x10,%esp
    35be:	e9 6e fe ff ff       	jmp    3431 <dirfile+0x51>
    35c3:	90                   	nop
    35c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile") != 0){
    printf(1, "unlink dirfile failed!\n");
    35c8:	83 ec 08             	sub    $0x8,%esp
    35cb:	68 41 57 00 00       	push   $0x5741
    35d0:	6a 01                	push   $0x1
    35d2:	e8 29 11 00 00       	call   4700 <printf>
    exit(0);
    35d7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35de:	e8 cf 0f 00 00       	call   45b2 <exit>
    35e3:	83 c4 10             	add    $0x10,%esp
    35e6:	e9 16 ff ff ff       	jmp    3501 <dirfile+0x121>
    35eb:	90                   	nop
    35ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit(0);
  }
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    35f0:	83 ec 08             	sub    $0x8,%esp
    35f3:	68 30 5f 00 00       	push   $0x5f30
    35f8:	6a 01                	push   $0x1
    35fa:	e8 01 11 00 00       	call   4700 <printf>
    exit(0);
    35ff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3606:	e8 a7 0f 00 00       	call   45b2 <exit>
    360b:	83 c4 10             	add    $0x10,%esp
    360e:	e9 d6 fe ff ff       	jmp    34e9 <dirfile+0x109>
    3613:	90                   	nop
    3614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    3618:	83 ec 08             	sub    $0x8,%esp
    361b:	68 1c 57 00 00       	push   $0x571c
    3620:	6a 01                	push   $0x1
    3622:	e8 d9 10 00 00       	call   4700 <printf>
    exit(0);
    3627:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    362e:	e8 7f 0f 00 00       	call   45b2 <exit>
    3633:	83 c4 10             	add    $0x10,%esp
    3636:	e9 91 fe ff ff       	jmp    34cc <dirfile+0xec>
    363b:	90                   	nop
    363c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    exit(0);
  }
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3640:	83 ec 08             	sub    $0x8,%esp
    3643:	68 ff 56 00 00       	push   $0x56ff
    3648:	6a 01                	push   $0x1
    364a:	e8 b1 10 00 00       	call   4700 <printf>
    exit(0);
    364f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3656:	e8 57 0f 00 00       	call   45b2 <exit>
    365b:	83 c4 10             	add    $0x10,%esp
    365e:	e9 51 fe ff ff       	jmp    34b4 <dirfile+0xd4>
    3663:	90                   	nop
    3664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  printf(1, "dir vs file\n");

  fd = open("dirfile", O_CREATE);
  if(fd < 0){
    printf(1, "create dirfile failed\n");
    3668:	83 ec 08             	sub    $0x8,%esp
    366b:	68 a5 56 00 00       	push   $0x56a5
    3670:	6a 01                	push   $0x1
    3672:	e8 89 10 00 00       	call   4700 <printf>
    exit(0);
    3677:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    367e:	e8 2f 0f 00 00       	call   45b2 <exit>
    3683:	83 c4 10             	add    $0x10,%esp
    3686:	e9 86 fd ff ff       	jmp    3411 <dirfile+0x31>
    368b:	90                   	nop
    368c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003690 <iref>:
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    3690:	55                   	push   %ebp
    3691:	89 e5                	mov    %esp,%ebp
    3693:	53                   	push   %ebx
  int i, fd;

  printf(1, "empty file name\n");
    3694:	bb 33 00 00 00       	mov    $0x33,%ebx
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    3699:	83 ec 0c             	sub    $0xc,%esp
  int i, fd;

  printf(1, "empty file name\n");
    369c:	68 7d 57 00 00       	push   $0x577d
    36a1:	6a 01                	push   $0x1
    36a3:	e8 58 10 00 00       	call   4700 <printf>
    36a8:	83 c4 10             	add    $0x10,%esp
    36ab:	e9 94 00 00 00       	jmp    3744 <iref+0xb4>
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
      printf(1, "mkdir irefd failed\n");
      exit(0);
    }
    if(chdir("irefd") != 0){
    36b0:	83 ec 0c             	sub    $0xc,%esp
    36b3:	68 8e 57 00 00       	push   $0x578e
    36b8:	e8 65 0f 00 00       	call   4622 <chdir>
    36bd:	83 c4 10             	add    $0x10,%esp
    36c0:	85 c0                	test   %eax,%eax
    36c2:	0f 85 b8 00 00 00    	jne    3780 <iref+0xf0>
      printf(1, "chdir irefd failed\n");
      exit(0);
    }

    mkdir("");
    36c8:	83 ec 0c             	sub    $0xc,%esp
    36cb:	68 43 4e 00 00       	push   $0x4e43
    36d0:	e8 45 0f 00 00       	call   461a <mkdir>
    link("README", "");
    36d5:	59                   	pop    %ecx
    36d6:	58                   	pop    %eax
    36d7:	68 43 4e 00 00       	push   $0x4e43
    36dc:	68 3a 57 00 00       	push   $0x573a
    36e1:	e8 2c 0f 00 00       	call   4612 <link>
    fd = open("", O_CREATE);
    36e6:	58                   	pop    %eax
    36e7:	5a                   	pop    %edx
    36e8:	68 00 02 00 00       	push   $0x200
    36ed:	68 43 4e 00 00       	push   $0x4e43
    36f2:	e8 fb 0e 00 00       	call   45f2 <open>
    if(fd >= 0)
    36f7:	83 c4 10             	add    $0x10,%esp
    36fa:	85 c0                	test   %eax,%eax
    36fc:	78 0c                	js     370a <iref+0x7a>
      close(fd);
    36fe:	83 ec 0c             	sub    $0xc,%esp
    3701:	50                   	push   %eax
    3702:	e8 d3 0e 00 00       	call   45da <close>
    3707:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    370a:	83 ec 08             	sub    $0x8,%esp
    370d:	68 00 02 00 00       	push   $0x200
    3712:	68 78 53 00 00       	push   $0x5378
    3717:	e8 d6 0e 00 00       	call   45f2 <open>
    if(fd >= 0)
    371c:	83 c4 10             	add    $0x10,%esp
    371f:	85 c0                	test   %eax,%eax
    3721:	78 0c                	js     372f <iref+0x9f>
      close(fd);
    3723:	83 ec 0c             	sub    $0xc,%esp
    3726:	50                   	push   %eax
    3727:	e8 ae 0e 00 00       	call   45da <close>
    372c:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    372f:	83 ec 0c             	sub    $0xc,%esp
    3732:	68 78 53 00 00       	push   $0x5378
    3737:	e8 c6 0e 00 00       	call   4602 <unlink>
  int i, fd;

  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    373c:	83 c4 10             	add    $0x10,%esp
    373f:	83 eb 01             	sub    $0x1,%ebx
    3742:	74 64                	je     37a8 <iref+0x118>
    if(mkdir("irefd") != 0){
    3744:	83 ec 0c             	sub    $0xc,%esp
    3747:	68 8e 57 00 00       	push   $0x578e
    374c:	e8 c9 0e 00 00       	call   461a <mkdir>
    3751:	83 c4 10             	add    $0x10,%esp
    3754:	85 c0                	test   %eax,%eax
    3756:	0f 84 54 ff ff ff    	je     36b0 <iref+0x20>
      printf(1, "mkdir irefd failed\n");
    375c:	83 ec 08             	sub    $0x8,%esp
    375f:	68 94 57 00 00       	push   $0x5794
    3764:	6a 01                	push   $0x1
    3766:	e8 95 0f 00 00       	call   4700 <printf>
      exit(0);
    376b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3772:	e8 3b 0e 00 00       	call   45b2 <exit>
    3777:	83 c4 10             	add    $0x10,%esp
    377a:	e9 31 ff ff ff       	jmp    36b0 <iref+0x20>
    377f:	90                   	nop
    }
    if(chdir("irefd") != 0){
      printf(1, "chdir irefd failed\n");
    3780:	83 ec 08             	sub    $0x8,%esp
    3783:	68 a8 57 00 00       	push   $0x57a8
    3788:	6a 01                	push   $0x1
    378a:	e8 71 0f 00 00       	call   4700 <printf>
      exit(0);
    378f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3796:	e8 17 0e 00 00       	call   45b2 <exit>
    379b:	83 c4 10             	add    $0x10,%esp
    379e:	e9 25 ff ff ff       	jmp    36c8 <iref+0x38>
    37a3:	90                   	nop
    37a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 0)
      close(fd);
    unlink("xx");
  }

  chdir("/");
    37a8:	83 ec 0c             	sub    $0xc,%esp
    37ab:	68 69 4a 00 00       	push   $0x4a69
    37b0:	e8 6d 0e 00 00       	call   4622 <chdir>
  printf(1, "empty file name OK\n");
    37b5:	58                   	pop    %eax
    37b6:	5a                   	pop    %edx
    37b7:	68 bc 57 00 00       	push   $0x57bc
    37bc:	6a 01                	push   $0x1
    37be:	e8 3d 0f 00 00       	call   4700 <printf>
}
    37c3:	83 c4 10             	add    $0x10,%esp
    37c6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    37c9:	c9                   	leave  
    37ca:	c3                   	ret    
    37cb:	90                   	nop
    37cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000037d0 <forktest>:
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    37d0:	55                   	push   %ebp
    37d1:	89 e5                	mov    %esp,%ebp
    37d3:	56                   	push   %esi
    37d4:	53                   	push   %ebx
  int n, pid;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    37d5:	31 db                	xor    %ebx,%ebx
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    37d7:	83 ec 18             	sub    $0x18,%esp
  int n, pid;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "fork test\n");
    37da:	68 d0 57 00 00       	push   $0x57d0
    37df:	6a 01                	push   $0x1
    37e1:	e8 1a 0f 00 00       	call   4700 <printf>
    37e6:	83 c4 10             	add    $0x10,%esp
    37e9:	eb 10                	jmp    37fb <forktest+0x2b>
    37eb:	90                   	nop
    37ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  for(n=0; n<1000; n++){
    37f0:	83 c3 01             	add    $0x1,%ebx
    37f3:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    37f9:	74 23                	je     381e <forktest+0x4e>
    pid = fork();
    37fb:	e8 aa 0d 00 00       	call   45aa <fork>
    if(pid < 0)
    3800:	85 c0                	test   %eax,%eax
    3802:	78 3c                	js     3840 <forktest+0x70>
      break;
    if(pid == 0)
    3804:	75 ea                	jne    37f0 <forktest+0x20>
      exit(0);
    3806:	83 ec 0c             	sub    $0xc,%esp
  int n, pid;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    3809:	83 c3 01             	add    $0x1,%ebx
    pid = fork();
    if(pid < 0)
      break;
    if(pid == 0)
      exit(0);
    380c:	6a 00                	push   $0x0
    380e:	e8 9f 0d 00 00       	call   45b2 <exit>
    3813:	83 c4 10             	add    $0x10,%esp
  int n, pid;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    3816:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    381c:	75 dd                	jne    37fb <forktest+0x2b>
    if(pid == 0)
      exit(0);
  }

  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    381e:	83 ec 08             	sub    $0x8,%esp
    3821:	68 70 5f 00 00       	push   $0x5f70
    3826:	6a 01                	push   $0x1
    3828:	e8 d3 0e 00 00       	call   4700 <printf>
    exit(0);
    382d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3834:	e8 79 0d 00 00       	call   45b2 <exit>
    3839:	83 c4 10             	add    $0x10,%esp
    383c:	eb 0a                	jmp    3848 <forktest+0x78>
    383e:	66 90                	xchg   %ax,%ax
  }

  for(; n > 0; n--){
    3840:	85 db                	test   %ebx,%ebx
    3842:	0f 84 8d 00 00 00    	je     38d5 <forktest+0x105>
    3848:	8d 75 f4             	lea    -0xc(%ebp),%esi
    384b:	eb 08                	jmp    3855 <forktest+0x85>
    384d:	8d 76 00             	lea    0x0(%esi),%esi
    3850:	83 eb 01             	sub    $0x1,%ebx
    3853:	74 3b                	je     3890 <forktest+0xc0>
    if(wait(&status) < 0){
    3855:	83 ec 0c             	sub    $0xc,%esp
    3858:	56                   	push   %esi
    3859:	e8 5c 0d 00 00       	call   45ba <wait>
    385e:	83 c4 10             	add    $0x10,%esp
    3861:	85 c0                	test   %eax,%eax
    3863:	79 eb                	jns    3850 <forktest+0x80>
      printf(1, "wait stopped early\n");
    3865:	83 ec 08             	sub    $0x8,%esp
    3868:	68 db 57 00 00       	push   $0x57db
    386d:	6a 01                	push   $0x1
    386f:	e8 8c 0e 00 00       	call   4700 <printf>
      exit(0);
    3874:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    387b:	e8 32 0d 00 00       	call   45b2 <exit>
    3880:	83 c4 10             	add    $0x10,%esp
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit(0);
  }

  for(; n > 0; n--){
    3883:	83 eb 01             	sub    $0x1,%ebx
    3886:	75 cd                	jne    3855 <forktest+0x85>
    3888:	90                   	nop
    3889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "wait stopped early\n");
      exit(0);
    }
  }

  if(wait(&status) != -1){
    3890:	83 ec 0c             	sub    $0xc,%esp
    3893:	56                   	push   %esi
    3894:	e8 21 0d 00 00       	call   45ba <wait>
    3899:	83 c4 10             	add    $0x10,%esp
    389c:	83 f8 ff             	cmp    $0xffffffff,%eax
    389f:	74 1e                	je     38bf <forktest+0xef>
    printf(1, "wait got too many\n");
    38a1:	83 ec 08             	sub    $0x8,%esp
    38a4:	68 ef 57 00 00       	push   $0x57ef
    38a9:	6a 01                	push   $0x1
    38ab:	e8 50 0e 00 00       	call   4700 <printf>
    exit(0);
    38b0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38b7:	e8 f6 0c 00 00       	call   45b2 <exit>
    38bc:	83 c4 10             	add    $0x10,%esp
  }

  printf(1, "fork test OK\n");
    38bf:	83 ec 08             	sub    $0x8,%esp
    38c2:	68 02 58 00 00       	push   $0x5802
    38c7:	6a 01                	push   $0x1
    38c9:	e8 32 0e 00 00       	call   4700 <printf>
}
    38ce:	8d 65 f8             	lea    -0x8(%ebp),%esp
    38d1:	5b                   	pop    %ebx
    38d2:	5e                   	pop    %esi
    38d3:	5d                   	pop    %ebp
    38d4:	c3                   	ret    
    38d5:	8d 75 f4             	lea    -0xc(%ebp),%esi
    38d8:	eb b6                	jmp    3890 <forktest+0xc0>
    38da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000038e0 <sbrktest>:

void
sbrktest(void)
{
    38e0:	55                   	push   %ebp
    38e1:	89 e5                	mov    %esp,%ebp
    38e3:	57                   	push   %edi
    38e4:	56                   	push   %esi
    38e5:	53                   	push   %ebx
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    38e6:	31 f6                	xor    %esi,%esi
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    38e8:	83 ec 64             	sub    $0x64,%esp
  int fds[2], pid, pids[10], ppid;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;
  int status;     // Lab 1 Part 1b. -RB

  printf(stdout, "sbrk test\n");
    38eb:	68 10 58 00 00       	push   $0x5810
    38f0:	ff 35 00 6b 00 00    	pushl  0x6b00
    38f6:	e8 05 0e 00 00       	call   4700 <printf>
  oldbrk = sbrk(0);
    38fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3902:	e8 33 0d 00 00       	call   463a <sbrk>

  // can one sbrk() less than a page?
  a = sbrk(0);
    3907:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;
  int status;     // Lab 1 Part 1b. -RB

  printf(stdout, "sbrk test\n");
  oldbrk = sbrk(0);
    390e:	89 45 a4             	mov    %eax,-0x5c(%ebp)

  // can one sbrk() less than a page?
  a = sbrk(0);
    3911:	e8 24 0d 00 00       	call   463a <sbrk>
    3916:	83 c4 10             	add    $0x10,%esp
    3919:	89 c7                	mov    %eax,%edi
    391b:	90                   	nop
    391c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    3920:	83 ec 0c             	sub    $0xc,%esp
    3923:	6a 01                	push   $0x1
    3925:	e8 10 0d 00 00       	call   463a <sbrk>
    if(b != a){
    392a:	83 c4 10             	add    $0x10,%esp
    392d:	39 f8                	cmp    %edi,%eax

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    392f:	89 c3                	mov    %eax,%ebx
    if(b != a){
    3931:	74 23                	je     3956 <sbrktest+0x76>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3933:	83 ec 0c             	sub    $0xc,%esp
    3936:	50                   	push   %eax
    3937:	57                   	push   %edi
    3938:	56                   	push   %esi
    3939:	68 1b 58 00 00       	push   $0x581b
    393e:	ff 35 00 6b 00 00    	pushl  0x6b00
    3944:	e8 b7 0d 00 00       	call   4700 <printf>
      exit(0);
    3949:	83 c4 14             	add    $0x14,%esp
    394c:	6a 00                	push   $0x0
    394e:	e8 5f 0c 00 00       	call   45b2 <exit>
    3953:	83 c4 10             	add    $0x10,%esp
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3956:	83 c6 01             	add    $0x1,%esi
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
      exit(0);
    }
    *b = 1;
    3959:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    395c:	8d 7b 01             	lea    0x1(%ebx),%edi
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    395f:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    3965:	75 b9                	jne    3920 <sbrktest+0x40>
      exit(0);
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    3967:	e8 3e 0c 00 00       	call   45aa <fork>
  if(pid < 0){
    396c:	85 c0                	test   %eax,%eax
      exit(0);
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    396e:	89 c6                	mov    %eax,%esi
  if(pid < 0){
    3970:	0f 88 64 03 00 00    	js     3cda <sbrktest+0x3fa>
    printf(stdout, "sbrk test fork failed\n");
    exit(0);
  }
  c = sbrk(1);
    3976:	83 ec 0c             	sub    $0xc,%esp
  c = sbrk(1);
  if(c != a + 1){
    3979:	83 c3 02             	add    $0x2,%ebx
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    exit(0);
  }
  c = sbrk(1);
    397c:	6a 01                	push   $0x1
    397e:	e8 b7 0c 00 00       	call   463a <sbrk>
  c = sbrk(1);
    3983:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    398a:	e8 ab 0c 00 00       	call   463a <sbrk>
  if(c != a + 1){
    398f:	83 c4 10             	add    $0x10,%esp
    3992:	39 d8                	cmp    %ebx,%eax
    3994:	74 22                	je     39b8 <sbrktest+0xd8>
    printf(stdout, "sbrk test failed post-fork\n");
    3996:	83 ec 08             	sub    $0x8,%esp
    3999:	68 4d 58 00 00       	push   $0x584d
    399e:	ff 35 00 6b 00 00    	pushl  0x6b00
    39a4:	e8 57 0d 00 00       	call   4700 <printf>
    exit(0);
    39a9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39b0:	e8 fd 0b 00 00       	call   45b2 <exit>
    39b5:	83 c4 10             	add    $0x10,%esp
  }
  if(pid == 0)
    39b8:	85 f6                	test   %esi,%esi
    39ba:	75 0d                	jne    39c9 <sbrktest+0xe9>
    exit(0);
    39bc:	83 ec 0c             	sub    $0xc,%esp
    39bf:	6a 00                	push   $0x0
    39c1:	e8 ec 0b 00 00       	call   45b2 <exit>
    39c6:	83 c4 10             	add    $0x10,%esp
  wait(&status);
    39c9:	8d 5d b4             	lea    -0x4c(%ebp),%ebx
    39cc:	83 ec 0c             	sub    $0xc,%esp
    39cf:	53                   	push   %ebx
    39d0:	e8 e5 0b 00 00       	call   45ba <wait>

  // can one grow address space to something big?
#define BIG (100*1024*1024)
  a = sbrk(0);
    39d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39dc:	e8 59 0c 00 00       	call   463a <sbrk>
    39e1:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
    39e3:	b8 00 00 40 06       	mov    $0x6400000,%eax
    39e8:	29 f0                	sub    %esi,%eax
    39ea:	89 04 24             	mov    %eax,(%esp)
    39ed:	e8 48 0c 00 00       	call   463a <sbrk>
  if (p != a) {
    39f2:	83 c4 10             	add    $0x10,%esp
    39f5:	39 c6                	cmp    %eax,%esi
    39f7:	74 22                	je     3a1b <sbrktest+0x13b>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    39f9:	83 ec 08             	sub    $0x8,%esp
    39fc:	68 94 5f 00 00       	push   $0x5f94
    3a01:	ff 35 00 6b 00 00    	pushl  0x6b00
    3a07:	e8 f4 0c 00 00       	call   4700 <printf>
    exit(0);
    3a0c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a13:	e8 9a 0b 00 00       	call   45b2 <exit>
    3a18:	83 c4 10             	add    $0x10,%esp
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    3a1b:	83 ec 0c             	sub    $0xc,%esp
  if (p != a) {
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    exit(0);
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;
    3a1e:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff

  // can one de-allocate?
  a = sbrk(0);
    3a25:	6a 00                	push   $0x0
    3a27:	e8 0e 0c 00 00       	call   463a <sbrk>
  c = sbrk(-4096);
    3a2c:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    3a33:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    3a35:	e8 00 0c 00 00       	call   463a <sbrk>
  if(c == (char*)0xffffffff){
    3a3a:	83 c4 10             	add    $0x10,%esp
    3a3d:	83 f8 ff             	cmp    $0xffffffff,%eax
    3a40:	0f 84 29 03 00 00    	je     3d6f <sbrktest+0x48f>
    printf(stdout, "sbrk could not deallocate\n");
    exit(0);
  }
  c = sbrk(0);
    3a46:	83 ec 0c             	sub    $0xc,%esp
    3a49:	6a 00                	push   $0x0
    3a4b:	e8 ea 0b 00 00       	call   463a <sbrk>
  if(c != a - 4096){
    3a50:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    3a56:	83 c4 10             	add    $0x10,%esp
    3a59:	39 d0                	cmp    %edx,%eax
    3a5b:	74 21                	je     3a7e <sbrktest+0x19e>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3a5d:	50                   	push   %eax
    3a5e:	56                   	push   %esi
    3a5f:	68 d4 5f 00 00       	push   $0x5fd4
    3a64:	ff 35 00 6b 00 00    	pushl  0x6b00
    3a6a:	e8 91 0c 00 00       	call   4700 <printf>
    exit(0);
    3a6f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a76:	e8 37 0b 00 00       	call   45b2 <exit>
    3a7b:	83 c4 10             	add    $0x10,%esp
  }

  // can one re-allocate that page?
  a = sbrk(0);
    3a7e:	83 ec 0c             	sub    $0xc,%esp
    3a81:	6a 00                	push   $0x0
    3a83:	e8 b2 0b 00 00       	call   463a <sbrk>
    3a88:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    3a8a:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3a91:	e8 a4 0b 00 00       	call   463a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3a96:	83 c4 10             	add    $0x10,%esp
    3a99:	39 c6                	cmp    %eax,%esi
    exit(0);
  }

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
    3a9b:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    3a9d:	0f 84 ac 02 00 00    	je     3d4f <sbrktest+0x46f>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3aa3:	57                   	push   %edi
    3aa4:	56                   	push   %esi
    3aa5:	68 0c 60 00 00       	push   $0x600c
    3aaa:	ff 35 00 6b 00 00    	pushl  0x6b00
    3ab0:	e8 4b 0c 00 00       	call   4700 <printf>
    exit(0);
    3ab5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3abc:	e8 f1 0a 00 00       	call   45b2 <exit>
    3ac1:	83 c4 10             	add    $0x10,%esp
  }
  if(*lastaddr == 99){
    3ac4:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3acb:	0f 84 57 02 00 00    	je     3d28 <sbrktest+0x448>
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit(0);
  }

  a = sbrk(0);
    3ad1:	83 ec 0c             	sub    $0xc,%esp
    3ad4:	6a 00                	push   $0x0
    3ad6:	e8 5f 0b 00 00       	call   463a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3adb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit(0);
  }

  a = sbrk(0);
    3ae2:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    3ae4:	e8 51 0b 00 00       	call   463a <sbrk>
    3ae9:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3aec:	29 c1                	sub    %eax,%ecx
    3aee:	89 0c 24             	mov    %ecx,(%esp)
    3af1:	e8 44 0b 00 00       	call   463a <sbrk>
  if(c != a){
    3af6:	83 c4 10             	add    $0x10,%esp
    3af9:	39 c6                	cmp    %eax,%esi
    3afb:	74 21                	je     3b1e <sbrktest+0x23e>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3afd:	50                   	push   %eax
    3afe:	56                   	push   %esi
    3aff:	68 64 60 00 00       	push   $0x6064
    3b04:	ff 35 00 6b 00 00    	pushl  0x6b00
    3b0a:	e8 f1 0b 00 00       	call   4700 <printf>
    exit(0);
    3b0f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b16:	e8 97 0a 00 00       	call   45b2 <exit>
    3b1b:	83 c4 10             	add    $0x10,%esp
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3b1e:	be 00 00 00 80       	mov    $0x80000000,%esi
    3b23:	eb 1d                	jmp    3b42 <sbrktest+0x262>
    3b25:	8d 76 00             	lea    0x0(%esi),%esi
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit(0);
    }
    wait(&status);
    3b28:	83 ec 0c             	sub    $0xc,%esp
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3b2b:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit(0);
    }
    wait(&status);
    3b31:	53                   	push   %ebx
    3b32:	e8 83 0a 00 00       	call   45ba <wait>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3b37:	83 c4 10             	add    $0x10,%esp
    3b3a:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    3b40:	74 64                	je     3ba6 <sbrktest+0x2c6>
    ppid = getpid();
    3b42:	e8 eb 0a 00 00       	call   4632 <getpid>
    3b47:	89 c7                	mov    %eax,%edi
    pid = fork();
    3b49:	e8 5c 0a 00 00       	call   45aa <fork>
    if(pid < 0){
    3b4e:	85 c0                	test   %eax,%eax
    3b50:	78 30                	js     3b82 <sbrktest+0x2a2>
      printf(stdout, "fork failed\n");
      exit(0);
    }
    if(pid == 0){
    3b52:	75 d4                	jne    3b28 <sbrktest+0x248>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3b54:	0f be 06             	movsbl (%esi),%eax
    3b57:	50                   	push   %eax
    3b58:	56                   	push   %esi
    3b59:	68 84 58 00 00       	push   $0x5884
    3b5e:	ff 35 00 6b 00 00    	pushl  0x6b00
    3b64:	e8 97 0b 00 00       	call   4700 <printf>
      kill(ppid);
    3b69:	89 3c 24             	mov    %edi,(%esp)
    3b6c:	e8 71 0a 00 00       	call   45e2 <kill>
      exit(0);
    3b71:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b78:	e8 35 0a 00 00       	call   45b2 <exit>
    3b7d:	83 c4 10             	add    $0x10,%esp
    3b80:	eb a6                	jmp    3b28 <sbrktest+0x248>
  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    pid = fork();
    if(pid < 0){
      printf(stdout, "fork failed\n");
    3b82:	83 ec 08             	sub    $0x8,%esp
    3b85:	68 61 59 00 00       	push   $0x5961
    3b8a:	ff 35 00 6b 00 00    	pushl  0x6b00
    3b90:	e8 6b 0b 00 00       	call   4700 <printf>
      exit(0);
    3b95:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b9c:	e8 11 0a 00 00       	call   45b2 <exit>
    3ba1:	83 c4 10             	add    $0x10,%esp
    3ba4:	eb 82                	jmp    3b28 <sbrktest+0x248>
    wait(&status);
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    3ba6:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3ba9:	83 ec 0c             	sub    $0xc,%esp
    3bac:	50                   	push   %eax
    3bad:	e8 10 0a 00 00       	call   45c2 <pipe>
    3bb2:	83 c4 10             	add    $0x10,%esp
    3bb5:	85 c0                	test   %eax,%eax
    3bb7:	74 1e                	je     3bd7 <sbrktest+0x2f7>
    printf(1, "pipe() failed\n");
    3bb9:	83 ec 08             	sub    $0x8,%esp
    3bbc:	68 59 4d 00 00       	push   $0x4d59
    3bc1:	6a 01                	push   $0x1
    3bc3:	e8 38 0b 00 00       	call   4700 <printf>
    exit(0);
    3bc8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bcf:	e8 de 09 00 00       	call   45b2 <exit>
    3bd4:	83 c4 10             	add    $0x10,%esp
    3bd7:	8d 75 c0             	lea    -0x40(%ebp),%esi
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3bda:	89 f7                	mov    %esi,%edi
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
    3bdc:	e8 c9 09 00 00       	call   45aa <fork>
    3be1:	85 c0                	test   %eax,%eax
    3be3:	89 07                	mov    %eax,(%edi)
    3be5:	0f 84 aa 00 00 00    	je     3c95 <sbrktest+0x3b5>
      sbrk(BIG - (uint)sbrk(0));
      write(fds[1], "x", 1);
      // sit around until killed
      for(;;) sleep(1000);
    }
    if(pids[i] != -1)
    3beb:	83 f8 ff             	cmp    $0xffffffff,%eax
    3bee:	74 14                	je     3c04 <sbrktest+0x324>
      read(fds[0], &scratch, 1);
    3bf0:	8d 45 b3             	lea    -0x4d(%ebp),%eax
    3bf3:	83 ec 04             	sub    $0x4,%esp
    3bf6:	6a 01                	push   $0x1
    3bf8:	50                   	push   %eax
    3bf9:	ff 75 b8             	pushl  -0x48(%ebp)
    3bfc:	e8 c9 09 00 00       	call   45ca <read>
    3c01:	83 c4 10             	add    $0x10,%esp
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3c04:	8d 45 e8             	lea    -0x18(%ebp),%eax
    3c07:	83 c7 04             	add    $0x4,%edi
    3c0a:	39 f8                	cmp    %edi,%eax
    3c0c:	75 ce                	jne    3bdc <sbrktest+0x2fc>
    if(pids[i] != -1)
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
    3c0e:	83 ec 0c             	sub    $0xc,%esp
    3c11:	68 00 10 00 00       	push   $0x1000
    3c16:	e8 1f 0a 00 00       	call   463a <sbrk>
    3c1b:	83 c4 10             	add    $0x10,%esp
    3c1e:	89 c7                	mov    %eax,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if(pids[i] == -1)
    3c20:	8b 06                	mov    (%esi),%eax
    3c22:	83 f8 ff             	cmp    $0xffffffff,%eax
    3c25:	74 14                	je     3c3b <sbrktest+0x35b>
      continue;
    kill(pids[i]);
    3c27:	83 ec 0c             	sub    $0xc,%esp
    3c2a:	50                   	push   %eax
    3c2b:	e8 b2 09 00 00       	call   45e2 <kill>
    wait(&status);
    3c30:	89 1c 24             	mov    %ebx,(%esp)
    3c33:	e8 82 09 00 00       	call   45ba <wait>
    3c38:	83 c4 10             	add    $0x10,%esp
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3c3b:	8d 45 e8             	lea    -0x18(%ebp),%eax
    3c3e:	83 c6 04             	add    $0x4,%esi
    3c41:	39 f0                	cmp    %esi,%eax
    3c43:	75 db                	jne    3c20 <sbrktest+0x340>
    if(pids[i] == -1)
      continue;
    kill(pids[i]);
    wait(&status);
  }
  if(c == (char*)0xffffffff){
    3c45:	83 ff ff             	cmp    $0xffffffff,%edi
    3c48:	0f 84 b3 00 00 00    	je     3d01 <sbrktest+0x421>
    printf(stdout, "failed sbrk leaked memory\n");
    exit(0);
  }

  if(sbrk(0) > oldbrk)
    3c4e:	83 ec 0c             	sub    $0xc,%esp
    3c51:	6a 00                	push   $0x0
    3c53:	e8 e2 09 00 00       	call   463a <sbrk>
    3c58:	83 c4 10             	add    $0x10,%esp
    3c5b:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3c5e:	73 1a                	jae    3c7a <sbrktest+0x39a>
    sbrk(-(sbrk(0) - oldbrk));
    3c60:	83 ec 0c             	sub    $0xc,%esp
    3c63:	6a 00                	push   $0x0
    3c65:	e8 d0 09 00 00       	call   463a <sbrk>
    3c6a:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3c6d:	29 c1                	sub    %eax,%ecx
    3c6f:	89 0c 24             	mov    %ecx,(%esp)
    3c72:	e8 c3 09 00 00       	call   463a <sbrk>
    3c77:	83 c4 10             	add    $0x10,%esp

  printf(stdout, "sbrk test OK\n");
    3c7a:	83 ec 08             	sub    $0x8,%esp
    3c7d:	68 b8 58 00 00       	push   $0x58b8
    3c82:	ff 35 00 6b 00 00    	pushl  0x6b00
    3c88:	e8 73 0a 00 00       	call   4700 <printf>
}
    3c8d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3c90:	5b                   	pop    %ebx
    3c91:	5e                   	pop    %esi
    3c92:	5f                   	pop    %edi
    3c93:	5d                   	pop    %ebp
    3c94:	c3                   	ret    
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
      // allocate a lot of memory
      sbrk(BIG - (uint)sbrk(0));
    3c95:	83 ec 0c             	sub    $0xc,%esp
    3c98:	6a 00                	push   $0x0
    3c9a:	e8 9b 09 00 00       	call   463a <sbrk>
    3c9f:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3ca4:	29 c2                	sub    %eax,%edx
    3ca6:	89 14 24             	mov    %edx,(%esp)
    3ca9:	e8 8c 09 00 00       	call   463a <sbrk>
      write(fds[1], "x", 1);
    3cae:	83 c4 0c             	add    $0xc,%esp
    3cb1:	6a 01                	push   $0x1
    3cb3:	68 79 53 00 00       	push   $0x5379
    3cb8:	ff 75 bc             	pushl  -0x44(%ebp)
    3cbb:	e8 12 09 00 00       	call   45d2 <write>
    3cc0:	83 c4 10             	add    $0x10,%esp
    3cc3:	90                   	nop
    3cc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      // sit around until killed
      for(;;) sleep(1000);
    3cc8:	83 ec 0c             	sub    $0xc,%esp
    3ccb:	68 e8 03 00 00       	push   $0x3e8
    3cd0:	e8 6d 09 00 00       	call   4642 <sleep>
    3cd5:	83 c4 10             	add    $0x10,%esp
    3cd8:	eb ee                	jmp    3cc8 <sbrktest+0x3e8>
    *b = 1;
    a = b + 1;
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    3cda:	83 ec 08             	sub    $0x8,%esp
    3cdd:	68 36 58 00 00       	push   $0x5836
    3ce2:	ff 35 00 6b 00 00    	pushl  0x6b00
    3ce8:	e8 13 0a 00 00       	call   4700 <printf>
    exit(0);
    3ced:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3cf4:	e8 b9 08 00 00       	call   45b2 <exit>
    3cf9:	83 c4 10             	add    $0x10,%esp
    3cfc:	e9 75 fc ff ff       	jmp    3976 <sbrktest+0x96>
      continue;
    kill(pids[i]);
    wait(&status);
  }
  if(c == (char*)0xffffffff){
    printf(stdout, "failed sbrk leaked memory\n");
    3d01:	83 ec 08             	sub    $0x8,%esp
    3d04:	68 9d 58 00 00       	push   $0x589d
    3d09:	ff 35 00 6b 00 00    	pushl  0x6b00
    3d0f:	e8 ec 09 00 00       	call   4700 <printf>
    exit(0);
    3d14:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d1b:	e8 92 08 00 00       	call   45b2 <exit>
    3d20:	83 c4 10             	add    $0x10,%esp
    3d23:	e9 26 ff ff ff       	jmp    3c4e <sbrktest+0x36e>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit(0);
  }
  if(*lastaddr == 99){
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    3d28:	83 ec 08             	sub    $0x8,%esp
    3d2b:	68 34 60 00 00       	push   $0x6034
    3d30:	ff 35 00 6b 00 00    	pushl  0x6b00
    3d36:	e8 c5 09 00 00       	call   4700 <printf>
    exit(0);
    3d3b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d42:	e8 6b 08 00 00       	call   45b2 <exit>
    3d47:	83 c4 10             	add    $0x10,%esp
    3d4a:	e9 82 fd ff ff       	jmp    3ad1 <sbrktest+0x1f1>
  }

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
  if(c != a || sbrk(0) != a + 4096){
    3d4f:	83 ec 0c             	sub    $0xc,%esp
    3d52:	6a 00                	push   $0x0
    3d54:	e8 e1 08 00 00       	call   463a <sbrk>
    3d59:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    3d5f:	83 c4 10             	add    $0x10,%esp
    3d62:	39 d0                	cmp    %edx,%eax
    3d64:	0f 85 39 fd ff ff    	jne    3aa3 <sbrktest+0x1c3>
    3d6a:	e9 55 fd ff ff       	jmp    3ac4 <sbrktest+0x1e4>

  // can one de-allocate?
  a = sbrk(0);
  c = sbrk(-4096);
  if(c == (char*)0xffffffff){
    printf(stdout, "sbrk could not deallocate\n");
    3d6f:	83 ec 08             	sub    $0x8,%esp
    3d72:	68 69 58 00 00       	push   $0x5869
    3d77:	ff 35 00 6b 00 00    	pushl  0x6b00
    3d7d:	e8 7e 09 00 00       	call   4700 <printf>
    exit(0);
    3d82:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d89:	e8 24 08 00 00       	call   45b2 <exit>
    3d8e:	83 c4 10             	add    $0x10,%esp
    3d91:	e9 b0 fc ff ff       	jmp    3a46 <sbrktest+0x166>
    3d96:	8d 76 00             	lea    0x0(%esi),%esi
    3d99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003da0 <validateint>:
  printf(stdout, "sbrk test OK\n");
}

void
validateint(int *p)
{
    3da0:	55                   	push   %ebp
    3da1:	89 e5                	mov    %esp,%ebp
      "int %2\n\t"
      "mov %%ebx, %%esp" :
      "=a" (res) :
      "a" (SYS_sleep), "n" (T_SYSCALL), "c" (p) :
      "ebx");
}
    3da3:	5d                   	pop    %ebp
    3da4:	c3                   	ret    
    3da5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3da9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003db0 <validatetest>:

void
validatetest(void)
{
    3db0:	55                   	push   %ebp
    3db1:	89 e5                	mov    %esp,%ebp
    3db3:	57                   	push   %edi
    3db4:	56                   	push   %esi
    3db5:	53                   	push   %ebx
    3db6:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  int status;     // Lab 1 Part 1b. -RB

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    3db9:	31 db                	xor    %ebx,%ebx
      "ebx");
}

void
validatetest(void)
{
    3dbb:	83 ec 24             	sub    $0x24,%esp
  int hi, pid;
  uint p;
  int status;     // Lab 1 Part 1b. -RB

  printf(stdout, "validate test\n");
    3dbe:	68 c6 58 00 00       	push   $0x58c6
    3dc3:	ff 35 00 6b 00 00    	pushl  0x6b00
    3dc9:	e8 32 09 00 00       	call   4700 <printf>
    3dce:	83 c4 10             	add    $0x10,%esp
    3dd1:	eb 70                	jmp    3e43 <validatetest+0x93>
    3dd3:	90                   	nop
    3dd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if((pid = fork()) == 0){
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit(0);
    }
    sleep(0);
    3dd8:	83 ec 0c             	sub    $0xc,%esp
    3ddb:	6a 00                	push   $0x0
    3ddd:	e8 60 08 00 00       	call   4642 <sleep>
    sleep(0);
    3de2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3de9:	e8 54 08 00 00       	call   4642 <sleep>
    kill(pid);
    3dee:	89 34 24             	mov    %esi,(%esp)
    3df1:	e8 ec 07 00 00       	call   45e2 <kill>
    wait(&status);
    3df6:	89 3c 24             	mov    %edi,(%esp)
    3df9:	e8 bc 07 00 00       	call   45ba <wait>

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
    3dfe:	58                   	pop    %eax
    3dff:	5a                   	pop    %edx
    3e00:	53                   	push   %ebx
    3e01:	68 d5 58 00 00       	push   $0x58d5
    3e06:	e8 07 08 00 00       	call   4612 <link>
    3e0b:	83 c4 10             	add    $0x10,%esp
    3e0e:	83 f8 ff             	cmp    $0xffffffff,%eax
    3e11:	74 22                	je     3e35 <validatetest+0x85>
      printf(stdout, "link should not succeed\n");
    3e13:	83 ec 08             	sub    $0x8,%esp
    3e16:	68 e0 58 00 00       	push   $0x58e0
    3e1b:	ff 35 00 6b 00 00    	pushl  0x6b00
    3e21:	e8 da 08 00 00       	call   4700 <printf>
      exit(0);
    3e26:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e2d:	e8 80 07 00 00       	call   45b2 <exit>
    3e32:	83 c4 10             	add    $0x10,%esp
  int status;     // Lab 1 Part 1b. -RB

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    3e35:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3e3b:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3e41:	74 1d                	je     3e60 <validatetest+0xb0>
    if((pid = fork()) == 0){
    3e43:	e8 62 07 00 00       	call   45aa <fork>
    3e48:	85 c0                	test   %eax,%eax
    3e4a:	89 c6                	mov    %eax,%esi
    3e4c:	75 8a                	jne    3dd8 <validatetest+0x28>
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit(0);
    3e4e:	83 ec 0c             	sub    $0xc,%esp
    3e51:	6a 00                	push   $0x0
    3e53:	e8 5a 07 00 00       	call   45b2 <exit>
    3e58:	83 c4 10             	add    $0x10,%esp
    3e5b:	e9 78 ff ff ff       	jmp    3dd8 <validatetest+0x28>
      printf(stdout, "link should not succeed\n");
      exit(0);
    }
  }

  printf(stdout, "validate ok\n");
    3e60:	83 ec 08             	sub    $0x8,%esp
    3e63:	68 f9 58 00 00       	push   $0x58f9
    3e68:	ff 35 00 6b 00 00    	pushl  0x6b00
    3e6e:	e8 8d 08 00 00       	call   4700 <printf>
}
    3e73:	83 c4 10             	add    $0x10,%esp
    3e76:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3e79:	5b                   	pop    %ebx
    3e7a:	5e                   	pop    %esi
    3e7b:	5f                   	pop    %edi
    3e7c:	5d                   	pop    %ebp
    3e7d:	c3                   	ret    
    3e7e:	66 90                	xchg   %ax,%ax

00003e80 <bsstest>:

// does unintialized data start out zero?
char uninit[10000];
void
bsstest(void)
{
    3e80:	55                   	push   %ebp
    3e81:	89 e5                	mov    %esp,%ebp
    3e83:	53                   	push   %ebx
  int i;

  printf(stdout, "bss test\n");
    3e84:	31 db                	xor    %ebx,%ebx

// does unintialized data start out zero?
char uninit[10000];
void
bsstest(void)
{
    3e86:	83 ec 0c             	sub    $0xc,%esp
  int i;

  printf(stdout, "bss test\n");
    3e89:	68 06 59 00 00       	push   $0x5906
    3e8e:	ff 35 00 6b 00 00    	pushl  0x6b00
    3e94:	e8 67 08 00 00       	call   4700 <printf>
    3e99:	83 c4 10             	add    $0x10,%esp
    3e9c:	eb 0d                	jmp    3eab <bsstest+0x2b>
    3e9e:	66 90                	xchg   %ax,%ax
  for(i = 0; i < sizeof(uninit); i++){
    3ea0:	83 c3 01             	add    $0x1,%ebx
    3ea3:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3ea9:	74 36                	je     3ee1 <bsstest+0x61>
    if(uninit[i] != '\0'){
    3eab:	80 bb c0 6b 00 00 00 	cmpb   $0x0,0x6bc0(%ebx)
    3eb2:	74 ec                	je     3ea0 <bsstest+0x20>
      printf(stdout, "bss test failed\n");
    3eb4:	83 ec 08             	sub    $0x8,%esp
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    3eb7:	83 c3 01             	add    $0x1,%ebx
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
    3eba:	68 10 59 00 00       	push   $0x5910
    3ebf:	ff 35 00 6b 00 00    	pushl  0x6b00
    3ec5:	e8 36 08 00 00       	call   4700 <printf>
      exit(0);
    3eca:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ed1:	e8 dc 06 00 00       	call   45b2 <exit>
    3ed6:	83 c4 10             	add    $0x10,%esp
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    3ed9:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3edf:	75 ca                	jne    3eab <bsstest+0x2b>
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
      exit(0);
    }
  }
  printf(stdout, "bss test ok\n");
    3ee1:	83 ec 08             	sub    $0x8,%esp
    3ee4:	68 21 59 00 00       	push   $0x5921
    3ee9:	ff 35 00 6b 00 00    	pushl  0x6b00
    3eef:	e8 0c 08 00 00       	call   4700 <printf>
}
    3ef4:	83 c4 10             	add    $0x10,%esp
    3ef7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3efa:	c9                   	leave  
    3efb:	c3                   	ret    
    3efc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003f00 <bigargtest>:
// does exec return an error if the arguments
// are larger than a page? or does it write
// below the stack and wreck the instructions/data?
void
bigargtest(void)
{
    3f00:	55                   	push   %ebp
    3f01:	89 e5                	mov    %esp,%ebp
    3f03:	53                   	push   %ebx
    3f04:	83 ec 20             	sub    $0x20,%esp
  int pid, fd;
  int status;     // Lab 1 Part 1b. -RB

  unlink("bigarg-ok");
    3f07:	68 2e 59 00 00       	push   $0x592e
    3f0c:	e8 f1 06 00 00       	call   4602 <unlink>
  pid = fork();
    3f11:	e8 94 06 00 00       	call   45aa <fork>
  if(pid == 0){
    3f16:	83 c4 10             	add    $0x10,%esp
    3f19:	85 c0                	test   %eax,%eax
    3f1b:	0f 85 cf 00 00 00    	jne    3ff0 <bigargtest+0xf0>
    3f21:	b8 20 6b 00 00       	mov    $0x6b20,%eax
    3f26:	8d 76 00             	lea    0x0(%esi),%esi
    3f29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3f30:	c7 00 88 60 00 00    	movl   $0x6088,(%eax)
    3f36:	83 c0 04             	add    $0x4,%eax
  unlink("bigarg-ok");
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
    3f39:	3d 9c 6b 00 00       	cmp    $0x6b9c,%eax
    3f3e:	75 f0                	jne    3f30 <bigargtest+0x30>
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    printf(stdout, "bigarg test\n");
    3f40:	83 ec 08             	sub    $0x8,%esp
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    3f43:	c7 05 9c 6b 00 00 00 	movl   $0x0,0x6b9c
    3f4a:	00 00 00 
    printf(stdout, "bigarg test\n");
    3f4d:	68 38 59 00 00       	push   $0x5938
    3f52:	ff 35 00 6b 00 00    	pushl  0x6b00
    3f58:	e8 a3 07 00 00       	call   4700 <printf>
    exec("echo", args);
    3f5d:	59                   	pop    %ecx
    3f5e:	5b                   	pop    %ebx
    3f5f:	68 20 6b 00 00       	push   $0x6b20
    3f64:	68 05 4b 00 00       	push   $0x4b05
    3f69:	e8 7c 06 00 00       	call   45ea <exec>
    printf(stdout, "bigarg test ok\n");
    3f6e:	58                   	pop    %eax
    3f6f:	5a                   	pop    %edx
    3f70:	68 45 59 00 00       	push   $0x5945
    3f75:	ff 35 00 6b 00 00    	pushl  0x6b00
    3f7b:	e8 80 07 00 00       	call   4700 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3f80:	59                   	pop    %ecx
    3f81:	5b                   	pop    %ebx
    3f82:	68 00 02 00 00       	push   $0x200
    3f87:	68 2e 59 00 00       	push   $0x592e
    3f8c:	e8 61 06 00 00       	call   45f2 <open>
    close(fd);
    3f91:	89 04 24             	mov    %eax,(%esp)
    3f94:	e8 41 06 00 00       	call   45da <close>
    exit(0);
    3f99:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3fa0:	e8 0d 06 00 00       	call   45b2 <exit>
    3fa5:	83 c4 10             	add    $0x10,%esp
  } else if(pid < 0){
    printf(stdout, "bigargtest: fork failed\n");
    exit(0);
  }
  wait(&status);
    3fa8:	8d 45 f4             	lea    -0xc(%ebp),%eax
    3fab:	83 ec 0c             	sub    $0xc,%esp
    3fae:	50                   	push   %eax
    3faf:	e8 06 06 00 00       	call   45ba <wait>
  fd = open("bigarg-ok", 0);
    3fb4:	58                   	pop    %eax
    3fb5:	5a                   	pop    %edx
    3fb6:	6a 00                	push   $0x0
    3fb8:	68 2e 59 00 00       	push   $0x592e
    3fbd:	e8 30 06 00 00       	call   45f2 <open>
  if(fd < 0){
    3fc2:	83 c4 10             	add    $0x10,%esp
    3fc5:	85 c0                	test   %eax,%eax
  } else if(pid < 0){
    printf(stdout, "bigargtest: fork failed\n");
    exit(0);
  }
  wait(&status);
  fd = open("bigarg-ok", 0);
    3fc7:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    3fc9:	78 55                	js     4020 <bigargtest+0x120>
    printf(stdout, "bigarg test failed!\n");
    exit(0);
  }
  close(fd);
    3fcb:	83 ec 0c             	sub    $0xc,%esp
    3fce:	53                   	push   %ebx
    3fcf:	e8 06 06 00 00       	call   45da <close>
  unlink("bigarg-ok");
    3fd4:	c7 04 24 2e 59 00 00 	movl   $0x592e,(%esp)
    3fdb:	e8 22 06 00 00       	call   4602 <unlink>
}
    3fe0:	83 c4 10             	add    $0x10,%esp
    3fe3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3fe6:	c9                   	leave  
    3fe7:	c3                   	ret    
    3fe8:	90                   	nop
    3fe9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exec("echo", args);
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit(0);
  } else if(pid < 0){
    3ff0:	79 b6                	jns    3fa8 <bigargtest+0xa8>
    printf(stdout, "bigargtest: fork failed\n");
    3ff2:	83 ec 08             	sub    $0x8,%esp
    3ff5:	68 55 59 00 00       	push   $0x5955
    3ffa:	ff 35 00 6b 00 00    	pushl  0x6b00
    4000:	e8 fb 06 00 00       	call   4700 <printf>
    exit(0);
    4005:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    400c:	e8 a1 05 00 00       	call   45b2 <exit>
    4011:	83 c4 10             	add    $0x10,%esp
    4014:	eb 92                	jmp    3fa8 <bigargtest+0xa8>
    4016:	8d 76 00             	lea    0x0(%esi),%esi
    4019:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  }
  wait(&status);
  fd = open("bigarg-ok", 0);
  if(fd < 0){
    printf(stdout, "bigarg test failed!\n");
    4020:	83 ec 08             	sub    $0x8,%esp
    4023:	68 6e 59 00 00       	push   $0x596e
    4028:	ff 35 00 6b 00 00    	pushl  0x6b00
    402e:	e8 cd 06 00 00       	call   4700 <printf>
    exit(0);
    4033:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    403a:	e8 73 05 00 00       	call   45b2 <exit>
    403f:	83 c4 10             	add    $0x10,%esp
    4042:	eb 87                	jmp    3fcb <bigargtest+0xcb>
    4044:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    404a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004050 <fsfull>:

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    4050:	55                   	push   %ebp
    4051:	89 e5                	mov    %esp,%ebp
    4053:	57                   	push   %edi
    4054:	56                   	push   %esi
    4055:	53                   	push   %ebx
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    4056:	31 db                	xor    %ebx,%ebx

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    4058:	83 ec 54             	sub    $0x54,%esp
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");
    405b:	68 83 59 00 00       	push   $0x5983
    4060:	6a 01                	push   $0x1
    4062:	e8 99 06 00 00       	call   4700 <printf>
    4067:	83 c4 10             	add    $0x10,%esp
    406a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    4070:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    4075:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    4077:	89 d9                	mov    %ebx,%ecx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    4079:	f7 eb                	imul   %ebx
    407b:	c1 fe 1f             	sar    $0x1f,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    407e:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    4080:	83 ec 04             	sub    $0x4,%esp

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    4083:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    4087:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    408b:	c1 fa 06             	sar    $0x6,%edx
    408e:	29 f2                	sub    %esi,%edx
    4090:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    4093:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    4099:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    409c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    40a1:	29 d1                	sub    %edx,%ecx
    40a3:	f7 e9                	imul   %ecx
    40a5:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    40a8:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    40ad:	c1 fa 05             	sar    $0x5,%edx
    40b0:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    40b2:	b9 67 66 66 66       	mov    $0x66666667,%ecx

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    40b7:	83 c2 30             	add    $0x30,%edx
    40ba:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    40bd:	f7 eb                	imul   %ebx
    40bf:	c1 fa 05             	sar    $0x5,%edx
    40c2:	29 f2                	sub    %esi,%edx
    40c4:	6b d2 64             	imul   $0x64,%edx,%edx
    40c7:	29 d7                	sub    %edx,%edi
    40c9:	89 f8                	mov    %edi,%eax
    40cb:	c1 ff 1f             	sar    $0x1f,%edi
    40ce:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    40d0:	89 d8                	mov    %ebx,%eax
  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    40d2:	c1 fa 02             	sar    $0x2,%edx
    40d5:	29 fa                	sub    %edi,%edx
    40d7:	83 c2 30             	add    $0x30,%edx
    40da:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    40dd:	f7 e9                	imul   %ecx
    40df:	89 d9                	mov    %ebx,%ecx
    40e1:	c1 fa 02             	sar    $0x2,%edx
    40e4:	29 f2                	sub    %esi,%edx
    40e6:	8d 04 92             	lea    (%edx,%edx,4),%eax
    40e9:	01 c0                	add    %eax,%eax
    40eb:	29 c1                	sub    %eax,%ecx
    40ed:	89 c8                	mov    %ecx,%eax
    40ef:	83 c0 30             	add    $0x30,%eax
    40f2:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    40f5:	8d 45 a8             	lea    -0x58(%ebp),%eax
    40f8:	50                   	push   %eax
    40f9:	68 90 59 00 00       	push   $0x5990
    40fe:	6a 01                	push   $0x1
    4100:	e8 fb 05 00 00       	call   4700 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    4105:	58                   	pop    %eax
    4106:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4109:	5a                   	pop    %edx
    410a:	68 02 02 00 00       	push   $0x202
    410f:	50                   	push   %eax
    4110:	e8 dd 04 00 00       	call   45f2 <open>
    if(fd < 0){
    4115:	83 c4 10             	add    $0x10,%esp
    4118:	85 c0                	test   %eax,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    411a:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    411c:	78 50                	js     416e <fsfull+0x11e>
    411e:	31 f6                	xor    %esi,%esi
    4120:	eb 08                	jmp    412a <fsfull+0xda>
    4122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
      if(cc < 512)
        break;
      total += cc;
    4128:	01 c6                	add    %eax,%esi
      printf(1, "open %s failed\n", name);
      break;
    }
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
    412a:	83 ec 04             	sub    $0x4,%esp
    412d:	68 00 02 00 00       	push   $0x200
    4132:	68 e0 92 00 00       	push   $0x92e0
    4137:	57                   	push   %edi
    4138:	e8 95 04 00 00       	call   45d2 <write>
      if(cc < 512)
    413d:	83 c4 10             	add    $0x10,%esp
    4140:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    4145:	7f e1                	jg     4128 <fsfull+0xd8>
        break;
      total += cc;
      fsblocks++;
    }
    printf(1, "wrote %d bytes\n", total);
    4147:	83 ec 04             	sub    $0x4,%esp
    414a:	56                   	push   %esi
    414b:	68 ac 59 00 00       	push   $0x59ac
    4150:	6a 01                	push   $0x1
    4152:	e8 a9 05 00 00       	call   4700 <printf>
    close(fd);
    4157:	89 3c 24             	mov    %edi,(%esp)
    415a:	e8 7b 04 00 00       	call   45da <close>
    if(total == 0)
    415f:	83 c4 10             	add    $0x10,%esp
    4162:	85 f6                	test   %esi,%esi
    4164:	74 22                	je     4188 <fsfull+0x138>
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    4166:	83 c3 01             	add    $0x1,%ebx
    }
    printf(1, "wrote %d bytes\n", total);
    close(fd);
    if(total == 0)
      break;
  }
    4169:	e9 02 ff ff ff       	jmp    4070 <fsfull+0x20>
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    if(fd < 0){
      printf(1, "open %s failed\n", name);
    416e:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4171:	83 ec 04             	sub    $0x4,%esp
    4174:	50                   	push   %eax
    4175:	68 9c 59 00 00       	push   $0x599c
    417a:	6a 01                	push   $0x1
    417c:	e8 7f 05 00 00       	call   4700 <printf>
      break;
    4181:	83 c4 10             	add    $0x10,%esp
    4184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    4188:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    418d:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    418f:	89 d9                	mov    %ebx,%ecx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    4191:	f7 eb                	imul   %ebx
    4193:	c1 fe 1f             	sar    $0x1f,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    4196:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    unlink(name);
    4198:	83 ec 0c             	sub    $0xc,%esp
      break;
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    419b:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    419f:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    41a3:	c1 fa 06             	sar    $0x6,%edx
    41a6:	29 f2                	sub    %esi,%edx
    41a8:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    41ab:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    41b1:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    41b4:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    41b9:	29 d1                	sub    %edx,%ecx
    41bb:	f7 e9                	imul   %ecx
    41bd:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    41c0:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    41c5:	c1 fa 05             	sar    $0x5,%edx
    41c8:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    41ca:	b9 67 66 66 66       	mov    $0x66666667,%ecx

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    41cf:	83 c2 30             	add    $0x30,%edx
    41d2:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    41d5:	f7 eb                	imul   %ebx
    41d7:	c1 fa 05             	sar    $0x5,%edx
    41da:	29 f2                	sub    %esi,%edx
    41dc:	6b d2 64             	imul   $0x64,%edx,%edx
    41df:	29 d7                	sub    %edx,%edi
    41e1:	89 f8                	mov    %edi,%eax
    41e3:	c1 ff 1f             	sar    $0x1f,%edi
    41e6:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    41e8:	89 d8                	mov    %ebx,%eax
  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    41ea:	c1 fa 02             	sar    $0x2,%edx
    41ed:	29 fa                	sub    %edi,%edx
    41ef:	83 c2 30             	add    $0x30,%edx
    41f2:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    41f5:	f7 e9                	imul   %ecx
    41f7:	89 d9                	mov    %ebx,%ecx
    name[5] = '\0';
    unlink(name);
    nfiles--;
    41f9:	83 eb 01             	sub    $0x1,%ebx
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    41fc:	c1 fa 02             	sar    $0x2,%edx
    41ff:	29 f2                	sub    %esi,%edx
    4201:	8d 04 92             	lea    (%edx,%edx,4),%eax
    4204:	01 c0                	add    %eax,%eax
    4206:	29 c1                	sub    %eax,%ecx
    4208:	89 c8                	mov    %ecx,%eax
    420a:	83 c0 30             	add    $0x30,%eax
    420d:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    unlink(name);
    4210:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4213:	50                   	push   %eax
    4214:	e8 e9 03 00 00       	call   4602 <unlink>
    close(fd);
    if(total == 0)
      break;
  }

  while(nfiles >= 0){
    4219:	83 c4 10             	add    $0x10,%esp
    421c:	83 fb ff             	cmp    $0xffffffff,%ebx
    421f:	0f 85 63 ff ff ff    	jne    4188 <fsfull+0x138>
    name[5] = '\0';
    unlink(name);
    nfiles--;
  }

  printf(1, "fsfull test finished\n");
    4225:	83 ec 08             	sub    $0x8,%esp
    4228:	68 bc 59 00 00       	push   $0x59bc
    422d:	6a 01                	push   $0x1
    422f:	e8 cc 04 00 00       	call   4700 <printf>
}
    4234:	83 c4 10             	add    $0x10,%esp
    4237:	8d 65 f4             	lea    -0xc(%ebp),%esp
    423a:	5b                   	pop    %ebx
    423b:	5e                   	pop    %esi
    423c:	5f                   	pop    %edi
    423d:	5d                   	pop    %ebp
    423e:	c3                   	ret    
    423f:	90                   	nop

00004240 <uio>:

void
uio()
{
    4240:	55                   	push   %ebp
    4241:	89 e5                	mov    %esp,%ebp
    4243:	83 ec 20             	sub    $0x20,%esp
  ushort port = 0;
  uchar val = 0;
  int pid;
  int status;     // Lab 1 Part 1b. -RB

  printf(1, "uio test\n");
    4246:	68 d2 59 00 00       	push   $0x59d2
    424b:	6a 01                	push   $0x1
    424d:	e8 ae 04 00 00       	call   4700 <printf>
  pid = fork();
    4252:	e8 53 03 00 00       	call   45aa <fork>
  if(pid == 0){
    4257:	83 c4 10             	add    $0x10,%esp
    425a:	85 c0                	test   %eax,%eax
    425c:	74 22                	je     4280 <uio+0x40>
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    printf(1, "uio: uio succeeded; test FAILED\n");
    exit(0);
  } else if(pid < 0){
    425e:	78 58                	js     42b8 <uio+0x78>
    printf (1, "fork failed\n");
    exit(0);
  }
  wait(&status);
    4260:	8d 45 f4             	lea    -0xc(%ebp),%eax
    4263:	83 ec 0c             	sub    $0xc,%esp
    4266:	50                   	push   %eax
    4267:	e8 4e 03 00 00       	call   45ba <wait>
  printf(1, "uio test done\n");
    426c:	58                   	pop    %eax
    426d:	5a                   	pop    %edx
    426e:	68 dc 59 00 00       	push   $0x59dc
    4273:	6a 01                	push   $0x1
    4275:	e8 86 04 00 00       	call   4700 <printf>
}
    427a:	83 c4 10             	add    $0x10,%esp
    427d:	c9                   	leave  
    427e:	c3                   	ret    
    427f:	90                   	nop
  pid = fork();
  if(pid == 0){
    port = RTC_ADDR;
    val = 0x09;  /* year */
    /* http://wiki.osdev.org/Inline_Assembly/Examples */
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    4280:	ba 70 00 00 00       	mov    $0x70,%edx
    4285:	b8 09 00 00 00       	mov    $0x9,%eax
    428a:	ee                   	out    %al,(%dx)
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    428b:	ba 71 00 00 00       	mov    $0x71,%edx
    4290:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    4291:	83 ec 08             	sub    $0x8,%esp
    4294:	68 68 61 00 00       	push   $0x6168
    exit(0);
  } else if(pid < 0){
    printf (1, "fork failed\n");
    4299:	6a 01                	push   $0x1
    429b:	e8 60 04 00 00       	call   4700 <printf>
    exit(0);
    42a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    42a7:	e8 06 03 00 00       	call   45b2 <exit>
    42ac:	83 c4 10             	add    $0x10,%esp
    42af:	eb af                	jmp    4260 <uio+0x20>
    42b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    printf(1, "uio: uio succeeded; test FAILED\n");
    exit(0);
  } else if(pid < 0){
    printf (1, "fork failed\n");
    42b8:	83 ec 08             	sub    $0x8,%esp
    42bb:	68 61 59 00 00       	push   $0x5961
    42c0:	eb d7                	jmp    4299 <uio+0x59>
    42c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    42c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000042d0 <argptest>:
  wait(&status);
  printf(1, "uio test done\n");
}

void argptest()
{
    42d0:	55                   	push   %ebp
    42d1:	89 e5                	mov    %esp,%ebp
    42d3:	53                   	push   %ebx
    42d4:	83 ec 0c             	sub    $0xc,%esp
  int fd;
  fd = open("init", O_RDONLY);
    42d7:	6a 00                	push   $0x0
    42d9:	68 eb 59 00 00       	push   $0x59eb
    42de:	e8 0f 03 00 00       	call   45f2 <open>
  if (fd < 0) {
    42e3:	83 c4 10             	add    $0x10,%esp
    42e6:	85 c0                	test   %eax,%eax
}

void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
    42e8:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    42ea:	78 3c                	js     4328 <argptest+0x58>
    printf(2, "open failed\n");
    exit(0);
  }
  read(fd, sbrk(0) - 1, -1);
    42ec:	83 ec 0c             	sub    $0xc,%esp
    42ef:	6a 00                	push   $0x0
    42f1:	e8 44 03 00 00       	call   463a <sbrk>
    42f6:	83 c4 0c             	add    $0xc,%esp
    42f9:	83 e8 01             	sub    $0x1,%eax
    42fc:	6a ff                	push   $0xffffffff
    42fe:	50                   	push   %eax
    42ff:	53                   	push   %ebx
    4300:	e8 c5 02 00 00       	call   45ca <read>
  close(fd);
    4305:	89 1c 24             	mov    %ebx,(%esp)
    4308:	e8 cd 02 00 00       	call   45da <close>
  printf(1, "arg test passed\n");
    430d:	58                   	pop    %eax
    430e:	5a                   	pop    %edx
    430f:	68 fd 59 00 00       	push   $0x59fd
    4314:	6a 01                	push   $0x1
    4316:	e8 e5 03 00 00       	call   4700 <printf>
}
    431b:	83 c4 10             	add    $0x10,%esp
    431e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4321:	c9                   	leave  
    4322:	c3                   	ret    
    4323:	90                   	nop
    4324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
  if (fd < 0) {
    printf(2, "open failed\n");
    4328:	83 ec 08             	sub    $0x8,%esp
    432b:	68 f0 59 00 00       	push   $0x59f0
    4330:	6a 02                	push   $0x2
    4332:	e8 c9 03 00 00       	call   4700 <printf>
    exit(0);
    4337:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    433e:	e8 6f 02 00 00       	call   45b2 <exit>
    4343:	83 c4 10             	add    $0x10,%esp
    4346:	eb a4                	jmp    42ec <argptest+0x1c>
    4348:	90                   	nop
    4349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004350 <rand>:

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    4350:	69 05 fc 6a 00 00 0d 	imul   $0x19660d,0x6afc,%eax
    4357:	66 19 00 
}

unsigned long randstate = 1;
unsigned int
rand()
{
    435a:	55                   	push   %ebp
    435b:	89 e5                	mov    %esp,%ebp
  randstate = randstate * 1664525 + 1013904223;
  return randstate;
}
    435d:	5d                   	pop    %ebp

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    435e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    4363:	a3 fc 6a 00 00       	mov    %eax,0x6afc
  return randstate;
}
    4368:	c3                   	ret    
    4369:	66 90                	xchg   %ax,%ax
    436b:	66 90                	xchg   %ax,%ax
    436d:	66 90                	xchg   %ax,%ax
    436f:	90                   	nop

00004370 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    4370:	55                   	push   %ebp
    4371:	89 e5                	mov    %esp,%ebp
    4373:	53                   	push   %ebx
    4374:	8b 45 08             	mov    0x8(%ebp),%eax
    4377:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    437a:	89 c2                	mov    %eax,%edx
    437c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4380:	83 c1 01             	add    $0x1,%ecx
    4383:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    4387:	83 c2 01             	add    $0x1,%edx
    438a:	84 db                	test   %bl,%bl
    438c:	88 5a ff             	mov    %bl,-0x1(%edx)
    438f:	75 ef                	jne    4380 <strcpy+0x10>
    ;
  return os;
}
    4391:	5b                   	pop    %ebx
    4392:	5d                   	pop    %ebp
    4393:	c3                   	ret    
    4394:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    439a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000043a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    43a0:	55                   	push   %ebp
    43a1:	89 e5                	mov    %esp,%ebp
    43a3:	56                   	push   %esi
    43a4:	53                   	push   %ebx
    43a5:	8b 55 08             	mov    0x8(%ebp),%edx
    43a8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    43ab:	0f b6 02             	movzbl (%edx),%eax
    43ae:	0f b6 19             	movzbl (%ecx),%ebx
    43b1:	84 c0                	test   %al,%al
    43b3:	75 1e                	jne    43d3 <strcmp+0x33>
    43b5:	eb 29                	jmp    43e0 <strcmp+0x40>
    43b7:	89 f6                	mov    %esi,%esi
    43b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    43c0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    43c3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    43c6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    43c9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    43cd:	84 c0                	test   %al,%al
    43cf:	74 0f                	je     43e0 <strcmp+0x40>
    43d1:	89 f1                	mov    %esi,%ecx
    43d3:	38 d8                	cmp    %bl,%al
    43d5:	74 e9                	je     43c0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
    43d7:	29 d8                	sub    %ebx,%eax
}
    43d9:	5b                   	pop    %ebx
    43da:	5e                   	pop    %esi
    43db:	5d                   	pop    %ebp
    43dc:	c3                   	ret    
    43dd:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    43e0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    43e2:	29 d8                	sub    %ebx,%eax
}
    43e4:	5b                   	pop    %ebx
    43e5:	5e                   	pop    %esi
    43e6:	5d                   	pop    %ebp
    43e7:	c3                   	ret    
    43e8:	90                   	nop
    43e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000043f0 <strlen>:

uint
strlen(char *s)
{
    43f0:	55                   	push   %ebp
    43f1:	89 e5                	mov    %esp,%ebp
    43f3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    43f6:	80 39 00             	cmpb   $0x0,(%ecx)
    43f9:	74 12                	je     440d <strlen+0x1d>
    43fb:	31 d2                	xor    %edx,%edx
    43fd:	8d 76 00             	lea    0x0(%esi),%esi
    4400:	83 c2 01             	add    $0x1,%edx
    4403:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    4407:	89 d0                	mov    %edx,%eax
    4409:	75 f5                	jne    4400 <strlen+0x10>
    ;
  return n;
}
    440b:	5d                   	pop    %ebp
    440c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    440d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    440f:	5d                   	pop    %ebp
    4410:	c3                   	ret    
    4411:	eb 0d                	jmp    4420 <memset>
    4413:	90                   	nop
    4414:	90                   	nop
    4415:	90                   	nop
    4416:	90                   	nop
    4417:	90                   	nop
    4418:	90                   	nop
    4419:	90                   	nop
    441a:	90                   	nop
    441b:	90                   	nop
    441c:	90                   	nop
    441d:	90                   	nop
    441e:	90                   	nop
    441f:	90                   	nop

00004420 <memset>:

void*
memset(void *dst, int c, uint n)
{
    4420:	55                   	push   %ebp
    4421:	89 e5                	mov    %esp,%ebp
    4423:	57                   	push   %edi
    4424:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    4427:	8b 4d 10             	mov    0x10(%ebp),%ecx
    442a:	8b 45 0c             	mov    0xc(%ebp),%eax
    442d:	89 d7                	mov    %edx,%edi
    442f:	fc                   	cld    
    4430:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    4432:	89 d0                	mov    %edx,%eax
    4434:	5f                   	pop    %edi
    4435:	5d                   	pop    %ebp
    4436:	c3                   	ret    
    4437:	89 f6                	mov    %esi,%esi
    4439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004440 <strchr>:

char*
strchr(const char *s, char c)
{
    4440:	55                   	push   %ebp
    4441:	89 e5                	mov    %esp,%ebp
    4443:	53                   	push   %ebx
    4444:	8b 45 08             	mov    0x8(%ebp),%eax
    4447:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    444a:	0f b6 10             	movzbl (%eax),%edx
    444d:	84 d2                	test   %dl,%dl
    444f:	74 1d                	je     446e <strchr+0x2e>
    if(*s == c)
    4451:	38 d3                	cmp    %dl,%bl
    4453:	89 d9                	mov    %ebx,%ecx
    4455:	75 0d                	jne    4464 <strchr+0x24>
    4457:	eb 17                	jmp    4470 <strchr+0x30>
    4459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4460:	38 ca                	cmp    %cl,%dl
    4462:	74 0c                	je     4470 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    4464:	83 c0 01             	add    $0x1,%eax
    4467:	0f b6 10             	movzbl (%eax),%edx
    446a:	84 d2                	test   %dl,%dl
    446c:	75 f2                	jne    4460 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    446e:	31 c0                	xor    %eax,%eax
}
    4470:	5b                   	pop    %ebx
    4471:	5d                   	pop    %ebp
    4472:	c3                   	ret    
    4473:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004480 <gets>:

char*
gets(char *buf, int max)
{
    4480:	55                   	push   %ebp
    4481:	89 e5                	mov    %esp,%ebp
    4483:	57                   	push   %edi
    4484:	56                   	push   %esi
    4485:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    4486:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
    4488:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
    448b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    448e:	eb 29                	jmp    44b9 <gets+0x39>
    cc = read(0, &c, 1);
    4490:	83 ec 04             	sub    $0x4,%esp
    4493:	6a 01                	push   $0x1
    4495:	57                   	push   %edi
    4496:	6a 00                	push   $0x0
    4498:	e8 2d 01 00 00       	call   45ca <read>
    if(cc < 1)
    449d:	83 c4 10             	add    $0x10,%esp
    44a0:	85 c0                	test   %eax,%eax
    44a2:	7e 1d                	jle    44c1 <gets+0x41>
      break;
    buf[i++] = c;
    44a4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    44a8:	8b 55 08             	mov    0x8(%ebp),%edx
    44ab:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
    44ad:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    44af:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    44b3:	74 1b                	je     44d0 <gets+0x50>
    44b5:	3c 0d                	cmp    $0xd,%al
    44b7:	74 17                	je     44d0 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    44b9:	8d 5e 01             	lea    0x1(%esi),%ebx
    44bc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    44bf:	7c cf                	jl     4490 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    44c1:	8b 45 08             	mov    0x8(%ebp),%eax
    44c4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    44c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    44cb:	5b                   	pop    %ebx
    44cc:	5e                   	pop    %esi
    44cd:	5f                   	pop    %edi
    44ce:	5d                   	pop    %ebp
    44cf:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    44d0:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    44d3:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    44d5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    44d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    44dc:	5b                   	pop    %ebx
    44dd:	5e                   	pop    %esi
    44de:	5f                   	pop    %edi
    44df:	5d                   	pop    %ebp
    44e0:	c3                   	ret    
    44e1:	eb 0d                	jmp    44f0 <stat>
    44e3:	90                   	nop
    44e4:	90                   	nop
    44e5:	90                   	nop
    44e6:	90                   	nop
    44e7:	90                   	nop
    44e8:	90                   	nop
    44e9:	90                   	nop
    44ea:	90                   	nop
    44eb:	90                   	nop
    44ec:	90                   	nop
    44ed:	90                   	nop
    44ee:	90                   	nop
    44ef:	90                   	nop

000044f0 <stat>:

int
stat(char *n, struct stat *st)
{
    44f0:	55                   	push   %ebp
    44f1:	89 e5                	mov    %esp,%ebp
    44f3:	56                   	push   %esi
    44f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    44f5:	83 ec 08             	sub    $0x8,%esp
    44f8:	6a 00                	push   $0x0
    44fa:	ff 75 08             	pushl  0x8(%ebp)
    44fd:	e8 f0 00 00 00       	call   45f2 <open>
  if(fd < 0)
    4502:	83 c4 10             	add    $0x10,%esp
    4505:	85 c0                	test   %eax,%eax
    4507:	78 27                	js     4530 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    4509:	83 ec 08             	sub    $0x8,%esp
    450c:	ff 75 0c             	pushl  0xc(%ebp)
    450f:	89 c3                	mov    %eax,%ebx
    4511:	50                   	push   %eax
    4512:	e8 f3 00 00 00       	call   460a <fstat>
    4517:	89 c6                	mov    %eax,%esi
  close(fd);
    4519:	89 1c 24             	mov    %ebx,(%esp)
    451c:	e8 b9 00 00 00       	call   45da <close>
  return r;
    4521:	83 c4 10             	add    $0x10,%esp
    4524:	89 f0                	mov    %esi,%eax
}
    4526:	8d 65 f8             	lea    -0x8(%ebp),%esp
    4529:	5b                   	pop    %ebx
    452a:	5e                   	pop    %esi
    452b:	5d                   	pop    %ebp
    452c:	c3                   	ret    
    452d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    4530:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4535:	eb ef                	jmp    4526 <stat+0x36>
    4537:	89 f6                	mov    %esi,%esi
    4539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004540 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    4540:	55                   	push   %ebp
    4541:	89 e5                	mov    %esp,%ebp
    4543:	53                   	push   %ebx
    4544:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    4547:	0f be 11             	movsbl (%ecx),%edx
    454a:	8d 42 d0             	lea    -0x30(%edx),%eax
    454d:	3c 09                	cmp    $0x9,%al
    454f:	b8 00 00 00 00       	mov    $0x0,%eax
    4554:	77 1f                	ja     4575 <atoi+0x35>
    4556:	8d 76 00             	lea    0x0(%esi),%esi
    4559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    4560:	8d 04 80             	lea    (%eax,%eax,4),%eax
    4563:	83 c1 01             	add    $0x1,%ecx
    4566:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    456a:	0f be 11             	movsbl (%ecx),%edx
    456d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    4570:	80 fb 09             	cmp    $0x9,%bl
    4573:	76 eb                	jbe    4560 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
    4575:	5b                   	pop    %ebx
    4576:	5d                   	pop    %ebp
    4577:	c3                   	ret    
    4578:	90                   	nop
    4579:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004580 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    4580:	55                   	push   %ebp
    4581:	89 e5                	mov    %esp,%ebp
    4583:	56                   	push   %esi
    4584:	53                   	push   %ebx
    4585:	8b 5d 10             	mov    0x10(%ebp),%ebx
    4588:	8b 45 08             	mov    0x8(%ebp),%eax
    458b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    458e:	85 db                	test   %ebx,%ebx
    4590:	7e 14                	jle    45a6 <memmove+0x26>
    4592:	31 d2                	xor    %edx,%edx
    4594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    4598:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    459c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    459f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    45a2:	39 da                	cmp    %ebx,%edx
    45a4:	75 f2                	jne    4598 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    45a6:	5b                   	pop    %ebx
    45a7:	5e                   	pop    %esi
    45a8:	5d                   	pop    %ebp
    45a9:	c3                   	ret    

000045aa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    45aa:	b8 01 00 00 00       	mov    $0x1,%eax
    45af:	cd 40                	int    $0x40
    45b1:	c3                   	ret    

000045b2 <exit>:
SYSCALL(exit)
    45b2:	b8 02 00 00 00       	mov    $0x2,%eax
    45b7:	cd 40                	int    $0x40
    45b9:	c3                   	ret    

000045ba <wait>:
SYSCALL(wait)
    45ba:	b8 03 00 00 00       	mov    $0x3,%eax
    45bf:	cd 40                	int    $0x40
    45c1:	c3                   	ret    

000045c2 <pipe>:
SYSCALL(pipe)
    45c2:	b8 04 00 00 00       	mov    $0x4,%eax
    45c7:	cd 40                	int    $0x40
    45c9:	c3                   	ret    

000045ca <read>:
SYSCALL(read)
    45ca:	b8 05 00 00 00       	mov    $0x5,%eax
    45cf:	cd 40                	int    $0x40
    45d1:	c3                   	ret    

000045d2 <write>:
SYSCALL(write)
    45d2:	b8 10 00 00 00       	mov    $0x10,%eax
    45d7:	cd 40                	int    $0x40
    45d9:	c3                   	ret    

000045da <close>:
SYSCALL(close)
    45da:	b8 15 00 00 00       	mov    $0x15,%eax
    45df:	cd 40                	int    $0x40
    45e1:	c3                   	ret    

000045e2 <kill>:
SYSCALL(kill)
    45e2:	b8 06 00 00 00       	mov    $0x6,%eax
    45e7:	cd 40                	int    $0x40
    45e9:	c3                   	ret    

000045ea <exec>:
SYSCALL(exec)
    45ea:	b8 07 00 00 00       	mov    $0x7,%eax
    45ef:	cd 40                	int    $0x40
    45f1:	c3                   	ret    

000045f2 <open>:
SYSCALL(open)
    45f2:	b8 0f 00 00 00       	mov    $0xf,%eax
    45f7:	cd 40                	int    $0x40
    45f9:	c3                   	ret    

000045fa <mknod>:
SYSCALL(mknod)
    45fa:	b8 11 00 00 00       	mov    $0x11,%eax
    45ff:	cd 40                	int    $0x40
    4601:	c3                   	ret    

00004602 <unlink>:
SYSCALL(unlink)
    4602:	b8 12 00 00 00       	mov    $0x12,%eax
    4607:	cd 40                	int    $0x40
    4609:	c3                   	ret    

0000460a <fstat>:
SYSCALL(fstat)
    460a:	b8 08 00 00 00       	mov    $0x8,%eax
    460f:	cd 40                	int    $0x40
    4611:	c3                   	ret    

00004612 <link>:
SYSCALL(link)
    4612:	b8 13 00 00 00       	mov    $0x13,%eax
    4617:	cd 40                	int    $0x40
    4619:	c3                   	ret    

0000461a <mkdir>:
SYSCALL(mkdir)
    461a:	b8 14 00 00 00       	mov    $0x14,%eax
    461f:	cd 40                	int    $0x40
    4621:	c3                   	ret    

00004622 <chdir>:
SYSCALL(chdir)
    4622:	b8 09 00 00 00       	mov    $0x9,%eax
    4627:	cd 40                	int    $0x40
    4629:	c3                   	ret    

0000462a <dup>:
SYSCALL(dup)
    462a:	b8 0a 00 00 00       	mov    $0xa,%eax
    462f:	cd 40                	int    $0x40
    4631:	c3                   	ret    

00004632 <getpid>:
SYSCALL(getpid)
    4632:	b8 0b 00 00 00       	mov    $0xb,%eax
    4637:	cd 40                	int    $0x40
    4639:	c3                   	ret    

0000463a <sbrk>:
SYSCALL(sbrk)
    463a:	b8 0c 00 00 00       	mov    $0xc,%eax
    463f:	cd 40                	int    $0x40
    4641:	c3                   	ret    

00004642 <sleep>:
SYSCALL(sleep)
    4642:	b8 0d 00 00 00       	mov    $0xd,%eax
    4647:	cd 40                	int    $0x40
    4649:	c3                   	ret    

0000464a <uptime>:
SYSCALL(uptime)
    464a:	b8 0e 00 00 00       	mov    $0xe,%eax
    464f:	cd 40                	int    $0x40
    4651:	c3                   	ret    
    4652:	66 90                	xchg   %ax,%ax
    4654:	66 90                	xchg   %ax,%ax
    4656:	66 90                	xchg   %ax,%ax
    4658:	66 90                	xchg   %ax,%ax
    465a:	66 90                	xchg   %ax,%ax
    465c:	66 90                	xchg   %ax,%ax
    465e:	66 90                	xchg   %ax,%ax

00004660 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4660:	55                   	push   %ebp
    4661:	89 e5                	mov    %esp,%ebp
    4663:	57                   	push   %edi
    4664:	56                   	push   %esi
    4665:	53                   	push   %ebx
    4666:	89 c6                	mov    %eax,%esi
    4668:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    466b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    466e:	85 db                	test   %ebx,%ebx
    4670:	74 7e                	je     46f0 <printint+0x90>
    4672:	89 d0                	mov    %edx,%eax
    4674:	c1 e8 1f             	shr    $0x1f,%eax
    4677:	84 c0                	test   %al,%al
    4679:	74 75                	je     46f0 <printint+0x90>
    neg = 1;
    x = -xx;
    467b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    467d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    4684:	f7 d8                	neg    %eax
    4686:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    4689:	31 ff                	xor    %edi,%edi
    468b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    468e:	89 ce                	mov    %ecx,%esi
    4690:	eb 08                	jmp    469a <printint+0x3a>
    4692:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    4698:	89 cf                	mov    %ecx,%edi
    469a:	31 d2                	xor    %edx,%edx
    469c:	8d 4f 01             	lea    0x1(%edi),%ecx
    469f:	f7 f6                	div    %esi
    46a1:	0f b6 92 c0 61 00 00 	movzbl 0x61c0(%edx),%edx
  }while((x /= base) != 0);
    46a8:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    46aa:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    46ad:	75 e9                	jne    4698 <printint+0x38>
  if(neg)
    46af:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    46b2:	8b 75 c0             	mov    -0x40(%ebp),%esi
    46b5:	85 c0                	test   %eax,%eax
    46b7:	74 08                	je     46c1 <printint+0x61>
    buf[i++] = '-';
    46b9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    46be:	8d 4f 02             	lea    0x2(%edi),%ecx
    46c1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
    46c5:	8d 76 00             	lea    0x0(%esi),%esi
    46c8:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    46cb:	83 ec 04             	sub    $0x4,%esp
    46ce:	83 ef 01             	sub    $0x1,%edi
    46d1:	6a 01                	push   $0x1
    46d3:	53                   	push   %ebx
    46d4:	56                   	push   %esi
    46d5:	88 45 d7             	mov    %al,-0x29(%ebp)
    46d8:	e8 f5 fe ff ff       	call   45d2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    46dd:	83 c4 10             	add    $0x10,%esp
    46e0:	39 df                	cmp    %ebx,%edi
    46e2:	75 e4                	jne    46c8 <printint+0x68>
    putc(fd, buf[i]);
}
    46e4:	8d 65 f4             	lea    -0xc(%ebp),%esp
    46e7:	5b                   	pop    %ebx
    46e8:	5e                   	pop    %esi
    46e9:	5f                   	pop    %edi
    46ea:	5d                   	pop    %ebp
    46eb:	c3                   	ret    
    46ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    46f0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    46f2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    46f9:	eb 8b                	jmp    4686 <printint+0x26>
    46fb:	90                   	nop
    46fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004700 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    4700:	55                   	push   %ebp
    4701:	89 e5                	mov    %esp,%ebp
    4703:	57                   	push   %edi
    4704:	56                   	push   %esi
    4705:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4706:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    4709:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    470c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    470f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4712:	89 45 d0             	mov    %eax,-0x30(%ebp)
    4715:	0f b6 1e             	movzbl (%esi),%ebx
    4718:	83 c6 01             	add    $0x1,%esi
    471b:	84 db                	test   %bl,%bl
    471d:	0f 84 b0 00 00 00    	je     47d3 <printf+0xd3>
    4723:	31 d2                	xor    %edx,%edx
    4725:	eb 39                	jmp    4760 <printf+0x60>
    4727:	89 f6                	mov    %esi,%esi
    4729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    4730:	83 f8 25             	cmp    $0x25,%eax
    4733:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    4736:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    473b:	74 18                	je     4755 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    473d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4740:	83 ec 04             	sub    $0x4,%esp
    4743:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    4746:	6a 01                	push   $0x1
    4748:	50                   	push   %eax
    4749:	57                   	push   %edi
    474a:	e8 83 fe ff ff       	call   45d2 <write>
    474f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    4752:	83 c4 10             	add    $0x10,%esp
    4755:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4758:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    475c:	84 db                	test   %bl,%bl
    475e:	74 73                	je     47d3 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
    4760:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    4762:	0f be cb             	movsbl %bl,%ecx
    4765:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    4768:	74 c6                	je     4730 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    476a:	83 fa 25             	cmp    $0x25,%edx
    476d:	75 e6                	jne    4755 <printf+0x55>
      if(c == 'd'){
    476f:	83 f8 64             	cmp    $0x64,%eax
    4772:	0f 84 f8 00 00 00    	je     4870 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    4778:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    477e:	83 f9 70             	cmp    $0x70,%ecx
    4781:	74 5d                	je     47e0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    4783:	83 f8 73             	cmp    $0x73,%eax
    4786:	0f 84 84 00 00 00    	je     4810 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    478c:	83 f8 63             	cmp    $0x63,%eax
    478f:	0f 84 ea 00 00 00    	je     487f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    4795:	83 f8 25             	cmp    $0x25,%eax
    4798:	0f 84 c2 00 00 00    	je     4860 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    479e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    47a1:	83 ec 04             	sub    $0x4,%esp
    47a4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    47a8:	6a 01                	push   $0x1
    47aa:	50                   	push   %eax
    47ab:	57                   	push   %edi
    47ac:	e8 21 fe ff ff       	call   45d2 <write>
    47b1:	83 c4 0c             	add    $0xc,%esp
    47b4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    47b7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    47ba:	6a 01                	push   $0x1
    47bc:	50                   	push   %eax
    47bd:	57                   	push   %edi
    47be:	83 c6 01             	add    $0x1,%esi
    47c1:	e8 0c fe ff ff       	call   45d2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    47c6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    47ca:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    47cd:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    47cf:	84 db                	test   %bl,%bl
    47d1:	75 8d                	jne    4760 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    47d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    47d6:	5b                   	pop    %ebx
    47d7:	5e                   	pop    %esi
    47d8:	5f                   	pop    %edi
    47d9:	5d                   	pop    %ebp
    47da:	c3                   	ret    
    47db:	90                   	nop
    47dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    47e0:	83 ec 0c             	sub    $0xc,%esp
    47e3:	b9 10 00 00 00       	mov    $0x10,%ecx
    47e8:	6a 00                	push   $0x0
    47ea:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    47ed:	89 f8                	mov    %edi,%eax
    47ef:	8b 13                	mov    (%ebx),%edx
    47f1:	e8 6a fe ff ff       	call   4660 <printint>
        ap++;
    47f6:	89 d8                	mov    %ebx,%eax
    47f8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    47fb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
    47fd:	83 c0 04             	add    $0x4,%eax
    4800:	89 45 d0             	mov    %eax,-0x30(%ebp)
    4803:	e9 4d ff ff ff       	jmp    4755 <printf+0x55>
    4808:	90                   	nop
    4809:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    4810:	8b 45 d0             	mov    -0x30(%ebp),%eax
    4813:	8b 18                	mov    (%eax),%ebx
        ap++;
    4815:	83 c0 04             	add    $0x4,%eax
    4818:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
    481b:	b8 b8 61 00 00       	mov    $0x61b8,%eax
    4820:	85 db                	test   %ebx,%ebx
    4822:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
    4825:	0f b6 03             	movzbl (%ebx),%eax
    4828:	84 c0                	test   %al,%al
    482a:	74 23                	je     484f <printf+0x14f>
    482c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4830:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4833:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    4836:	83 ec 04             	sub    $0x4,%esp
    4839:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    483b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    483e:	50                   	push   %eax
    483f:	57                   	push   %edi
    4840:	e8 8d fd ff ff       	call   45d2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    4845:	0f b6 03             	movzbl (%ebx),%eax
    4848:	83 c4 10             	add    $0x10,%esp
    484b:	84 c0                	test   %al,%al
    484d:	75 e1                	jne    4830 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    484f:	31 d2                	xor    %edx,%edx
    4851:	e9 ff fe ff ff       	jmp    4755 <printf+0x55>
    4856:	8d 76 00             	lea    0x0(%esi),%esi
    4859:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4860:	83 ec 04             	sub    $0x4,%esp
    4863:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    4866:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    4869:	6a 01                	push   $0x1
    486b:	e9 4c ff ff ff       	jmp    47bc <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    4870:	83 ec 0c             	sub    $0xc,%esp
    4873:	b9 0a 00 00 00       	mov    $0xa,%ecx
    4878:	6a 01                	push   $0x1
    487a:	e9 6b ff ff ff       	jmp    47ea <printf+0xea>
    487f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4882:	83 ec 04             	sub    $0x4,%esp
    4885:	8b 03                	mov    (%ebx),%eax
    4887:	6a 01                	push   $0x1
    4889:	88 45 e4             	mov    %al,-0x1c(%ebp)
    488c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    488f:	50                   	push   %eax
    4890:	57                   	push   %edi
    4891:	e8 3c fd ff ff       	call   45d2 <write>
    4896:	e9 5b ff ff ff       	jmp    47f6 <printf+0xf6>
    489b:	66 90                	xchg   %ax,%ax
    489d:	66 90                	xchg   %ax,%ax
    489f:	90                   	nop

000048a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    48a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48a1:	a1 a0 6b 00 00       	mov    0x6ba0,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    48a6:	89 e5                	mov    %esp,%ebp
    48a8:	57                   	push   %edi
    48a9:	56                   	push   %esi
    48aa:	53                   	push   %ebx
    48ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    48ae:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    48b0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48b3:	39 c8                	cmp    %ecx,%eax
    48b5:	73 19                	jae    48d0 <free+0x30>
    48b7:	89 f6                	mov    %esi,%esi
    48b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    48c0:	39 d1                	cmp    %edx,%ecx
    48c2:	72 1c                	jb     48e0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    48c4:	39 d0                	cmp    %edx,%eax
    48c6:	73 18                	jae    48e0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
    48c8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48ca:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    48cc:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48ce:	72 f0                	jb     48c0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    48d0:	39 d0                	cmp    %edx,%eax
    48d2:	72 f4                	jb     48c8 <free+0x28>
    48d4:	39 d1                	cmp    %edx,%ecx
    48d6:	73 f0                	jae    48c8 <free+0x28>
    48d8:	90                   	nop
    48d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    48e0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    48e3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    48e6:	39 d7                	cmp    %edx,%edi
    48e8:	74 19                	je     4903 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    48ea:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    48ed:	8b 50 04             	mov    0x4(%eax),%edx
    48f0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    48f3:	39 f1                	cmp    %esi,%ecx
    48f5:	74 23                	je     491a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    48f7:	89 08                	mov    %ecx,(%eax)
  freep = p;
    48f9:	a3 a0 6b 00 00       	mov    %eax,0x6ba0
}
    48fe:	5b                   	pop    %ebx
    48ff:	5e                   	pop    %esi
    4900:	5f                   	pop    %edi
    4901:	5d                   	pop    %ebp
    4902:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    4903:	03 72 04             	add    0x4(%edx),%esi
    4906:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    4909:	8b 10                	mov    (%eax),%edx
    490b:	8b 12                	mov    (%edx),%edx
    490d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    4910:	8b 50 04             	mov    0x4(%eax),%edx
    4913:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4916:	39 f1                	cmp    %esi,%ecx
    4918:	75 dd                	jne    48f7 <free+0x57>
    p->s.size += bp->s.size;
    491a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    491d:	a3 a0 6b 00 00       	mov    %eax,0x6ba0
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    4922:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    4925:	8b 53 f8             	mov    -0x8(%ebx),%edx
    4928:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    492a:	5b                   	pop    %ebx
    492b:	5e                   	pop    %esi
    492c:	5f                   	pop    %edi
    492d:	5d                   	pop    %ebp
    492e:	c3                   	ret    
    492f:	90                   	nop

00004930 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4930:	55                   	push   %ebp
    4931:	89 e5                	mov    %esp,%ebp
    4933:	57                   	push   %edi
    4934:	56                   	push   %esi
    4935:	53                   	push   %ebx
    4936:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4939:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    493c:	8b 15 a0 6b 00 00    	mov    0x6ba0,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4942:	8d 78 07             	lea    0x7(%eax),%edi
    4945:	c1 ef 03             	shr    $0x3,%edi
    4948:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    494b:	85 d2                	test   %edx,%edx
    494d:	0f 84 a3 00 00 00    	je     49f6 <malloc+0xc6>
    4953:	8b 02                	mov    (%edx),%eax
    4955:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4958:	39 cf                	cmp    %ecx,%edi
    495a:	76 74                	jbe    49d0 <malloc+0xa0>
    495c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    4962:	be 00 10 00 00       	mov    $0x1000,%esi
    4967:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
    496e:	0f 43 f7             	cmovae %edi,%esi
    4971:	ba 00 80 00 00       	mov    $0x8000,%edx
    4976:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
    497c:	0f 46 da             	cmovbe %edx,%ebx
    497f:	eb 10                	jmp    4991 <malloc+0x61>
    4981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4988:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    498a:	8b 48 04             	mov    0x4(%eax),%ecx
    498d:	39 cf                	cmp    %ecx,%edi
    498f:	76 3f                	jbe    49d0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    4991:	39 05 a0 6b 00 00    	cmp    %eax,0x6ba0
    4997:	89 c2                	mov    %eax,%edx
    4999:	75 ed                	jne    4988 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    499b:	83 ec 0c             	sub    $0xc,%esp
    499e:	53                   	push   %ebx
    499f:	e8 96 fc ff ff       	call   463a <sbrk>
  if(p == (char*)-1)
    49a4:	83 c4 10             	add    $0x10,%esp
    49a7:	83 f8 ff             	cmp    $0xffffffff,%eax
    49aa:	74 1c                	je     49c8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    49ac:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
    49af:	83 ec 0c             	sub    $0xc,%esp
    49b2:	83 c0 08             	add    $0x8,%eax
    49b5:	50                   	push   %eax
    49b6:	e8 e5 fe ff ff       	call   48a0 <free>
  return freep;
    49bb:	8b 15 a0 6b 00 00    	mov    0x6ba0,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    49c1:	83 c4 10             	add    $0x10,%esp
    49c4:	85 d2                	test   %edx,%edx
    49c6:	75 c0                	jne    4988 <malloc+0x58>
        return 0;
    49c8:	31 c0                	xor    %eax,%eax
    49ca:	eb 1c                	jmp    49e8 <malloc+0xb8>
    49cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
    49d0:	39 cf                	cmp    %ecx,%edi
    49d2:	74 1c                	je     49f0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    49d4:	29 f9                	sub    %edi,%ecx
    49d6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    49d9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    49dc:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
    49df:	89 15 a0 6b 00 00    	mov    %edx,0x6ba0
      return (void*)(p + 1);
    49e5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    49e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    49eb:	5b                   	pop    %ebx
    49ec:	5e                   	pop    %esi
    49ed:	5f                   	pop    %edi
    49ee:	5d                   	pop    %ebp
    49ef:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    49f0:	8b 08                	mov    (%eax),%ecx
    49f2:	89 0a                	mov    %ecx,(%edx)
    49f4:	eb e9                	jmp    49df <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    49f6:	c7 05 a0 6b 00 00 a4 	movl   $0x6ba4,0x6ba0
    49fd:	6b 00 00 
    4a00:	c7 05 a4 6b 00 00 a4 	movl   $0x6ba4,0x6ba4
    4a07:	6b 00 00 
    base.s.size = 0;
    4a0a:	b8 a4 6b 00 00       	mov    $0x6ba4,%eax
    4a0f:	c7 05 a8 6b 00 00 00 	movl   $0x0,0x6ba8
    4a16:	00 00 00 
    4a19:	e9 3e ff ff ff       	jmp    495c <malloc+0x2c>
