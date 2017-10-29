
_tatestharness:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "user.h"

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	8b 59 04             	mov    0x4(%ecx),%ebx
	
  int exitWait(void);
  int waitPid(void);
  //int PScheduler(void);

  printf(1, "\n This program tests the correctness of your lab#1\n");
  12:	83 ec 08             	sub    $0x8,%esp
  15:	68 f0 0b 00 00       	push   $0xbf0
  1a:	6a 01                	push   $0x1
  1c:	e8 9f 06 00 00       	call   6c0 <printf>
  
  if (atoi(argv[1]) == 1)
  21:	5a                   	pop    %edx
  22:	ff 73 04             	pushl  0x4(%ebx)
  25:	e8 d6 04 00 00       	call   500 <atoi>
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	83 f8 01             	cmp    $0x1,%eax
  30:	74 3a                	je     6c <main+0x6c>
    exitWait();
  else if (atoi(argv[1]) == 2)
  32:	83 ec 0c             	sub    $0xc,%esp
  35:	ff 73 04             	pushl  0x4(%ebx)
  38:	e8 c3 04 00 00       	call   500 <atoi>
  3d:	83 c4 10             	add    $0x10,%esp
  40:	83 f8 02             	cmp    $0x2,%eax
  43:	74 2e                	je     73 <main+0x73>
    waitPid();
 // else if (atoi(argv[1]) == 3)
   // PScheduler();
  else 
    printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid and \"lab1 3\" to test the priority scheduler \n");
  45:	50                   	push   %eax
  46:	50                   	push   %eax
  47:	68 24 0c 00 00       	push   $0xc24
  4c:	6a 01                	push   $0x1
  4e:	e8 6d 06 00 00       	call   6c0 <printf>
  53:	83 c4 10             	add    $0x10,%esp
  
  // End of test
  exit(0);
  56:	83 ec 0c             	sub    $0xc,%esp
  59:	6a 00                	push   $0x0
  5b:	e8 12 05 00 00       	call   572 <exit>
}
  60:	8d 65 f8             	lea    -0x8(%ebp),%esp
  63:	31 c0                	xor    %eax,%eax
  65:	59                   	pop    %ecx
  66:	5b                   	pop    %ebx
  67:	5d                   	pop    %ebp
  68:	8d 61 fc             	lea    -0x4(%ecx),%esp
  6b:	c3                   	ret    
  //int PScheduler(void);

  printf(1, "\n This program tests the correctness of your lab#1\n");
  
  if (atoi(argv[1]) == 1)
    exitWait();
  6c:	e8 0f 00 00 00       	call   80 <exitWait>
  71:	eb e3                	jmp    56 <main+0x56>
  else if (atoi(argv[1]) == 2)
    waitPid();
  73:	e8 08 01 00 00       	call   180 <waitPid>
  78:	eb dc                	jmp    56 <main+0x56>
  7a:	66 90                	xchg   %ax,%ax
  7c:	66 90                	xchg   %ax,%ax
  7e:	66 90                	xchg   %ax,%ax

00000080 <exitWait>:
  
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// use this part to test exit(int status) and wait(int* status)

