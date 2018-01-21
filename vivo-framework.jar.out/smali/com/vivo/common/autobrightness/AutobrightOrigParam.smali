.class public Lcom/vivo/common/autobrightness/AutobrightOrigParam;
.super Ljava/lang/Object;
.source "AutobrightOrigParam.java"


# static fields
.field private static final model:Ljava/lang/String;

.field private static final morig_key_value_PD1610:[[I

.field private static final morig_key_value_PD1616:[[I

.field private static final morig_key_value_PD1624:[[I

.field private static final morig_param_PD1610:[[D

.field private static final morig_param_PD1616:[[D

.field private static final morig_param_PD1624:[[D

.field private static final morig_up_down_param_PD1610:[[D

.field private static final morig_up_down_param_PD1616:[[D

.field private static final morig_up_down_param_PD1624:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 10
    const-string v0, "ro.product.model.bbk"

    const-string v1, "unkown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->model:Ljava/lang/String;

    .line 11
    new-array v0, v7, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [D

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [D

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [D

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_param_PD1610:[[D

    .line 18
    new-array v0, v7, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [D

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v3, [D

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v3, [D

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_param_PD1616:[[D

    .line 25
    new-array v0, v7, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_8

    aput-object v1, v0, v4

    new-array v1, v3, [D

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    new-array v1, v3, [D

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [D

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_param_PD1624:[[D

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_key_value_PD1610:[[I

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_key_value_PD1616:[[I

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v7

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_key_value_PD1624:[[I

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    new-array v1, v3, [D

    fill-array-data v1, :array_1c

    aput-object v1, v0, v5

    new-array v1, v3, [D

    fill-array-data v1, :array_1d

    aput-object v1, v0, v3

    new-array v1, v3, [D

    fill-array-data v1, :array_1e

    aput-object v1, v0, v6

    new-array v1, v3, [D

    fill-array-data v1, :array_1f

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [D

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [D

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [D

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_up_down_param_PD1610:[[D

    .line 68
    const/16 v0, 0x9

    new-array v0, v0, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    new-array v1, v3, [D

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    new-array v1, v3, [D

    fill-array-data v1, :array_26

    aput-object v1, v0, v3

    new-array v1, v3, [D

    fill-array-data v1, :array_27

    aput-object v1, v0, v6

    new-array v1, v3, [D

    fill-array-data v1, :array_28

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [D

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [D

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [D

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_up_down_param_PD1616:[[D

    .line 80
    const/16 v0, 0x9

    new-array v0, v0, [[D

    new-array v1, v3, [D

    fill-array-data v1, :array_2d

    aput-object v1, v0, v4

    new-array v1, v3, [D

    fill-array-data v1, :array_2e

    aput-object v1, v0, v5

    new-array v1, v3, [D

    fill-array-data v1, :array_2f

    aput-object v1, v0, v3

    new-array v1, v3, [D

    fill-array-data v1, :array_30

    aput-object v1, v0, v6

    new-array v1, v3, [D

    fill-array-data v1, :array_31

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [D

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [D

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [D

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [D

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_up_down_param_PD1624:[[D

    return-void

    .line 11
    :array_0
    .array-data 8
        0x3ff2b851eb851eb8L    # 1.17
        0x4006666666666666L    # 2.8
    .end array-data

    :array_1
    .array-data 8
        0x3fa6e2eb1c432ca5L    # 0.0447
        0x4042545a1cac0831L    # 36.659
    .end array-data

    :array_2
    .array-data 8
        0x3fb083126e978d50L    # 0.0645
        -0x3ff8000000000000L    # -3.0
    .end array-data

    :array_3
    .array-data 8
        0x3fa70a3d70a3d70aL    # 0.045
        0x4052c00000000000L    # 75.0
    .end array-data

    .line 18
    :array_4
    .array-data 8
        0x3ff199999999999aL    # 1.1
        0x4000000000000000L    # 2.0
    .end array-data

    :array_5
    .array-data 8
        0x3fa50b0f27bb2fecL    # 0.0411
        0x4040e66666666666L    # 33.8
    .end array-data

    :array_6
    .array-data 8
        0x3faeb851eb851eb8L    # 0.06
        -0x3ff0000000000000L    # -4.0
    .end array-data

    :array_7
    .array-data 8
        0x3fa70a3d70a3d70aL    # 0.045
        0x404e5e147ae147aeL    # 60.735
    .end array-data

    .line 25
    :array_8
    .array-data 8
        0x3ff199999999999aL    # 1.1
        0x4000000000000000L    # 2.0
    .end array-data

    :array_9
    .array-data 8
        0x3fa2b020c49ba5e3L    # 0.0365
        0x4040ef3b645a1cacL    # 33.869
    .end array-data

    :array_a
    .array-data 8
        0x3fb0a3d70a3d70a4L    # 0.065
        -0x3fc7ef5c28f5c28fL    # -24.065
    .end array-data

    :array_b
    .array-data 8
        0x3fa70a3d70a3d70aL    # 0.045
        0x40500fae147ae148L    # 64.245
    .end array-data

    .line 32
    :array_c
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1e
        0x26
    .end array-data

    :array_e
    .array-data 4
        0x7d0
        0x7e
    .end array-data

    :array_f
    .array-data 4
        0xfa0
        0xff
    .end array-data

    :array_10
    .array-data 4
        0x2710
        0x20d
    .end array-data

    .line 40
    :array_11
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_12
    .array-data 4
        0x1e
        0x23
    .end array-data

    :array_13
    .array-data 4
        0x7d0
        0x74
    .end array-data

    :array_14
    .array-data 4
        0x10dd
        0xff
    .end array-data

    :array_15
    .array-data 4
        0x2710
        0x203
    .end array-data

    .line 48
    :array_16
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x1e
        0x23
    .end array-data

    :array_18
    .array-data 4
        0x7d0
        0x6a
    .end array-data

    :array_19
    .array-data 4
        0x108f
        0xff
    .end array-data

    :array_1a
    .array-data 4
        0x2710
        0x202
    .end array-data

    .line 56
    :array_1b
    .array-data 8
        0x4000000000000000L    # 2.0
        0x4022000000000000L    # 9.0
    .end array-data

    :array_1c
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4038000000000000L    # 24.0
    .end array-data

    :array_1d
    .array-data 8
        0x3ff4000000000000L    # 1.25
        0x402e000000000000L    # 15.0
    .end array-data

    :array_1e
    .array-data 8
        0x3ff07ae147ae147bL    # 1.03
        0x40404ccccccccccdL    # 32.6
    .end array-data

    :array_1f
    .array-data 8
        0x3fd54fdf3b645a1dL    # 0.333
        -0x400ab851eb851eb8L    # -1.33
    .end array-data

    :array_20
    .array-data 8
        0x3fe0000000000000L    # 0.5
        -0x3fea000000000000L    # -5.5
    .end array-data

    :array_21
    .array-data 8
        0x3feae147ae147ae1L    # 0.84
        -0x3fce99999999999aL    # -17.4
    .end array-data

    :array_22
    .array-data 8
        0x3fe8000000000000L    # 0.75
        -0x3fdc000000000000L    # -10.0
    .end array-data

    :array_23
    .array-data 8
        0x3fd28f5c28f5c28fL    # 0.29
        0x404699999999999aL    # 45.2
    .end array-data

    .line 68
    :array_24
    .array-data 8
        0x4000000000000000L    # 2.0
        0x4018000000000000L    # 6.0
    .end array-data

    :array_25
    .array-data 8
        0x3ff199999999999aL    # 1.1
        0x4033800000000000L    # 19.5
    .end array-data

    :array_26
    .array-data 8
        0x3ff4000000000000L    # 1.25
        0x402e000000000000L    # 15.0
    .end array-data

    :array_27
    .array-data 8
        0x3ff07ae147ae147bL    # 1.03
        0x40404ccccccccccdL    # 32.6
    .end array-data

    :array_28
    .array-data 8
        0x3fce147ae147ae14L    # 0.235
        0x3f947ae147ae147bL    # 0.02
    .end array-data

    :array_29
    .array-data 8
        0x3fe3333333333333L    # 0.6
        -0x3fde000000000000L    # -9.0
    .end array-data

    :array_2a
    .array-data 8
        0x3feae147ae147ae1L    # 0.84
        -0x3fce99999999999aL    # -17.4
    .end array-data

    :array_2b
    .array-data 8
        0x3fe8000000000000L    # 0.75
        -0x3fdc000000000000L    # -10.0
    .end array-data

    :array_2c
    .array-data 8
        0x3fd28f5c28f5c28fL    # 0.29
        0x404699999999999aL    # 45.2
    .end array-data

    .line 80
    :array_2d
    .array-data 8
        0x4000000000000000L    # 2.0
        0x4018000000000000L    # 6.0
    .end array-data

    :array_2e
    .array-data 8
        0x3ff199999999999aL    # 1.1
        0x4033800000000000L    # 19.5
    .end array-data

    :array_2f
    .array-data 8
        0x3ff4000000000000L    # 1.25
        0x402e000000000000L    # 15.0
    .end array-data

    :array_30
    .array-data 8
        0x3ff07ae147ae147bL    # 1.03
        0x40404ccccccccccdL    # 32.6
    .end array-data

    :array_31
    .array-data 8
        0x3fce147ae147ae14L    # 0.235
        0x3f947ae147ae147bL    # 0.02
    .end array-data

    :array_32
    .array-data 8
        0x3fe3333333333333L    # 0.6
        -0x3fde000000000000L    # -9.0
    .end array-data

    :array_33
    .array-data 8
        0x3feae147ae147ae1L    # 0.84
        -0x3fce99999999999aL    # -17.4
    .end array-data

    :array_34
    .array-data 8
        0x3fe8000000000000L    # 0.75
        -0x3fdc000000000000L    # -10.0
    .end array-data

    :array_35
    .array-data 8
        0x3fd28f5c28f5c28fL    # 0.29
        0x404699999999999aL    # 45.2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoOrigParam([[D[[I[[D)V
    .locals 2
    .param p0, "orig_param"    # [[D
    .param p1, "orig_key_value"    # [[I
    .param p2, "orig_up_down_param"    # [[D

    .prologue
    .line 94
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->model:Ljava/lang/String;

    const-string v1, "pd1610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_param_PD1610:[[D

    invoke-static {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[D[[D)V

    .line 96
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_key_value_PD1610:[[I

    invoke-static {p1, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[I[[I)V

    .line 97
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_up_down_param_PD1610:[[D

    invoke-static {p2, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[D[[D)V

    .line 112
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->model:Ljava/lang/String;

    const-string v1, "pd1616"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_param_PD1616:[[D

    invoke-static {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[D[[D)V

    .line 100
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_key_value_PD1616:[[I

    invoke-static {p1, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[I[[I)V

    .line 101
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_up_down_param_PD1616:[[D

    invoke-static {p2, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[D[[D)V

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->model:Ljava/lang/String;

    const-string v1, "pd1624"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_param_PD1624:[[D

    invoke-static {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[D[[D)V

    .line 104
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_key_value_PD1624:[[I

    invoke-static {p1, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[I[[I)V

    .line 105
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_up_down_param_PD1624:[[D

    invoke-static {p2, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[D[[D)V

    goto :goto_0

    .line 107
    :cond_2
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_param_PD1610:[[D

    invoke-static {p0, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[D[[D)V

    .line 108
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_key_value_PD1610:[[I

    invoke-static {p1, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[I[[I)V

    .line 109
    sget-object v0, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->morig_up_down_param_PD1610:[[D

    invoke-static {p2, v0}, Lcom/vivo/common/autobrightness/AutobrightOrigParam;->paramCopy([[D[[D)V

    goto :goto_0
.end method

.method private static paramCopy([[D[[D)V
    .locals 8
    .param p0, "purpose_param"    # [[D
    .param p1, "orig_param"    # [[D

    .prologue
    .line 116
    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v2, v4

    .line 117
    .local v2, "m":I
    array-length v3, p1

    .line 118
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 119
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 120
    aget-object v4, p0, v0

    aget-object v5, p1, v0

    aget-wide v6, v5, v1

    aput-wide v6, v4, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private static paramCopy([[I[[I)V
    .locals 6
    .param p0, "purpose_param"    # [[I
    .param p1, "orig_param"    # [[I

    .prologue
    .line 125
    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v2, v4

    .line 126
    .local v2, "m":I
    array-length v3, p1

    .line 127
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 128
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 129
    aget-object v4, p0, v0

    aget-object v5, p1, v0

    aget v5, v5, v1

    aput v5, v4, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "j":I
    :cond_1
    return-void
.end method
