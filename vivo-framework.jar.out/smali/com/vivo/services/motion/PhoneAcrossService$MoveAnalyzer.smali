.class Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;
.super Ljava/lang/Object;
.source "PhoneAcrossService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneAcrossService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveAnalyzer"
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

.field final synthetic this$0:Lcom/vivo/services/motion/PhoneAcrossService;


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/PhoneAcrossService;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 172
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataFlag:Z

    .line 166
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    .line 167
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    .line 168
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    .line 169
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    .line 173
    return-void
.end method

.method static synthetic access$800(Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->judge(FFF)V

    return-void
.end method

.method private judge(FFF)V
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/4 v4, 0x0

    const-wide v10, 0x3fc3333333333333L    # 0.15

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v2, v2, v6

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 184
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v2, v2, v7

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 185
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v2, v2, v8

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 181
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v6

    aput p1, v1, v6

    .line 188
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v7

    aput p2, v1, v6

    .line 189
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v8

    aput p3, v1, v6

    .line 191
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    aput v4, v1, v6

    .line 192
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    aput v4, v1, v7

    .line 193
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    aput v4, v1, v8

    .line 195
    iget-boolean v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataFlag:Z

    if-eqz v1, :cond_2

    .line 197
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v6

    aput p1, v1, v0

    .line 200
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v7

    aput p2, v1, v0

    .line 201
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v8

    aput p3, v1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aput p1, v1, v6

    .line 204
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aput p2, v1, v7

    .line 205
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aput p3, v1, v8

    .line 207
    iput-boolean v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataFlag:Z

    .line 210
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v3, v3, v6

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 213
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v3, v3, v7

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 214
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataBuf:[[F

    aget-object v3, v3, v8

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v8

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v6

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    aput v2, v1, v6

    .line 218
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v7

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    aput v2, v1, v7

    .line 219
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v8

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    aput v2, v1, v8

    .line 221
    const-string v1, "PhoneAcrossService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Math.abs(dataAve[0] - dataLasAve[0]): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Math.abs(dataAve[1] - dataLasAve[1]): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aget v4, v4, v7

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Math.abs(dataAve[2] - dataLasAve[2]): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    cmpl-double v1, v2, v4

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aget v2, v2, v6

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aget v2, v2, v7

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpl-double v1, v2, v4

    if-lez v1, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpFlag:Z
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$000(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 229
    invoke-virtual {p0}, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->reset()V

    .line 230
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpFlag:Z
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$000(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 232
    const-string v1, "PhoneAcrossService"

    const-string v2, " aPickUpFlag: true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # setter for: Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpFlag:Z
    invoke-static {v1, v7}, Lcom/vivo/services/motion/PhoneAcrossService;->access$002(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z

    .line 235
    :cond_5
    iput v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->countNum:I

    .line 237
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 238
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 239
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v8

    aput v2, v1, v8

    .line 240
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    move-result-object v1

    # setter for: Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I
    invoke-static {v1, v7}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->access$1202(Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;I)I

    .line 241
    const-string v1, "PhoneAcrossService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++++0+++++to+++++State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    invoke-static {v3}, Lcom/vivo/services/motion/PhoneAcrossService;->access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    move-result-object v3

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I
    invoke-static {v3}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->access$1200(Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_6
    :goto_3
    iget v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->countNum:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_9

    .line 257
    iput v6, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->countNum:I

    .line 259
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 260
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 261
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v8

    aput v2, v1, v8

    .line 267
    :goto_4
    return-void

    .line 243
    :cond_7
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aget v2, v2, v6

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v10

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aget v2, v2, v7

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v10

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataAve:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataLasAve:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    cmpg-double v1, v2, v10

    if-gez v1, :cond_6

    .line 247
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpStaticFlag:Z
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$600(Lcom/vivo/services/motion/PhoneAcrossService;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 249
    const-string v1, "PhoneAcrossService"

    const-string v2, " aPickUpStaticFlag: true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # setter for: Lcom/vivo/services/motion/PhoneAcrossService;->aPickUpStaticFlag:Z
    invoke-static {v1, v7}, Lcom/vivo/services/motion/PhoneAcrossService;->access$602(Lcom/vivo/services/motion/PhoneAcrossService;Z)Z

    .line 252
    :cond_8
    iget-object v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneAcrossService;->access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    move-result-object v1

    # setter for: Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I
    invoke-static {v1, v6}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->access$1202(Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;I)I

    .line 253
    const-string v1, "PhoneAcrossService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++++1+++++to+++++State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService;->mDataAnalysis:Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;
    invoke-static {v3}, Lcom/vivo/services/motion/PhoneAcrossService;->access$900(Lcom/vivo/services/motion/PhoneAcrossService;)Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;

    move-result-object v3

    # getter for: Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->linearAccelerationState:I
    invoke-static {v3}, Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;->access$1200(Lcom/vivo/services/motion/PhoneAcrossService$DataAnalysis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 265
    :cond_9
    iget v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->countNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->countNum:I

    goto :goto_4
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->countNum:I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$MoveAnalyzer;->dataFlag:Z

    .line 178
    return-void
.end method