int exitWait(void) 
{
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	56                   	push   %esi
  84:	53                   	push   %ebx
  int pid, ret_pid, exit_status;
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");
  85:	bb 01 00 00 00       	mov    $0x1,%ebx
  
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// use this part to test exit(int status) and wait(int* status)

int exitWait(void) 
{
  8a:	83 ec 18             	sub    $0x18,%esp
  int pid, ret_pid, exit_status;
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");
  8d:	68 e0 09 00 00       	push   $0x9e0
  92:	6a 01                	push   $0x1
  94:	e8 27 06 00 00       	call   6c0 <printf>
  99:	83 c4 10             	add    $0x10,%esp

  for (i = 0; i < 2; i++) {
    pid = fork();
  9c:	e8 c9 04 00 00       	call   56a <fork>
    if (pid == 0) { // only the child executed this code
  a1:	83 f8 00             	cmp    $0x0,%eax
  a4:	75 3a                	jne    e0 <exitWait+0x60>
      if (i == 0)
  a6:	83 fb 01             	cmp    $0x1,%ebx
  a9:	0f 84 ac 00 00 00    	je     15b <exitWait+0xdb>
        printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
        exit(0);
      }
      else
      {
        printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
  af:	e8 3e 05 00 00       	call   5f2 <getpid>
  b4:	6a ff                	push   $0xffffffff
  b6:	50                   	push   %eax
  b7:	68 1c 0a 00 00       	push   $0xa1c
  bc:	6a 01                	push   $0x1
  be:	e8 fd 05 00 00       	call   6c0 <printf>
        exit(-1);
  c3:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
  ca:	e8 a3 04 00 00       	call   572 <exit>
  cf:	83 c4 10             	add    $0x10,%esp
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
  d2:	83 fb 02             	cmp    $0x2,%ebx
  d5:	75 54                	jne    12b <exitWait+0xab>
	  printf(2, "\nError using fork\n");
      exit(-1);
    }
  }
  return 0;
}
  d7:	8d 65 f8             	lea    -0x8(%ebp),%esp
  da:	31 c0                	xor    %eax,%eax
  dc:	5b                   	pop    %ebx
  dd:	5e                   	pop    %esi
  de:	5d                   	pop    %ebp
  df:	c3                   	ret    
      else
      {
        printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
        exit(-1);
      } 
    } else if (pid > 0) { // only the parent exeecutes this code
  e0:	7e 56                	jle    138 <exitWait+0xb8>
      printf(1, "exit_status before wait call = %d", exit_status);
  e2:	83 ec 04             	sub    $0x4,%esp
  e5:	ff 75 f4             	pushl  -0xc(%ebp)
  e8:	68 58 0a 00 00       	push   $0xa58
  ed:	6a 01                	push   $0x1
  ef:	e8 cc 05 00 00       	call   6c0 <printf>
      ret_pid = wait(&exit_status);
  f4:	8d 45 f4             	lea    -0xc(%ebp),%eax
  f7:	89 04 24             	mov    %eax,(%esp)
  fa:	e8 7b 04 00 00       	call   57a <wait>
      printf(1, "exit_status before wait call = %d", exit_status);
  ff:	83 c4 0c             	add    $0xc,%esp
 102:	ff 75 f4             	pushl  -0xc(%ebp)
        printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
        exit(-1);
      } 
    } else if (pid > 0) { // only the parent exeecutes this code
      printf(1, "exit_status before wait call = %d", exit_status);
      ret_pid = wait(&exit_status);
 105:	89 c6                	mov    %eax,%esi
      printf(1, "exit_status before wait call = %d", exit_status);
 107:	68 58 0a 00 00       	push   $0xa58
 10c:	6a 01                	push   $0x1
 10e:	e8 ad 05 00 00       	call   6c0 <printf>

      printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
 113:	ff 75 f4             	pushl  -0xc(%ebp)
 116:	56                   	push   %esi
 117:	68 7c 0a 00 00       	push   $0xa7c
 11c:	6a 01                	push   $0x1
 11e:	e8 9d 05 00 00       	call   6c0 <printf>
 123:	83 c4 20             	add    $0x20,%esp
  int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
 126:	83 fb 02             	cmp    $0x2,%ebx
 129:	74 ac                	je     d7 <exitWait+0x57>
 12b:	83 c3 01             	add    $0x1,%ebx
 12e:	e9 69 ff ff ff       	jmp    9c <exitWait+0x1c>
 133:	90                   	nop
 134:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "exit_status before wait call = %d", exit_status);

      printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
    } else  // something went wrong with fork system call
    {  
	  printf(2, "\nError using fork\n");
 138:	83 ec 08             	sub    $0x8,%esp
 13b:	68 94 0c 00 00       	push   $0xc94
 140:	6a 02                	push   $0x2
 142:	e8 79 05 00 00       	call   6c0 <printf>
      exit(-1);
 147:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 14e:	e8 1f 04 00 00       	call   572 <exit>
 153:	83 c4 10             	add    $0x10,%esp
 156:	e9 77 ff ff ff       	jmp    d2 <exitWait+0x52>
  for (i = 0; i < 2; i++) {
    pid = fork();
    if (pid == 0) { // only the child executed this code
      if (i == 0)
      {
        printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
 15b:	e8 92 04 00 00       	call   5f2 <getpid>
 160:	6a 00                	push   $0x0
 162:	50                   	push   %eax
 163:	68 1c 0a 00 00       	push   $0xa1c
 168:	6a 01                	push   $0x1
 16a:	e8 51 05 00 00       	call   6c0 <printf>
        exit(0);
 16f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 176:	e8 f7 03 00 00       	call   572 <exit>
 17b:	83 c4 10             	add    $0x10,%esp
 17e:	eb ab                	jmp    12b <exitWait+0xab>

00000180 <waitPid>:

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// use this part to test wait(int pid, int* status, int options)

int waitPid(void)
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	56                   	push   %esi
 184:	53                   	push   %ebx
  int pid_a[5]={0, 0, 0, 0, 0};
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

  for (i = 0; i <5; i++) {
 185:	31 db                	xor    %ebx,%ebx

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// use this part to test wait(int pid, int* status, int options)

int waitPid(void)
{
 187:	83 ec 28             	sub    $0x28,%esp
	
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 18a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 191:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");
 198:	68 c0 0a 00 00       	push   $0xac0
 19d:	6a 01                	push   $0x1
int waitPid(void)
{
	
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 19f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 1a6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 1ad:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");
 1b4:	e8 07 05 00 00       	call   6c0 <printf>
 1b9:	83 c4 10             	add    $0x10,%esp

  for (i = 0; i <5; i++) {
    pid_a[i] = fork();
 1bc:	e8 a9 03 00 00       	call   56a <fork>
	
    if (pid_a[i] == 0) { // only the child executed this code
 1c1:	85 c0                	test   %eax,%eax
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

  for (i = 0; i <5; i++) {
    pid_a[i] = fork();
 1c3:	89 44 9d e4          	mov    %eax,-0x1c(%ebp,%ebx,4)
	
    if (pid_a[i] == 0) { // only the child executed this code
 1c7:	0f 84 33 01 00 00    	je     300 <waitPid+0x180>
  int pid_a[5]={0, 0, 0, 0, 0};
  // use this part to test wait(int pid, int* status, int options)

  printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

  for (i = 0; i <5; i++) {
 1cd:	83 c3 01             	add    $0x1,%ebx
 1d0:	83 fb 05             	cmp    $0x5,%ebx
 1d3:	75 e7                	jne    1bc <waitPid+0x3c>
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
      exit(0);
    }
  }
       
  sleep(5);
 1d5:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
  ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1d8:	8d 5d e0             	lea    -0x20(%ebp),%ebx
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
      exit(0);
    }
  }
       
  sleep(5);
 1db:	6a 05                	push   $0x5
 1dd:	e8 20 04 00 00       	call   602 <sleep>
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
 1e2:	8b 75 f0             	mov    -0x10(%ebp),%esi
 1e5:	83 c4 0c             	add    $0xc,%esp
 1e8:	56                   	push   %esi
 1e9:	68 3c 0b 00 00       	push   $0xb3c
 1ee:	6a 01                	push   $0x1
 1f0:	e8 cb 04 00 00       	call   6c0 <printf>
  ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1f5:	83 c4 0c             	add    $0xc,%esp
 1f8:	6a 00                	push   $0x0
 1fa:	53                   	push   %ebx
 1fb:	56                   	push   %esi
 1fc:	e8 11 04 00 00       	call   612 <waitpid>
  
  printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 201:	ff 75 e0             	pushl  -0x20(%ebp)
 204:	50                   	push   %eax
 205:	68 78 0b 00 00       	push   $0xb78
 20a:	6a 01                	push   $0x1
 20c:	e8 af 04 00 00       	call   6c0 <printf>
  
  sleep(5);
 211:	83 c4 14             	add    $0x14,%esp
 214:	6a 05                	push   $0x5
 216:	e8 e7 03 00 00       	call   602 <sleep>
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[1]);
 21b:	8b 75 e8             	mov    -0x18(%ebp),%esi
 21e:	83 c4 0c             	add    $0xc,%esp
 221:	56                   	push   %esi
 222:	68 3c 0b 00 00       	push   $0xb3c
 227:	6a 01                	push   $0x1
 229:	e8 92 04 00 00       	call   6c0 <printf>
  ret_pid = waitpid(pid_a[1], &exit_status, 0);
 22e:	83 c4 0c             	add    $0xc,%esp
 231:	6a 00                	push   $0x0
 233:	53                   	push   %ebx
 234:	56                   	push   %esi
 235:	e8 d8 03 00 00       	call   612 <waitpid>
  printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 23a:	ff 75 e0             	pushl  -0x20(%ebp)
 23d:	50                   	push   %eax
 23e:	68 78 0b 00 00       	push   $0xb78
 243:	6a 01                	push   $0x1
 245:	e8 76 04 00 00       	call   6c0 <printf>
  sleep(5);
 24a:	83 c4 14             	add    $0x14,%esp
 24d:	6a 05                	push   $0x5
 24f:	e8 ae 03 00 00       	call   602 <sleep>
  
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[2]);
 254:	8b 75 ec             	mov    -0x14(%ebp),%esi
 257:	83 c4 0c             	add    $0xc,%esp
 25a:	56                   	push   %esi
 25b:	68 3c 0b 00 00       	push   $0xb3c
 260:	6a 01                	push   $0x1
 262:	e8 59 04 00 00       	call   6c0 <printf>
  ret_pid = waitpid(pid_a[2], &exit_status, 0);
 267:	83 c4 0c             	add    $0xc,%esp
 26a:	6a 00                	push   $0x0
 26c:	53                   	push   %ebx
 26d:	56                   	push   %esi
 26e:	e8 9f 03 00 00       	call   612 <waitpid>
  
  printf(1, "\n This is the parent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 273:	ff 75 e0             	pushl  -0x20(%ebp)
 276:	50                   	push   %eax
 277:	68 b4 0b 00 00       	push   $0xbb4
 27c:	6a 01                	push   $0x1
 27e:	e8 3d 04 00 00       	call   6c0 <printf>
  sleep(5);
 283:	83 c4 14             	add    $0x14,%esp
 286:	6a 05                	push   $0x5
 288:	e8 75 03 00 00       	call   602 <sleep>
      
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[0]);
 28d:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 290:	83 c4 0c             	add    $0xc,%esp
 293:	56                   	push   %esi
 294:	68 3c 0b 00 00       	push   $0xb3c
 299:	6a 01                	push   $0x1
 29b:	e8 20 04 00 00       	call   6c0 <printf>
  ret_pid = waitpid(pid_a[0], &exit_status, 0);
 2a0:	83 c4 0c             	add    $0xc,%esp
 2a3:	6a 00                	push   $0x0
 2a5:	53                   	push   %ebx
 2a6:	56                   	push   %esi
 2a7:	e8 66 03 00 00       	call   612 <waitpid>
  printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 2ac:	ff 75 e0             	pushl  -0x20(%ebp)
 2af:	50                   	push   %eax
 2b0:	68 78 0b 00 00       	push   $0xb78
 2b5:	6a 01                	push   $0x1
 2b7:	e8 04 04 00 00       	call   6c0 <printf>
  sleep(5);
 2bc:	83 c4 14             	add    $0x14,%esp
 2bf:	6a 05                	push   $0x5
 2c1:	e8 3c 03 00 00       	call   602 <sleep>
      
  printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[4]);
 2c6:	8b 75 f4             	mov    -0xc(%ebp),%esi
 2c9:	83 c4 0c             	add    $0xc,%esp
 2cc:	56                   	push   %esi
 2cd:	68 3c 0b 00 00       	push   $0xb3c
 2d2:	6a 01                	push   $0x1
 2d4:	e8 e7 03 00 00       	call   6c0 <printf>
  ret_pid = waitpid(pid_a[4], &exit_status, 0);
 2d9:	83 c4 0c             	add    $0xc,%esp
 2dc:	6a 00                	push   $0x0
 2de:	53                   	push   %ebx
 2df:	56                   	push   %esi
 2e0:	e8 2d 03 00 00       	call   612 <waitpid>
  printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 2e5:	ff 75 e0             	pushl  -0x20(%ebp)
 2e8:	50                   	push   %eax
 2e9:	68 78 0b 00 00       	push   $0xb78
 2ee:	6a 01                	push   $0x1
 2f0:	e8 cb 03 00 00       	call   6c0 <printf>
      
  return 0;
}
 2f5:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2f8:	31 c0                	xor    %eax,%eax
 2fa:	5b                   	pop    %ebx
 2fb:	5e                   	pop    %esi
 2fc:	5d                   	pop    %ebp
 2fd:	c3                   	ret    
 2fe:	66 90                	xchg   %ax,%ax
    pid_a[i] = fork();
	
    if (pid_a[i] == 0) { // only the child executed this code
     
      
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
 300:	e8 ed 02 00 00       	call   5f2 <getpid>
 305:	6a 00                	push   $0x0
 307:	50                   	push   %eax
 308:	68 00 0b 00 00       	push   $0xb00
 30d:	6a 01                	push   $0x1
 30f:	e8 ac 03 00 00       	call   6c0 <printf>
      exit(0);
 314:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 31b:	e8 52 02 00 00       	call   572 <exit>
 320:	83 c4 10             	add    $0x10,%esp
 323:	e9 a5 fe ff ff       	jmp    1cd <waitPid+0x4d>
 328:	66 90                	xchg   %ax,%ax
 32a:	66 90                	xchg   %ax,%ax
 32c:	66 90                	xchg   %ax,%ax
 32e:	66 90                	xchg   %ax,%ax

00000330 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	53                   	push   %ebx
 334:	8b 45 08             	mov    0x8(%ebp),%eax
 337:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 33a:	89 c2                	mov    %eax,%edx
 33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 340:	83 c1 01             	add    $0x1,%ecx
 343:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 347:	83 c2 01             	add    $0x1,%edx
 34a:	84 db                	test   %bl,%bl
 34c:	88 5a ff             	mov    %bl,-0x1(%edx)
 34f:	75 ef                	jne    340 <strcpy+0x10>
    ;
  return os;
}
 351:	5b                   	pop    %ebx
 352:	5d                   	pop    %ebp
 353:	c3                   	ret    
 354:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 35a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000360 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	56                   	push   %esi
 364:	53                   	push   %ebx
 365:	8b 55 08             	mov    0x8(%ebp),%edx
 368:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 36b:	0f b6 02             	movzbl (%edx),%eax
 36e:	0f b6 19             	movzbl (%ecx),%ebx
 371:	84 c0                	test   %al,%al
 373:	75 1e                	jne    393 <strcmp+0x33>
 375:	eb 29                	jmp    3a0 <strcmp+0x40>
 377:	89 f6                	mov    %esi,%esi
 379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 380:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 383:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 386:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 389:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 38d:	84 c0                	test   %al,%al
 38f:	74 0f                	je     3a0 <strcmp+0x40>
 391:	89 f1                	mov    %esi,%ecx
 393:	38 d8                	cmp    %bl,%al
 395:	74 e9                	je     380 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 397:	29 d8                	sub    %ebx,%eax
}
 399:	5b                   	pop    %ebx
 39a:	5e                   	pop    %esi
 39b:	5d                   	pop    %ebp
 39c:	c3                   	ret    
 39d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 3a0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 3a2:	29 d8                	sub    %ebx,%eax
}
 3a4:	5b                   	pop    %ebx
 3a5:	5e                   	pop    %esi
 3a6:	5d                   	pop    %ebp
 3a7:	c3                   	ret    
 3a8:	90                   	nop
 3a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003b0 <strlen>:

uint
strlen(char *s)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 3b6:	80 39 00             	cmpb   $0x0,(%ecx)
 3b9:	74 12                	je     3cd <strlen+0x1d>
 3bb:	31 d2                	xor    %edx,%edx
 3bd:	8d 76 00             	lea    0x0(%esi),%esi
 3c0:	83 c2 01             	add    $0x1,%edx
 3c3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 3c7:	89 d0                	mov    %edx,%eax
 3c9:	75 f5                	jne    3c0 <strlen+0x10>
    ;
  return n;
}
 3cb:	5d                   	pop    %ebp
 3cc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 3cd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 3cf:	5d                   	pop    %ebp
 3d0:	c3                   	ret    
 3d1:	eb 0d                	jmp    3e0 <memset>
 3d3:	90                   	nop
 3d4:	90                   	nop
 3d5:	90                   	nop
 3d6:	90                   	nop
 3d7:	90                   	nop
 3d8:	90                   	nop
 3d9:	90                   	nop
 3da:	90                   	nop
 3db:	90                   	nop
 3dc:	90                   	nop
 3dd:	90                   	nop
 3de:	90                   	nop
 3df:	90                   	nop

000003e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ed:	89 d7                	mov    %edx,%edi
 3ef:	fc                   	cld    
 3f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3f2:	89 d0                	mov    %edx,%eax
 3f4:	5f                   	pop    %edi
 3f5:	5d                   	pop    %ebp
 3f6:	c3                   	ret    
 3f7:	89 f6                	mov    %esi,%esi
 3f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000400 <strchr>:

char*
strchr(const char *s, char c)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	53                   	push   %ebx
 404:	8b 45 08             	mov    0x8(%ebp),%eax
 407:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 40a:	0f b6 10             	movzbl (%eax),%edx
 40d:	84 d2                	test   %dl,%dl
 40f:	74 1d                	je     42e <strchr+0x2e>
    if(*s == c)
 411:	38 d3                	cmp    %dl,%bl
 413:	89 d9                	mov    %ebx,%ecx
 415:	75 0d                	jne    424 <strchr+0x24>
 417:	eb 17                	jmp    430 <strchr+0x30>
 419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 420:	38 ca                	cmp    %cl,%dl
 422:	74 0c                	je     430 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 424:	83 c0 01             	add    $0x1,%eax
 427:	0f b6 10             	movzbl (%eax),%edx
 42a:	84 d2                	test   %dl,%dl
 42c:	75 f2                	jne    420 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 42e:	31 c0                	xor    %eax,%eax
}
 430:	5b                   	pop    %ebx
 431:	5d                   	pop    %ebp
 432:	c3                   	ret    
 433:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000440 <gets>:

