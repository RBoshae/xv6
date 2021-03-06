#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  int exit_status;

  argint(0, &exit_status);
  exit(exit_status);          // Modified Lab 1 Part 1a -RB
  
  return 0;                   // return 0 should not be reached
}

int
sys_wait(void)
{
  int *child_exit_status;                     // Added int status declaration for Lab 1 Part 1b. -RB
  // return wait(&status);                   // Removed Lab 1 Part 1b. -RB
  argptr(0, (char**)&child_exit_status, sizeof(child_exit_status)); // Added Lab 1 Part 1b.
  
  return wait(child_exit_status);
}

// Lab 1 Part 1c // Added waitpid. -RB
int 
sys_waitpid(void)
{ 
  /*
  QUICK REGARDMING ARGPTR AND ARGINT INFO:
  If a system call has more than one parameters with different types, such 
  as 'int waitpid(int pid, int *status, int options)', inside 'sys_waitpid' 
  function in 'sys_proc.c', we need to use 'argint(0,...)' to get 'pid', 
  'argptr(1,...)' to get the pointer 'status', 'argint(2,...)' to get 'option'. 
  It means that, no matter what type of parameters are, use 0 to get the first 
  parameter, use 1 to get the second parameter, use 2 to get the third parameter 
  etc.You can also use 'cprint' function to test whether the parameter passing 
  is correct.
  */

  int pid;
  int *exit_status;
  int options = 0;
 
  argint(0, &pid); 
  argptr(1, (char**)&exit_status, sizeof(exit_status)); // Added Lab 1 Part 1b.
  
  return waitpid(pid, exit_status, options);
}
// End of Adding waitpid

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}
