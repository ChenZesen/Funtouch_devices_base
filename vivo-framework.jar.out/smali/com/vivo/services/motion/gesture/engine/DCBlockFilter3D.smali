.class public Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;
.super Ljava/lang/Object;
.source "DCBlockFilter3D.java"


# instance fields
.field a:F

.field lastInput:Lcom/vivo/services/motion/gesture/util/Vector3D;

.field lastOutput:Lcom/vivo/services/motion/gesture/util/Vector3D;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastInput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 9
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastOutput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 13
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    .line 14
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "paramFloat"    # F

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastInput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 9
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastOutput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 18
    iput p1, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    .line 19
    return-void
.end method


# virtual methods
.method public filter(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 7
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 23
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget v1, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    add-float/2addr v1, v5

    div-float/2addr v1, v6

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    add-float/2addr v2, v5

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastInput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    iget-object v3, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastOutput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    add-float/2addr v2, v5

    div-float/2addr v2, v6

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    add-float/2addr v3, v5

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastInput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v4}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    iget-object v4, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastOutput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v4}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    add-float/2addr v3, v5

    div-float/2addr v3, v6

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastInput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v5}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->a:F

    iget-object v5, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastOutput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v5}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    .line 27
    .local v0, "localVector3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    iput-object p1, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastInput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 28
    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->lastOutput:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 29
    return-object v0
.end method