char*
gets(char *buf, int max)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	57                   	push   %edi
 444:	56                   	push   %esi
 445:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 446:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 448:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 44b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 44e:	eb 29                	jmp    479 <gets+0x39>
    cc = read(0, &c, 1);
 450:	83 ec 04             	sub    $0x4,%esp
 453:	6a 01                	push   $0x1
 455:	57                   	push   %edi
 456:	6a 00                	push   $0x0
 458:	e8 2d 01 00 00       	call   58a <read>
    if(cc < 1)
 45d:	83 c4 10             	add    $0x10,%esp
 460:	85 c0                	test   %eax,%eax
 462:	7e 1d                	jle    481 <gets+0x41>
      break;
    buf[i++] = c;
 464:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 468:	8b 55 08             	mov    0x8(%ebp),%edx
 46b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 46d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 46f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 473:	74 1b                	je     490 <gets+0x50>
 475:	3c 0d                	cmp    $0xd,%al
 477:	74 17                	je     490 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 479:	8d 5e 01             	lea    0x1(%esi),%ebx
 47c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 47f:	7c cf                	jl     450 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 481:	8b 45 08             	mov    0x8(%ebp),%eax
 484:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 488:	8d 65 f4             	lea    -0xc(%ebp),%esp
 48b:	5b                   	pop    %ebx
 48c:	5e                   	pop    %esi
 48d:	5f                   	pop    %edi
 48e:	5d                   	pop    %ebp
 48f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 490:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 493:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 495:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 499:	8d 65 f4             	lea    -0xc(%ebp),%esp
 49c:	5b                   	pop    %ebx
 49d:	5e                   	pop    %esi
 49e:	5f                   	pop    %edi
 49f:	5d                   	pop    %ebp
 4a0:	c3                   	ret    
 4a1:	eb 0d                	jmp    4b0 <stat>
 4a3:	90                   	nop
 4a4:	90                   	nop
 4a5:	90                   	nop
 4a6:	90                   	nop
 4a7:	90                   	nop
 4a8:	90                   	nop
 4a9:	90                   	nop
 4aa:	90                   	nop
 4ab:	90                   	nop
 4ac:	90                   	nop
 4ad:	90                   	nop
 4ae:	90                   	nop
 4af:	90                   	nop

