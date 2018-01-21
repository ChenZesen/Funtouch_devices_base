.class Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;
.super Ljava/lang/Object;
.source "VivoWifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Median"
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_LEN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Median"


# instance fields
.field private average:D

.field private buffer:[D

.field private cursor:I

.field private length:I

.field private max:D

.field private module:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

.field private usedLen:I


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3216
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3217
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->length:I

    .line 3218
    const-string v0, "Median"

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->module:Ljava/lang/String;

    .line 3219
    iput v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    .line 3220
    iput v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->cursor:I

    .line 3221
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->length:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    .line 3222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->average:D

    .line 3224
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;I)V
    .locals 2
    .param p2, "mo"    # Ljava/lang/String;
    .param p3, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 3225
    iput-object p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3226
    if-lez p3, :cond_0

    .line 3227
    iput p3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->length:I

    .line 3231
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3232
    iput-object p2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->module:Ljava/lang/String;

    .line 3236
    :goto_1
    iput v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    .line 3237
    iput v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->cursor:I

    .line 3238
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->length:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    .line 3239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->average:D

    .line 3240
    return-void

    .line 3229
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->length:I

    goto :goto_0

    .line 3234
    :cond_1
    const-string v0, "Median"

    iput-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->module:Ljava/lang/String;

    goto :goto_1
.end method

.method private getMedian()D
    .locals 18

    .prologue
    .line 3268
    const-wide/16 v12, 0x0

    .line 3269
    .local v12, "sum":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    const/4 v14, 0x1

    if-lt v5, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    array-length v5, v5

    const/4 v14, 0x1

    if-ge v5, v14, :cond_1

    .line 3270
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getMedian source is null or length less than 1 or usedLen="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22200(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3271
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 3299
    :goto_0
    return-wide v6

    .line 3273
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    .line 3274
    .local v4, "len":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    array-length v5, v5

    if-le v4, v5, :cond_2

    .line 3275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    array-length v4, v5

    .line 3278
    :cond_2
    new-array v2, v4, [D

    .line 3279
    .local v2, "dest":[D
    array-length v5, v2

    if-nez v5, :cond_3

    .line 3280
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    const-string v14, " dest lenght is 0, return -1."

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v14}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22300(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3281
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 3283
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 3284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    aget-wide v14, v5, v3

    aput-wide v14, v2, v3

    .line 3285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    aget-wide v14, v5, v3

    add-double/2addr v12, v14

    .line 3283
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3287
    :cond_4
    int-to-double v14, v4

    div-double v14, v12, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->average:D

    .line 3289
    invoke-static {v2}, Ljava/util/Arrays;->sort([D)V

    .line 3291
    const-wide/16 v6, 0x0

    .line 3292
    .local v6, "median":D
    int-to-double v14, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 3293
    .local v8, "pos1":D
    int-to-double v14, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    .line 3294
    .local v10, "pos2":D
    cmpl-double v5, v8, v10

    if-nez v5, :cond_5

    .line 3295
    double-to-int v5, v8

    aget-wide v6, v2, v5

    goto :goto_0

    .line 3297
    :cond_5
    double-to-int v5, v8

    aget-wide v14, v2, v5

    double-to-int v5, v10

    aget-wide v16, v2, v5

    add-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v14, v16

    goto :goto_0
.end method

.method private putToMedianBuffer(D)V
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 3304
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    if-nez v0, :cond_3

    .line 3305
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->max:D

    .line 3312
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->length:I

    if-ge v0, v1, :cond_1

    .line 3313
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    .line 3316
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->cursor:I

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->length:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    .line 3317
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->cursor:I

    .line 3319
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->cursor:I

    aput-wide p1, v0, v1

    .line 3320
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->cursor:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->length:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->cursor:I

    .line 3321
    return-void

    .line 3307
    :cond_3
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->max:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 3308
    iput-wide p1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->max:D

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 8

    .prologue
    .line 3247
    const-string v0, ""

    .line 3248
    .local v0, "debug":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3250
    .local v1, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    if-ge v2, v3, :cond_0

    .line 3251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VIVOMEDIAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->buffer:[D

    aget-wide v4, v4, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3252
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22000(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3254
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->module:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "average:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->average:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->module:Ljava/lang/String;

    .line 3255
    iget-object v3, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->this$0:Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "average:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->average:D

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$22100(Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 3256
    return-void
.end method

.method public getAverage()D
    .locals 2

    .prologue
    .line 3258
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->average:D

    return-wide v0
.end method

.method public getMax()D
    .locals 2

    .prologue
    .line 3261
    iget-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->max:D

    return-wide v0
.end method

.method public getUsedLen()I
    .locals 1

    .prologue
    .line 3264
    iget v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    return v0
.end method

.method public putAndGetMedian(D)D
    .locals 3
    .param p1, "val"    # D

    .prologue
    .line 3323
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->putToMedianBuffer(D)V

    .line 3324
    invoke-direct {p0}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->getMedian()D

    move-result-wide v0

    .line 3325
    .local v0, "median":D
    # getter for: Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3328
    :cond_0
    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3242
    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    .line 3243
    iput v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->cursor:I

    .line 3244
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->average:D

    .line 3245
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";usedLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->usedLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";average="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/VivoWifiWatchdogStateMachine$Median;->average:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
