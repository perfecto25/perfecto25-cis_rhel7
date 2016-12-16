# perfecto25-cis_rhel7
# Reference for this Module:
# CIS_Red_Hat_Enterprise_Linux_7_Benchmark_v1.0.0.pdf

class cis_rhel7 inherits ::cis_rhel7::params {

  ## Rules

  include ::cis_rhel7::rule::prereq
  include ::cis_rhel7::rule::rule_1_1_1
  include ::cis_rhel7::rule::rule_1_1_5
  include ::cis_rhel7::rule::rule_1_1_7
  include ::cis_rhel7::rule::rule_1_1_14
  include ::cis_rhel7::rule::rule_1_1_17
  include ::cis_rhel7::rule::rule_1_1_18
  include ::cis_rhel7::rule::rule_1_2_1
  include ::cis_rhel7::rule::rule_1_2_2
  include ::cis_rhel7::rule::rule_1_2_3
  include ::cis_rhel7::rule::rule_1_2_4
  include ::cis_rhel7::rule::rule_1_2_5
  # include ::cis_rhel7::rule::rule_1_2_6 (large processing time)
  include ::cis_rhel7::rule::rule_1_3_1
  include ::cis_rhel7::rule::rule_1_3_2
  include ::cis_rhel7::rule::rule_1_4_1
  include ::cis_rhel7::rule::rule_1_4_4
  include ::cis_rhel7::rule::rule_1_4_6
  include ::cis_rhel7::rule::rule_1_5_1
  include ::cis_rhel7::rule::rule_1_6_1
  # include ::cis_rhel7::rule::rule_1_7 (manual check)
  include ::cis_rhel7::rule::rule_2_1_1
  include ::cis_rhel7::rule::rule_3_1
  include ::cis_rhel7::rule::rule_3_2
  include ::cis_rhel7::rule::rule_3_3
  include ::cis_rhel7::rule::rule_3_6
  include ::cis_rhel7::rule::rule_3_7
  include ::cis_rhel7::rule::rule_3_8
  include ::cis_rhel7::rule::rule_3_9
  include ::cis_rhel7::rule::rule_3_16
  include ::cis_rhel7::rule::rule_4_1_1
  include ::cis_rhel7::rule::rule_4_2_1
  include ::cis_rhel7::rule::rule_4_4_1
  include ::cis_rhel7::rule::rule_4_5_1
  include ::cis_rhel7::rule::rule_4_5_2
  include ::cis_rhel7::rule::rule_4_5_4
  include ::cis_rhel7::rule::rule_4_6_1
  include ::cis_rhel7::rule::rule_4_7
  include ::cis_rhel7::rule::rule_5_1_1
  include ::cis_rhel7::rule::rule_5_2_1_1
  include ::cis_rhel7::rule::rule_5_2_4
  include ::cis_rhel7::rule::rule_5_3
  include ::cis_rhel7::rule::rule_6_1_1
  include ::cis_rhel7::rule::rule_6_2_1
  include ::cis_rhel7::rule::rule_6_3_1
  include ::cis_rhel7::rule::rule_6_3_2
  include ::cis_rhel7::rule::rule_6_3_3
  include ::cis_rhel7::rule::rule_6_3_4
  # include ::cis_rhel7::rule::rule_6_4 (manual check)
  include ::cis_rhel7::rule::rule_6_5
  include ::cis_rhel7::rule::rule_7_1_1
  include ::cis_rhel7::rule::rule_7_2
  include ::cis_rhel7::rule::rule_7_3
  include ::cis_rhel7::rule::rule_7_4
  include ::cis_rhel7::rule::rule_7_5
  include ::cis_rhel7::rule::rule_8_1
  # include ::cis_rhel7::rule::rule_9_1_1 (manual check)
  include ::cis_rhel7::rule::rule_9_1_2
  include ::cis_rhel7::rule::rule_9_1_10
  include ::cis_rhel7::rule::rule_9_1_11
  include ::cis_rhel7::rule::rule_9_1_12
  include ::cis_rhel7::rule::rule_9_1_13
  include ::cis_rhel7::rule::rule_9_1_14
  include ::cis_rhel7::rule::rule_9_2_1
  include ::cis_rhel7::rule::rule_9_2_2
  include ::cis_rhel7::rule::rule_9_2_5
  # include ::cis_rhel7::rule::rule_9_2_6 (manual check)
  # include ::cis_rhel7::rule::rule_9_2_7 (manual check)
  # include ::cis_rhel7::rule::rule_9_2_8 (manual check)
  # include ::cis_rhel7::rule::rule_9_2_9 (manual check)
  # include ::cis_rhel7::rule::rule_9_2_10 (manual check)
  include ::cis_rhel7::rule::rule_9_2_11
  include ::cis_rhel7::rule::rule_9_2_12
  include ::cis_rhel7::rule::rule_9_2_13
  include ::cis_rhel7::rule::rule_9_2_14
  include ::cis_rhel7::rule::rule_9_2_15
  include ::cis_rhel7::rule::rule_9_2_16
  include ::cis_rhel7::rule::rule_9_2_17
  include ::cis_rhel7::rule::rule_9_2_18
  include ::cis_rhel7::rule::rule_9_2_19
  include ::cis_rhel7::rule::rule_9_2_20

} #EOF