000004b0 <stat>:

int
stat(char *n, struct stat *st)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	56                   	push   %esi
 4b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4b5:	83 ec 08             	sub    $0x8,%esp
 4b8:	6a 00                	push   $0x0
 4ba:	ff 75 08             	pushl  0x8(%ebp)
 4bd:	e8 f0 00 00 00       	call   5b2 <open>
  if(fd < 0)
 4c2:	83 c4 10             	add    $0x10,%esp
 4c5:	85 c0                	test   %eax,%eax
 4c7:	78 27                	js     4f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4c9:	83 ec 08             	sub    $0x8,%esp
 4cc:	ff 75 0c             	pushl  0xc(%ebp)
 4cf:	89 c3                	mov    %eax,%ebx
 4d1:	50                   	push   %eax
 4d2:	e8 f3 00 00 00       	call   5ca <fstat>
 4d7:	89 c6                	mov    %eax,%esi
  close(fd);
 4d9:	89 1c 24             	mov    %ebx,(%esp)
 4dc:	e8 b9 00 00 00       	call   59a <close>
  return r;
 4e1:	83 c4 10             	add    $0x10,%esp
 4e4:	89 f0                	mov    %esi,%eax
}
 4e6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4e9:	5b                   	pop    %ebx
 4ea:	5e                   	pop    %esi
 4eb:	5d                   	pop    %ebp
 4ec:	c3                   	ret    
 4ed:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 4f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 4f5:	eb ef                	jmp    4e6 <stat+0x36>
 4f7:	89 f6                	mov    %esi,%esi
 4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000500 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	53                   	push   %ebx
 504:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 507:	0f be 11             	movsbl (%ecx),%edx
 50a:	8d 42 d0             	lea    -0x30(%edx),%eax
 50d:	3c 09                	cmp    $0x9,%al
 50f:	b8 00 00 00 00       	mov    $0x0,%eax
 514:	77 1f                	ja     535 <atoi+0x35>
 516:	8d 76 00             	lea    0x0(%esi),%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 520:	8d 04 80             	lea    (%eax,%eax,4),%eax
 523:	83 c1 01             	add    $0x1,%ecx
 526:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 52a:	0f be 11             	movsbl (%ecx),%edx
 52d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 530:	80 fb 09             	cmp    $0x9,%bl
 533:	76 eb                	jbe    520 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 535:	5b                   	pop    %ebx
 536:	5d                   	pop    %ebp
 537:	c3                   	ret    
 538:	90                   	nop
 539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000540 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	56                   	push   %esi
 544:	53                   	push   %ebx
 545:	8b 5d 10             	mov    0x10(%ebp),%ebx
 548:	8b 45 08             	mov    0x8(%ebp),%eax
 54b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 54e:	85 db                	test   %ebx,%ebx
 550:	7e 14                	jle    566 <memmove+0x26>
 552:	31 d2                	xor    %edx,%edx
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 558:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 55c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 55f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 562:	39 da                	cmp    %ebx,%edx
 564:	75 f2                	jne    558 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 566:	5b                   	pop    %ebx
 567:	5e                   	pop    %esi
 568:	5d                   	pop    %ebp
 569:	c3                   	ret    

