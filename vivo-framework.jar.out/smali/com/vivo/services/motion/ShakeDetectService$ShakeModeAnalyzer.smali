.class Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;
.super Ljava/lang/Object;
.source "ShakeDetectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ShakeDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShakeModeAnalyzer"
.end annotation


# instance fields
.field private MTK_PLATFORM:Ljava/lang/String;

.field private PLATFORM_TAG:Ljava/lang/String;

.field private QCOM_PLATFORM:Ljava/lang/String;

.field private befMaxData:F

.field private befMinData:F

.field public dataNum:I

.field private firMaxData:F

.field private firMinData:F

.field private firNumMax:I

.field private firNumMin:I

.field private maxData:F

.field private minData:F

.field private minMaxData:F

.field private minMinData:F

.field private mmNum:I

.field private mmThreshold:F

.field private num1:I

.field private num2:I

.field private nummax:I

.field private nummin:I

.field private o:Ljava/lang/Object;

.field private secMaxData:F

.field private secMinData:F

.field private secNumMax:I

.field private secNumMin:I

.field private final staticThreshold:F

.field final synthetic this$0:Lcom/vivo/services/motion/ShakeDetectService;

.field private value:I

.field public wavestate:Z

.field public xData:[F


# direct methods
.method public constructor <init>(Lcom/vivo/services/motion/ShakeDetectService;IIFF)V
    .locals 5
    .param p2, "datanum"    # I
    .param p3, "mmnum"    # I
    .param p4, "mmthreshold"    # F
    .param p5, "staticthreshold"    # F

    .prologue
    const/high16 v4, 0x41400000    # 12.0f

    const/4 v3, 0x0

    .line 373
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v2, 0x0

    iput v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->mmThreshold:F

    .line 350
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num1:I

    .line 351
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num2:I

    .line 352
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummin:I

    .line 353
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummax:I

    .line 354
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    .line 355
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    .line 356
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMin:I

    .line 357
    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMax:I

    .line 358
    const/4 v2, -0x1

    iput v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    .line 365
    iput-boolean v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    .line 367
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->o:Ljava/lang/Object;

    .line 369
    const-string v2, "QCOM"

    iput-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->QCOM_PLATFORM:Ljava/lang/String;

    .line 370
    const-string v2, "MTK"

    iput-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->MTK_PLATFORM:Ljava/lang/String;

    .line 371
    const-string v2, "ro.vivo.product.solution"

    iput-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->PLATFORM_TAG:Ljava/lang/String;

    .line 374
    const-string v2, "ro.product.model.bbk"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "prop":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->PLATFORM_TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "PLATFORM_INFO":Ljava/lang/String;
    sget-boolean v2, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v2, :cond_0

    .line 378
    add-float v2, p4, v4

    iput v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->mmThreshold:F

    .line 384
    :goto_0
    new-array v2, p2, [F

    iput-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->xData:[F

    .line 387
    iput p2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->dataNum:I

    .line 388
    iput p3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->mmNum:I

    .line 389
    iput p5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->staticThreshold:F

    .line 390
    return-void

    .line 382
    :cond_0
    add-float v2, p4, v4

    iput v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->mmThreshold:F

    goto :goto_0
.end method

.method static synthetic access$900(Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;

    .prologue
    .line 330
    iget v0, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    return v0
.end method

.method static synthetic access$902(Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;
    .param p1, "x1"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    return p1
.end method


# virtual methods
.method public eat(F)V
    .locals 4
    .param p1, "xvalue"    # F

    .prologue
    .line 410
    iget v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->dataNum:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->xData:[F

    iget-object v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->xData:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 410
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->xData:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 420
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->xData:[F

    iget v2, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->dataNum:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->xData:[F

    invoke-virtual {p0, v1}, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavejudge([F)V

    .line 422
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->dataNum:I

    if-ge v0, v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->xData:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    const/4 v2, 0x0

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->timeCount:I
    invoke-static {v1, v2}, Lcom/vivo/services/motion/ShakeDetectService;->access$702(Lcom/vivo/services/motion/ShakeDetectService;I)I

    .line 406
    return-void
.end method

.method public wavejudge([F)V
    .locals 13
    .param p1, "mData"    # [F

    .prologue
    const/high16 v12, 0x41700000    # 15.0f

    const/high16 v11, -0x3e900000    # -15.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 426
    iput-boolean v8, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    .line 427
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minData:F

    .line 428
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->maxData:F

    .line 429
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummin:I

    .line 430
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummax:I

    .line 431
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    .line 432
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    .line 433
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMinData:F

    .line 434
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMaxData:F

    .line 435
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMinData:F

    .line 436
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMaxData:F

    .line 437
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    .line 438
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    .line 439
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMin:I

    .line 440
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMax:I

    .line 441
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->numflag:Z
    invoke-static {v3, v9}, Lcom/vivo/services/motion/ShakeDetectService;->access$1002(Lcom/vivo/services/motion/ShakeDetectService;Z)Z

    .line 442
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->judgeflag:Z
    invoke-static {v3, v9}, Lcom/vivo/services/motion/ShakeDetectService;->access$1102(Lcom/vivo/services/motion/ShakeDetectService;Z)Z

    .line 444
    array-length v3, p1

    add-int/lit8 v1, v3, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 445
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minData:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 446
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minData:F

    .line 447
    iput v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummin:I

    .line 449
    :cond_0
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->maxData:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 450
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->maxData:F

    .line 451
    iput v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummax:I

    .line 453
    :cond_1
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++++maxData -minData+++++: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->maxData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->maxData:F

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minData:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->mmThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 455
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxData -minData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->maxData:F

    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minData:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->maxData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nummax: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "nummin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummin:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummax:I

    if-le v3, v4, :cond_5

    .line 458
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->maxData:F

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minData:F

    .line 461
    :goto_1
    const-string v3, "ro.product.model.bbk"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "prop":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->PLATFORM_TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "PLATFORM_INFO":Ljava/lang/String;
    sget-boolean v3, Lcom/vivo/services/motion/AllConfig;->mIsArchADSP:Z

    if-nez v3, :cond_6

    .line 465
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummax:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummin:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xc

    if-gt v3, v4, :cond_2

    .line 467
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num1:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num1:I

    .line 480
    .end local v0    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v2    # "prop":Ljava/lang/String;
    :cond_2
    :goto_2
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 481
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    .line 482
    iput v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    .line 484
    :cond_3
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 485
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    .line 486
    iput v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    .line 444
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 460
    :cond_5
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minData:F

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->maxData:F

    goto :goto_1

    .line 473
    .restart local v0    # "PLATFORM_INFO":Ljava/lang/String;
    .restart local v2    # "prop":Ljava/lang/String;
    :cond_6
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummax:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->nummin:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_2

    .line 475
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num1:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num1:I

    goto :goto_2

    .line 523
    .end local v0    # "PLATFORM_INFO":Ljava/lang/String;
    .end local v2    # "prop":Ljava/lang/String;
    :cond_7
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "num1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num1:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->mmNum:I

    if-le v3, v4, :cond_12

    .line 526
    iput-boolean v9, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    .line 527
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/vivo/services/motion/ShakeDetectService;->access$1200(Lcom/vivo/services/motion/ShakeDetectService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bbk_application_settings"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_11

    .line 529
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMinData:F

    .line 530
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMaxData:F

    .line 531
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    .line 533
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    if-le v3, v4, :cond_13

    .line 535
    array-length v3, p1

    add-int/lit8 v1, v3, -0x2

    :goto_3
    const/16 v3, 0xf

    if-lt v1, v3, :cond_e

    .line 536
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    if-eq v1, v3, :cond_d

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    if-eq v1, v3, :cond_d

    .line 539
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_8

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_a

    :cond_8
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_9

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_a

    :cond_9
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMinData:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    .line 543
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMinData:F

    .line 544
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMinData:F

    .line 545
    iput v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMin:I

    .line 548
    :cond_a
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_b

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_d

    :cond_b
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_c

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_d

    :cond_c
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    aget v4, p1, v1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMaxData:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    .line 552
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    aget v4, p1, v1

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMaxData:F

    .line 553
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMaxData:F

    .line 554
    iput v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMax:I

    .line 535
    :cond_d
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 558
    :cond_e
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMax:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    if-lt v3, v4, :cond_f

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMinData:F

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    .line 560
    :cond_f
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->judgeflag:Z
    invoke-static {v3, v8}, Lcom/vivo/services/motion/ShakeDetectService;->access$1102(Lcom/vivo/services/motion/ShakeDetectService;Z)Z

    .line 593
    :cond_10
    :goto_4
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "firMaxData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "secMaxData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMaxData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "firMinData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "secMinData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMinData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "judgeflag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->judgeflag:Z
    invoke-static {v5}, Lcom/vivo/services/motion/ShakeDetectService;->access$1100(Lcom/vivo/services/motion/ShakeDetectService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(firMaxData + secMaxData - 2*firMinData):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMaxData:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(2*firMaxData - (firMinData + secMinData)):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    mul-float/2addr v5, v10

    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    iget v7, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMinData:F

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->judgeflag:Z
    invoke-static {v3}, Lcom/vivo/services/motion/ShakeDetectService;->access$1100(Lcom/vivo/services/motion/ShakeDetectService;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMaxData:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    mul-float/2addr v4, v10

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    iget v6, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMinData:F

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1c

    .line 598
    iput v9, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    .line 685
    :cond_11
    :goto_5
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++++++++++++++wavestate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->wavestate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BBK_APPLICATION_SETTINGS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/vivo/services/motion/ShakeDetectService;->access$1200(Lcom/vivo/services/motion/ShakeDetectService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bbk_application_settings"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_12
    iput v8, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num1:I

    .line 704
    iput v8, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->num2:I

    .line 705
    return-void

    .line 565
    :cond_13
    array-length v3, p1

    add-int/lit8 v1, v3, -0x2

    :goto_6
    const/16 v3, 0xf

    if-lt v1, v3, :cond_1a

    .line 566
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    if-eq v1, v3, :cond_19

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    if-eq v1, v3, :cond_19

    .line 569
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_14

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_16

    :cond_14
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_15

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_16

    :cond_15
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMinData:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_16

    .line 573
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMinData:F

    .line 574
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMinData:F

    .line 575
    iput v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMin:I

    .line 578
    :cond_16
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_17

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_19

    :cond_17
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    add-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_18

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    add-int/lit8 v3, v3, -0x2

    if-gt v1, v3, :cond_19

    :cond_18
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    aget v4, p1, v1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMaxData:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_19

    .line 582
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    aget v4, p1, v1

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->minMaxData:F

    .line 583
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMaxData:F

    .line 584
    iput v1, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMax:I

    .line 565
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 588
    :cond_1a
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMin:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMax:I

    if-lt v3, v4, :cond_1b

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secNumMax:I

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firNumMin:I

    if-le v3, v4, :cond_10

    .line 590
    :cond_1b
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # setter for: Lcom/vivo/services/motion/ShakeDetectService;->judgeflag:Z
    invoke-static {v3, v8}, Lcom/vivo/services/motion/ShakeDetectService;->access$1102(Lcom/vivo/services/motion/ShakeDetectService;Z)Z

    goto/16 :goto_4

    .line 600
    :cond_1c
    iget-object v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    # getter for: Lcom/vivo/services/motion/ShakeDetectService;->judgeflag:Z
    invoke-static {v3}, Lcom/vivo/services/motion/ShakeDetectService;->access$1100(Lcom/vivo/services/motion/ShakeDetectService;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    mul-float/2addr v3, v10

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMinData:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMaxData:F

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->secMaxData:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->firMinData:F

    mul-float/2addr v5, v10

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1d

    .line 602
    iput v8, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    goto/16 :goto_5

    .line 606
    :cond_1d
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mData[mData.length-1]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    cmpl-float v3, v3, v12

    if-gtz v3, :cond_1e

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget v3, p1, v3

    cmpl-float v3, v3, v12

    if-lez v3, :cond_1f

    .line 609
    :cond_1e
    iput v8, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    goto/16 :goto_5

    .line 611
    :cond_1f
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    cmpg-float v3, v3, v11

    if-ltz v3, :cond_20

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget v3, p1, v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_21

    .line 613
    :cond_20
    iput v9, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    goto/16 :goto_5

    .line 617
    :cond_21
    array-length v3, p1

    add-int/lit8 v1, v3, -0x2

    :goto_7
    const/16 v3, 0x24

    if-le v1, v3, :cond_24

    .line 619
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMinData:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_22

    .line 621
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMinData:F

    .line 623
    :cond_22
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMaxData:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_23

    .line 625
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMaxData:F

    .line 617
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 628
    :cond_24
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "befMinData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMinData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "befMaxData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMaxData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMinData:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMaxData:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_25

    .line 631
    iput v8, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    goto/16 :goto_5

    .line 635
    :cond_25
    iput v9, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    goto/16 :goto_5

    .line 642
    :cond_26
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    cmpl-float v3, v3, v12

    if-gtz v3, :cond_27

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget v3, p1, v3

    cmpl-float v3, v3, v12

    if-lez v3, :cond_28

    .line 644
    :cond_27
    iput v8, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    goto/16 :goto_5

    .line 646
    :cond_28
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    cmpg-float v3, v3, v11

    if-ltz v3, :cond_29

    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    aget v3, p1, v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_2a

    .line 648
    :cond_29
    iput v9, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    goto/16 :goto_5

    .line 652
    :cond_2a
    array-length v3, p1

    add-int/lit8 v1, v3, -0x2

    :goto_8
    const/16 v3, 0x23

    if-lt v1, v3, :cond_2d

    .line 654
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMinData:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2b

    .line 656
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMinData:F

    .line 658
    :cond_2b
    aget v3, p1, v1

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMaxData:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2c

    .line 660
    aget v3, p1, v1

    iput v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMaxData:F

    .line 652
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 663
    :cond_2d
    const-string v3, "ShakeDetectService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "befMinData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMinData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "befMaxData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMaxData:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget v3, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMinData:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->befMaxData:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2e

    .line 666
    iput v8, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    goto/16 :goto_5

    .line 670
    :cond_2e
    iput v9, p0, Lcom/vivo/services/motion/ShakeDetectService$ShakeModeAnalyzer;->value:I

    goto/16 :goto_5
.end method
