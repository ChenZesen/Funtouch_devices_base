.class Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;
.super Ljava/lang/Object;
.source "PhonePickUpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhonePickUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonePickUpAnalyzer"
.end annotation


# static fields
.field private static final INTERVAL_NUM:I = 0xa

.field private static final SAMPLE_NUM:I = 0x3


# instance fields
.field private countNum:I

.field private dataAve:[F

.field private dataBuf:[[F

.field private dataFlag:Z

.field private dataLasAve:[F

.field private dataSum:[F

.field private phone_pick_up_count:I

.field final synthetic this$0:Lcom/vivo/services/motion/PhonePickUpService;

.field private trigerFlag:Z


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PhonePickUpService;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 182
    iput-object p1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->countNum:I

    .line 173
    iput v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->phone_pick_up_count:I

    .line 174
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataFlag:Z

    .line 175
    iput-boolean v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->trigerFlag:Z

    .line 176
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    .line 177
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    .line 178
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    .line 179
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->gyroSensorJudge(FFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->gSensorJudge(FFF)V

    return-void
.end method

.method private gSensorJudge(FFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/high16 v5, 0x40400000    # 3.0f

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 222
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v2, v2, v6

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 225
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v2, v2, v7

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 226
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v2, v2, v8

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v6

    aput p1, v1, v6

    .line 229
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v7

    aput p2, v1, v6

    .line 230
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v8

    aput p3, v1, v6

    .line 232
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    aput v4, v1, v6

    .line 233
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    aput v4, v1, v7

    .line 234
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    aput v4, v1, v8

    .line 236
    iget-boolean v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataFlag:Z

    if-eqz v1, :cond_2

    .line 238
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v6

    aput p1, v1, v0

    .line 241
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v7

    aput p2, v1, v0

    .line 242
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v8

    aput p3, v1, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    aput p1, v1, v6

    .line 245
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    aput p2, v1, v7

    .line 246
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    aput p3, v1, v8

    .line 248
    iput-boolean v6, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataFlag:Z

    .line 251
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 253
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v3, v3, v6

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 254
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v3, v3, v7

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 255
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataBuf:[[F

    aget-object v3, v3, v8

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v8

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    aget v2, v2, v6

    div-float/2addr v2, v5

    aput v2, v1, v6

    .line 259
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    aget v2, v2, v7

    div-float/2addr v2, v5

    aput v2, v1, v7

    .line 260
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataSum:[F

    aget v2, v2, v8

    div-float/2addr v2, v5

    aput v2, v1, v8

    .line 266
    const-string v1, "PhonePickUpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Math.abs(dataAve[0] - dataLasAve[0]): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Math.abs(dataAve[1] - dataLasAve[1]): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    aget v4, v4, v7

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Math.abs(dataAve[2] - dataLasAve[2]): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpl-double v1, v2, v4

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    aget v2, v2, v6

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    aget v2, v2, v7

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_6

    .line 274
    :cond_4
    invoke-virtual {p0}, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->reset()V

    .line 275
    const-string v1, "PhonePickUpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " trigerFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->trigerFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$600(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->trigerFlag:Z

    if-eqz v1, :cond_5

    .line 278
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/PhonePickUpService;->access$600(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    iput-boolean v6, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->trigerFlag:Z

    .line 282
    :cond_5
    iput v6, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->countNum:I

    .line 284
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 285
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 286
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v2, v2, v8

    aput v2, v1, v8

    .line 289
    :cond_6
    iget v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->countNum:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_7

    .line 291
    iput v6, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->countNum:I

    .line 293
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 294
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 295
    iget-object v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataAve:[F

    aget v2, v2, v8

    aput v2, v1, v8

    .line 301
    :goto_3
    return-void

    .line 299
    :cond_7
    iget v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->countNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->countNum:I

    goto :goto_3
.end method

.method private gyroSensorJudge(FFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v5, 0x3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 196
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 198
    :cond_0
    iput v4, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->phone_pick_up_count:I

    .line 199
    const-string v0, "PhonePickUpService"

    const-string v1, "gyroscope data error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    const-string v0, "PhonePickUpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gyro_x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gyro_y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gyro_z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phone_pick_up_count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->phone_pick_up_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-gtz v0, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_4

    .line 206
    :cond_2
    iget v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->phone_pick_up_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->phone_pick_up_count:I

    .line 213
    :goto_0
    iget v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->phone_pick_up_count:I

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/motion/PhonePickUpService;->access$600(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 215
    iput v4, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->phone_pick_up_count:I

    .line 216
    iget-object v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->this$0:Lcom/vivo/services/motion/PhonePickUpService;

    # getter for: Lcom/vivo/services/motion/PhonePickUpService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/services/motion/PhonePickUpService;->access$600(Lcom/vivo/services/motion/PhonePickUpService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    :cond_3
    return-void

    .line 210
    :cond_4
    iput v4, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->phone_pick_up_count:I

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->countNum:I

    .line 188
    iput-boolean v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->dataFlag:Z

    .line 189
    iput-boolean v1, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->trigerFlag:Z

    .line 191
    iput v0, p0, Lcom/vivo/services/motion/PhonePickUpService$PhonePickUpAnalyzer;->phone_pick_up_count:I

    .line 192
    return-void
.end method