0000056a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 56a:	b8 01 00 00 00       	mov    $0x1,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <exit>:
SYSCALL(exit)
 572:	b8 02 00 00 00       	mov    $0x2,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <wait>:
SYSCALL(wait)
 57a:	b8 03 00 00 00       	mov    $0x3,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <pipe>:
SYSCALL(pipe)
 582:	b8 04 00 00 00       	mov    $0x4,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <read>:
SYSCALL(read)
 58a:	b8 05 00 00 00       	mov    $0x5,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <write>:
SYSCALL(write)
 592:	b8 10 00 00 00       	mov    $0x10,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <close>:
SYSCALL(close)
 59a:	b8 15 00 00 00       	mov    $0x15,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <kill>:
SYSCALL(kill)
 5a2:	b8 06 00 00 00       	mov    $0x6,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <exec>:
SYSCALL(exec)
 5aa:	b8 07 00 00 00       	mov    $0x7,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <open>:
SYSCALL(open)
 5b2:	b8 0f 00 00 00       	mov    $0xf,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <mknod>:
SYSCALL(mknod)
 5ba:	b8 11 00 00 00       	mov    $0x11,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <unlink>:
SYSCALL(unlink)
 5c2:	b8 12 00 00 00       	mov    $0x12,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <fstat>:
