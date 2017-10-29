#include "param.h"
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fs.h"
#include "fcntl.h"
#include "syscall.h"
#include "traps.h"
//#include "memlayout.h"

int main () {
  int child_status 
  printf(1, "Child Status was: %d" child_status);
  wait(child_status);
  printf(1, "Child Status is now: %d" child_status);
  return 0;
}
