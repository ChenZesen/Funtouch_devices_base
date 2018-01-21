.class public Lcom/vivo/services/DeviceParaProvideService;
.super Ljava/lang/Object;
.source "DeviceParaProvideService.java"


# static fields
.field private static als_para:[I

.field private static ps_para:[I

.field private static tmp_ps_para:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 46
    new-array v0, v1, [I

    sput-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    .line 47
    new-array v0, v1, [I

    sput-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    .line 48
    new-array v0, v1, [I

    sput-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 81
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 82
    return-void
.end method

.method private static native device_get_als_para([II)V
.end method

.method private static native device_get_ps_para([I[II)V
.end method

.method private static native dump_para_info()Ljava/lang/String;
.end method

.method private static native jniReadKernelData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static readKernelData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {p0}, Lcom/vivo/services/DeviceParaProvideService;->jniReadKernelData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-static {p0, p1}, Lcom/vivo/services/DeviceParaProvideService;->jniWriteKernelCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dumpParaInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lcom/vivo/services/DeviceParaProvideService;->dump_para_info()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlsBaseMaxValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 139
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 140
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 141
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAlsBaseMinValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 130
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 131
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 132
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPsBaseMaxValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 114
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 115
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 116
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getPsBaseMinValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 98
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 99
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 100
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPsBaseValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 88
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 89
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 90
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPsOneStepAwayValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 172
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 173
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 174
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public getPsOneStepCloseValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 164
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 165
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 166
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getPsOneStepMaxValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 156
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 157
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 158
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getPsOneStepMinValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 148
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 149
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 150
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getPsSecStepAwayValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 204
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 205
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 206
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    return v0
.end method

.method public getPsSecStepCloseValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 196
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 197
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 198
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    return v0
.end method

.method public getPsSecStepMaxValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 188
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 189
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 190
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    return v0
.end method

.method public getPsSecStepMinValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 180
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 181
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 182
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public getPsThrStepAwayValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 236
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 237
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 238
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/16 v1, 0xf

    aget v0, v0, v1

    return v0
.end method

.method public getPsThrStepCloseValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 228
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 229
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 230
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/16 v1, 0xe

    aget v0, v0, v1

    return v0
.end method

.method public getPsThrStepMaxValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 220
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 221
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 222
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    return v0
.end method

.method public getPsThrStepMinValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 212
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 213
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 214
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    return v0
.end method

.method public getTmpPsBaseMaxValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 122
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 123
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 124
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getTmpPsBaseMinValue()I
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 106
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->ps_para:[I

    sget-object v1, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    invoke-static {v0, v1, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_ps_para([I[II)V

    .line 107
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->als_para:[I

    invoke-static {v0, v2}, Lcom/vivo/services/DeviceParaProvideService;->device_get_als_para([II)V

    .line 108
    sget-object v0, Lcom/vivo/services/DeviceParaProvideService;->tmp_ps_para:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method