SYSCALL(fstat)
 5ca:	b8 08 00 00 00       	mov    $0x8,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <link>:
SYSCALL(link)
 5d2:	b8 13 00 00 00       	mov    $0x13,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <mkdir>:
SYSCALL(mkdir)
 5da:	b8 14 00 00 00       	mov    $0x14,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <chdir>:
SYSCALL(chdir)
 5e2:	b8 09 00 00 00       	mov    $0x9,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <dup>:
SYSCALL(dup)
 5ea:	b8 0a 00 00 00       	mov    $0xa,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <getpid>:
SYSCALL(getpid)
 5f2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <sbrk>:
SYSCALL(sbrk)
 5fa:	b8 0c 00 00 00       	mov    $0xc,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <sleep>:
SYSCALL(sleep)
 602:	b8 0d 00 00 00       	mov    $0xd,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <uptime>:
SYSCALL(uptime)
 60a:	b8 0e 00 00 00       	mov    $0xe,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <waitpid>:
SYSCALL(waitpid)
 612:	b8 16 00 00 00       	mov    $0x16,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    
 61a:	66 90                	xchg   %ax,%ax
 61c:	66 90                	xchg   %ax,%ax
 61e:	66 90                	xchg   %ax,%ax

00000620 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	57                   	push   %edi
 624:	56                   	push   %esi
 625:	53                   	push   %ebx
 626:	89 c6                	mov    %eax,%esi
 628:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 62b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 62e:	85 db                	test   %ebx,%ebx
 630:	74 7e                	je     6b0 <printint+0x90>
 632:	89 d0                	mov    %edx,%eax
 634:	c1 e8 1f             	shr    $0x1f,%eax
 637:	84 c0                	test   %al,%al
 639:	74 75                	je     6b0 <printint+0x90>
    neg = 1;
    x = -xx;
 63b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 63d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 644:	f7 d8                	neg    %eax
 646:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 649:	31 ff                	xor    %edi,%edi
 64b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 64e:	89 ce                	mov    %ecx,%esi
 650:	eb 08                	jmp    65a <printint+0x3a>
 652:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 658:	89 cf                	mov    %ecx,%edi
 65a:	31 d2                	xor    %edx,%edx
 65c:	8d 4f 01             	lea    0x1(%edi),%ecx
 65f:	f7 f6                	div    %esi
 661:	0f b6 92 b0 0c 00 00 	movzbl 0xcb0(%edx),%edx
  }while((x /= base) != 0);
 668:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 66a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 66d:	75 e9                	jne    658 <printint+0x38>
  if(neg)
 66f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 672:	8b 75 c0             	mov    -0x40(%ebp),%esi
 675:	85 c0                	test   %eax,%eax
 677:	74 08                	je     681 <printint+0x61>
    buf[i++] = '-';
 679:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 67e:	8d 4f 02             	lea    0x2(%edi),%ecx
 681:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 685:	8d 76 00             	lea    0x0(%esi),%esi
 688:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 68b:	83 ec 04             	sub    $0x4,%esp
 68e:	83 ef 01             	sub    $0x1,%edi
 691:	6a 01                	push   $0x1
 693:	53                   	push   %ebx
 694:	56                   	push   %esi
 695:	88 45 d7             	mov    %al,-0x29(%ebp)
 698:	e8 f5 fe ff ff       	call   592 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 69d:	83 c4 10             	add    $0x10,%esp
 6a0:	39 df                	cmp    %ebx,%edi
 6a2:	75 e4                	jne    688 <printint+0x68>
    putc(fd, buf[i]);
}
 6a4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6a7:	5b                   	pop    %ebx
 6a8:	5e                   	pop    %esi
 6a9:	5f                   	pop    %edi
 6aa:	5d                   	pop    %ebp
 6ab:	c3                   	ret    
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 6b0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 6b2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6b9:	eb 8b                	jmp    646 <printint+0x26>
 6bb:	90                   	nop
 6bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006c0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6c6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6c9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6cc:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6cf:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6d2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6d5:	0f b6 1e             	movzbl (%esi),%ebx
 6d8:	83 c6 01             	add    $0x1,%esi
 6db:	84 db                	test   %bl,%bl
 6dd:	0f 84 b0 00 00 00    	je     793 <printf+0xd3>
 6e3:	31 d2                	xor    %edx,%edx
 6e5:	eb 39                	jmp    720 <printf+0x60>
 6e7:	89 f6                	mov    %esi,%esi
 6e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6f0:	83 f8 25             	cmp    $0x25,%eax
 6f3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 6f6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6fb:	74 18                	je     715 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6fd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 700:	83 ec 04             	sub    $0x4,%esp
 703:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 706:	6a 01                	push   $0x1
 708:	50                   	push   %eax
 709:	57                   	push   %edi
 70a:	e8 83 fe ff ff       	call   592 <write>
 70f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 712:	83 c4 10             	add    $0x10,%esp
 715:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 718:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 71c:	84 db                	test   %bl,%bl
 71e:	74 73                	je     793 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 720:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 722:	0f be cb             	movsbl %bl,%ecx
 725:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 728:	74 c6                	je     6f0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 72a:	83 fa 25             	cmp    $0x25,%edx
 72d:	75 e6                	jne    715 <printf+0x55>
      if(c == 'd'){
 72f:	83 f8 64             	cmp    $0x64,%eax
 732:	0f 84 f8 00 00 00    	je     830 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 738:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 73e:	83 f9 70             	cmp    $0x70,%ecx
 741:	74 5d                	je     7a0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 743:	83 f8 73             	cmp    $0x73,%eax
 746:	0f 84 84 00 00 00    	je     7d0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 74c:	83 f8 63             	cmp    $0x63,%eax
 74f:	0f 84 ea 00 00 00    	je     83f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 755:	83 f8 25             	cmp    $0x25,%eax
 758:	0f 84 c2 00 00 00    	je     820 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 75e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 761:	83 ec 04             	sub    $0x4,%esp
 764:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 768:	6a 01                	push   $0x1
 76a:	50                   	push   %eax
 76b:	57                   	push   %edi
 76c:	e8 21 fe ff ff       	call   592 <write>
 771:	83 c4 0c             	add    $0xc,%esp
 774:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 777:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 77a:	6a 01                	push   $0x1
 77c:	50                   	push   %eax
 77d:	57                   	push   %edi
 77e:	83 c6 01             	add    $0x1,%esi
 781:	e8 0c fe ff ff       	call   592 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 786:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 78a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 78d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 78f:	84 db                	test   %bl,%bl
 791:	75 8d                	jne    720 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 793:	8d 65 f4             	lea    -0xc(%ebp),%esp
 796:	5b                   	pop    %ebx
 797:	5e                   	pop    %esi
 798:	5f                   	pop    %edi
 799:	5d                   	pop    %ebp
 79a:	c3                   	ret    
 79b:	90                   	nop
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 7a0:	83 ec 0c             	sub    $0xc,%esp
 7a3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7a8:	6a 00                	push   $0x0
 7aa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 7ad:	89 f8                	mov    %edi,%eax
 7af:	8b 13                	mov    (%ebx),%edx
 7b1:	e8 6a fe ff ff       	call   620 <printint>
        ap++;
 7b6:	89 d8                	mov    %ebx,%eax
 7b8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7bb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 7bd:	83 c0 04             	add    $0x4,%eax
 7c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7c3:	e9 4d ff ff ff       	jmp    715 <printf+0x55>
 7c8:	90                   	nop
 7c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 7d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7d3:	8b 18                	mov    (%eax),%ebx
        ap++;
 7d5:	83 c0 04             	add    $0x4,%eax
 7d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 7db:	b8 a7 0c 00 00       	mov    $0xca7,%eax
 7e0:	85 db                	test   %ebx,%ebx
 7e2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 7e5:	0f b6 03             	movzbl (%ebx),%eax
 7e8:	84 c0                	test   %al,%al
 7ea:	74 23                	je     80f <printf+0x14f>
 7ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7f0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7f3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 7f6:	83 ec 04             	sub    $0x4,%esp
 7f9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 7fb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7fe:	50                   	push   %eax
 7ff:	57                   	push   %edi
 800:	e8 8d fd ff ff       	call   592 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 805:	0f b6 03             	movzbl (%ebx),%eax
 808:	83 c4 10             	add    $0x10,%esp
 80b:	84 c0                	test   %al,%al
 80d:	75 e1                	jne    7f0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 80f:	31 d2                	xor    %edx,%edx
 811:	e9 ff fe ff ff       	jmp    715 <printf+0x55>
 816:	8d 76 00             	lea    0x0(%esi),%esi
 819:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 820:	83 ec 04             	sub    $0x4,%esp
 823:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 826:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 829:	6a 01                	push   $0x1
 82b:	e9 4c ff ff ff       	jmp    77c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 830:	83 ec 0c             	sub    $0xc,%esp
 833:	b9 0a 00 00 00       	mov    $0xa,%ecx
 838:	6a 01                	push   $0x1
 83a:	e9 6b ff ff ff       	jmp    7aa <printf+0xea>
 83f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 842:	83 ec 04             	sub    $0x4,%esp
 845:	8b 03                	mov    (%ebx),%eax
 847:	6a 01                	push   $0x1
 849:	88 45 e4             	mov    %al,-0x1c(%ebp)
 84c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 84f:	50                   	push   %eax
 850:	57                   	push   %edi
 851:	e8 3c fd ff ff       	call   592 <write>
 856:	e9 5b ff ff ff       	jmp    7b6 <printf+0xf6>
 85b:	66 90                	xchg   %ax,%ax
 85d:	66 90                	xchg   %ax,%ax
 85f:	90                   	nop

00000860 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 860:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 861:	a1 b4 0f 00 00       	mov    0xfb4,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 866:	89 e5                	mov    %esp,%ebp
 868:	57                   	push   %edi
 869:	56                   	push   %esi
 86a:	53                   	push   %ebx
 86b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 86e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 870:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 873:	39 c8                	cmp    %ecx,%eax
 875:	73 19                	jae    890 <free+0x30>
 877:	89 f6                	mov    %esi,%esi
 879:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 880:	39 d1                	cmp    %edx,%ecx
 882:	72 1c                	jb     8a0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 884:	39 d0                	cmp    %edx,%eax
 886:	73 18                	jae    8a0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 888:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 88a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 88c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 88e:	72 f0                	jb     880 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 890:	39 d0                	cmp    %edx,%eax
 892:	72 f4                	jb     888 <free+0x28>
 894:	39 d1                	cmp    %edx,%ecx
 896:	73 f0                	jae    888 <free+0x28>
 898:	90                   	nop
 899:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 8a0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8a3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8a6:	39 d7                	cmp    %edx,%edi
 8a8:	74 19                	je     8c3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 8aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8ad:	8b 50 04             	mov    0x4(%eax),%edx
 8b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8b3:	39 f1                	cmp    %esi,%ecx
 8b5:	74 23                	je     8da <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 8b7:	89 08                	mov    %ecx,(%eax)
  freep = p;
 8b9:	a3 b4 0f 00 00       	mov    %eax,0xfb4
}
 8be:	5b                   	pop    %ebx
 8bf:	5e                   	pop    %esi
 8c0:	5f                   	pop    %edi
 8c1:	5d                   	pop    %ebp
 8c2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 8c3:	03 72 04             	add    0x4(%edx),%esi
 8c6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8c9:	8b 10                	mov    (%eax),%edx
 8cb:	8b 12                	mov    (%edx),%edx
 8cd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8d0:	8b 50 04             	mov    0x4(%eax),%edx
 8d3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8d6:	39 f1                	cmp    %esi,%ecx
 8d8:	75 dd                	jne    8b7 <free+0x57>
    p->s.size += bp->s.size;
 8da:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 8dd:	a3 b4 0f 00 00       	mov    %eax,0xfb4
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 8e2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8e5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8e8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8ea:	5b                   	pop    %ebx
 8eb:	5e                   	pop    %esi
 8ec:	5f                   	pop    %edi
 8ed:	5d                   	pop    %ebp
 8ee:	c3                   	ret    
 8ef:	90                   	nop

