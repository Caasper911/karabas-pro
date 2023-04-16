# описание входных клоков
create_clock -period 50MHz -name {CLK_50MHZ} [get_ports {CLK_50MHZ}]
create_clock -period 1MHz -name {AVR_SCK} [get_ports {AVR_SCK}]

# pll-ные клоки сгенерятся сами
derive_pll_clocks

# clock uncertainty
derive_clock_uncertainty

# клоки, порожденные дизайном

# описание отношений между клоками
set_clock_groups -exclusive -group {CLK_50MHZ} -group {AVR_SCK}

# описание путей, которые не нужно анализировать
set_false_path -from * -to [get_ports {VGA_*}]
set_false_path -from * -to [get_ports {SND_*}]
set_false_path -from [get_registers {osd:U8|line2[*]}] -to *

