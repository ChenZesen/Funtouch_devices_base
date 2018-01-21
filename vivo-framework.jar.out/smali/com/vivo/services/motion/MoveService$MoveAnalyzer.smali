.class Lcom/vivo/services/motion/MoveService$MoveAnalyzer;
.super Ljava/lang/Object;
.source "MoveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/MoveService;
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

.field final synthetic this$0:Lcom/vivo/services/motion/MoveService;

.field private trigerFlag:Z


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/MoveService;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 147
    iput-object p1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/MoveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-boolean v0, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataFlag:Z

    .line 140
    iput-boolean v0, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->trigerFlag:Z

    .line 141
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    .line 142
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    .line 143
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    .line 144
    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    .line 148
    return-void
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/MoveService$MoveAnalyzer;FFF)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/MoveService$MoveAnalyzer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->judge(FFF)V

    return-void
.end method

.method private judge(FFF)V
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

    .line 157
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v2, v2, v6

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 160
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v7

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v2, v2, v7

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 161
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v8

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v2, v2, v8

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 157
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v6

    aput p1, v1, v6

    .line 164
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v7

    aput p2, v1, v6

    .line 165
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v8

    aput p3, v1, v6

    .line 167
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    aput v4, v1, v6

    .line 168
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    aput v4, v1, v7

    .line 169
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    aput v4, v1, v8

    .line 171
    iget-boolean v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataFlag:Z

    if-eqz v1, :cond_2

    .line 173
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v6

    aput p1, v1, v0

    .line 176
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v7

    aput p2, v1, v0

    .line 177
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v1, v1, v8

    aput p3, v1, v0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    aput p1, v1, v6

    .line 180
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    aput p2, v1, v7

    .line 181
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    aput p3, v1, v8

    .line 183
    iput-boolean v6, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataFlag:Z

    .line 186
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v3, v3, v6

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v6

    .line 189
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v3, v3, v7

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v7

    .line 190
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v8

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataBuf:[[F

    aget-object v3, v3, v8

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v8

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v6

    div-float/2addr v2, v5

    aput v2, v1, v6

    .line 194
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v7

    div-float/2addr v2, v5

    aput v2, v1, v7

    .line 195
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataSum:[F

    aget v2, v2, v8

    div-float/2addr v2, v5

    aput v2, v1, v8

    .line 201
    const-string v1, "MoveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Math.abs(dataAve[0] - dataLasAve[0]): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Math.abs(dataAve[1] - dataLasAve[1]): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    aget v4, v4, v7

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Math.abs(dataAve[2] - dataLasAve[2]): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    aget v4, v4, v8

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpl-double v1, v2, v4

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    aget v2, v2, v6

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v1, v1, v7

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    aget v2, v2, v7

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_6

    .line 210
    :cond_4
    invoke-virtual {p0}, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->reset()V

    .line 211
    const-string v1, "MoveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " trigerFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->trigerFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$500(Lcom/vivo/services/motion/MoveService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->trigerFlag:Z

    if-eqz v1, :cond_5

    .line 214
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->this$0:Lcom/vivo/services/motion/MoveService;

    # getter for: Lcom/vivo/services/motion/MoveService;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/services/motion/MoveService;->access$500(Lcom/vivo/services/motion/MoveService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    iput-boolean v6, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->trigerFlag:Z

    .line 218
    :cond_5
    iput v6, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->countNum:I

    .line 220
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 221
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 222
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v8

    aput v2, v1, v8

    .line 224
    :cond_6
    iget v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->countNum:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_7

    .line 226
    iput v6, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->countNum:I

    .line 228
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 229
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 230
    iget-object v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataLasAve:[F

    iget-object v2, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataAve:[F

    aget v2, v2, v8

    aput v2, v1, v8

    .line 236
    :goto_3
    return-void

    .line 234
    :cond_7
    iget v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->countNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->countNum:I

    goto :goto_3
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->countNum:I

    .line 152
    iput-boolean v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->dataFlag:Z

    .line 153
    iput-boolean v1, p0, Lcom/vivo/services/motion/MoveService$MoveAnalyzer;->trigerFlag:Z

    .line 154
    return-void
.end method