000008f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8f0:	55                   	push   %ebp
 8f1:	89 e5                	mov    %esp,%ebp
 8f3:	57                   	push   %edi
 8f4:	56                   	push   %esi
 8f5:	53                   	push   %ebx
 8f6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8fc:	8b 15 b4 0f 00 00    	mov    0xfb4,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 902:	8d 78 07             	lea    0x7(%eax),%edi
 905:	c1 ef 03             	shr    $0x3,%edi
 908:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 90b:	85 d2                	test   %edx,%edx
 90d:	0f 84 a3 00 00 00    	je     9b6 <malloc+0xc6>
 913:	8b 02                	mov    (%edx),%eax
 915:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 918:	39 cf                	cmp    %ecx,%edi
 91a:	76 74                	jbe    990 <malloc+0xa0>
 91c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 922:	be 00 10 00 00       	mov    $0x1000,%esi
 927:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 92e:	0f 43 f7             	cmovae %edi,%esi
 931:	ba 00 80 00 00       	mov    $0x8000,%edx
 936:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 93c:	0f 46 da             	cmovbe %edx,%ebx
 93f:	eb 10                	jmp    951 <malloc+0x61>
 941:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 948:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 94a:	8b 48 04             	mov    0x4(%eax),%ecx
 94d:	39 cf                	cmp    %ecx,%edi
 94f:	76 3f                	jbe    990 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 951:	39 05 b4 0f 00 00    	cmp    %eax,0xfb4
 957:	89 c2                	mov    %eax,%edx
 959:	75 ed                	jne    948 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 95b:	83 ec 0c             	sub    $0xc,%esp
 95e:	53                   	push   %ebx
 95f:	e8 96 fc ff ff       	call   5fa <sbrk>
  if(p == (char*)-1)
 964:	83 c4 10             	add    $0x10,%esp
 967:	83 f8 ff             	cmp    $0xffffffff,%eax
 96a:	74 1c                	je     988 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 96c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 96f:	83 ec 0c             	sub    $0xc,%esp
 972:	83 c0 08             	add    $0x8,%eax
 975:	50                   	push   %eax
 976:	e8 e5 fe ff ff       	call   860 <free>
  return freep;
 97b:	8b 15 b4 0f 00 00    	mov    0xfb4,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 981:	83 c4 10             	add    $0x10,%esp
 984:	85 d2                	test   %edx,%edx
 986:	75 c0                	jne    948 <malloc+0x58>
        return 0;
 988:	31 c0                	xor    %eax,%eax
 98a:	eb 1c                	jmp    9a8 <malloc+0xb8>
 98c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 990:	39 cf                	cmp    %ecx,%edi
 992:	74 1c                	je     9b0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 994:	29 f9                	sub    %edi,%ecx
 996:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 999:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 99c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 99f:	89 15 b4 0f 00 00    	mov    %edx,0xfb4
      return (void*)(p + 1);
 9a5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 9a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9ab:	5b                   	pop    %ebx
 9ac:	5e                   	pop    %esi
 9ad:	5f                   	pop    %edi
 9ae:	5d                   	pop    %ebp
 9af:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 9b0:	8b 08                	mov    (%eax),%ecx
 9b2:	89 0a                	mov    %ecx,(%edx)
 9b4:	eb e9                	jmp    99f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 9b6:	c7 05 b4 0f 00 00 b8 	movl   $0xfb8,0xfb4
 9bd:	0f 00 00 
 9c0:	c7 05 b8 0f 00 00 b8 	movl   $0xfb8,0xfb8
 9c7:	0f 00 00 
    base.s.size = 0;
 9ca:	b8 b8 0f 00 00       	mov    $0xfb8,%eax
 9cf:	c7 05 bc 0f 00 00 00 	movl   $0x0,0xfbc
 9d6:	00 00 00 
 9d9:	e9 3e ff ff ff       	jmp    91c <malloc+0x2c>
