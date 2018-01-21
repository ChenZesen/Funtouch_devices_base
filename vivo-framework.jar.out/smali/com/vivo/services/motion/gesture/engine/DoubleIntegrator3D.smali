.class public Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;
.super Ljava/lang/Object;
.source "DoubleIntegrator3D.java"


# instance fields
.field alpha:F

.field filter1:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

.field filter2:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

.field filter3:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

.field period:F

.field position:Lcom/vivo/services/motion/gesture/util/Vector3D;

.field raw_pos:Lcom/vivo/services/motion/gesture/util/Vector3D;

.field raw_vel:Lcom/vivo/services/motion/gesture/util/Vector3D;

.field velocity:Lcom/vivo/services/motion/gesture/util/Vector3D;


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "paramFloat1"    # F
    .param p2, "paramFloat2"    # F

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->filter1:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    .line 9
    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->filter2:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    .line 10
    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->filter3:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    .line 12
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->position:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 13
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_pos:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 14
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_vel:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 15
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->velocity:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->alpha:F

    .line 20
    iput p2, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->period:F

    .line 21
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->reset()V

    .line 22
    return-void
.end method


# virtual methods
.method public process(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 1
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    .line 26
    iget v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->period:F

    invoke-virtual {p0, p1, v0}, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->process(Lcom/vivo/services/motion/gesture/util/Vector3D;F)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v0

    return-object v0
.end method

.method public process(Lcom/vivo/services/motion/gesture/util/Vector3D;F)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 3
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;
    .param p2, "paramFloat"    # F

    .prologue
    .line 31
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->filter1:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    invoke-virtual {v1, p1}, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->filter(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v0

    .line 32
    .local v0, "localVector3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_vel:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v1, p2, v0}, Lcom/vivo/services/motion/gesture/util/Vector3D;->add(FLcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_vel:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 33
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->filter2:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    iget-object v2, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_vel:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v1, v2}, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;->filter(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->velocity:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 34
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_pos:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget-object v2, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->velocity:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v1, p2, v2}, Lcom/vivo/services/motion/gesture/util/Vector3D;->add(FLcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_pos:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 35
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_pos:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->position:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 36
    iget-object v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->position:Lcom/vivo/services/motion/gesture/util/Vector3D;

    return-object v1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->velocity:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 42
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->position:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 43
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_vel:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 44
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_pos:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 46
    new-instance v0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    iget v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->alpha:F

    invoke-direct {v0, v1}, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->filter1:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    .line 47
    new-instance v0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    iget v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->alpha:F

    invoke-direct {v0, v1}, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->filter2:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    .line 48
    new-instance v0, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    iget v1, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->alpha:F

    invoke-direct {v0, v1}, Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;-><init>(F)V

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->filter3:Lcom/vivo/services/motion/gesture/engine/DCBlockFilter3D;

    .line 49
    return-void
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->position:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 54
    sget-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->raw_pos:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 55
    return-void
.end method
