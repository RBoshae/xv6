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

  exit(1);
  printf(1, "Should not be able to see this. Error with exit call.");
  return 0;
}
