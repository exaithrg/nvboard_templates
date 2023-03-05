// #include "verilated.h"
// #include "verilated_vcd_c.h"
// #include "Vmux42.h"
#include <nvboard.h>
#include <Vtop.h>

static TOP_NAME top;
#define dut top

void nvboard_bind_all_pins(Vtop* top);

int main() {
  nvboard_bind_all_pins(&dut);
  nvboard_init();

  while(1) {
    nvboard_update();
    dut.eval();
  }

}

