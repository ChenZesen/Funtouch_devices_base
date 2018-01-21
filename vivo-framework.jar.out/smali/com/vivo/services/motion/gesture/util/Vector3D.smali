.class public Lcom/vivo/services/motion/gesture/util/Vector3D;
.super Ljava/lang/Object;
.source "Vector3D.java"


# static fields
.field public static final NaN:Lcom/vivo/services/motion/gesture/util/Vector3D;

.field public static final ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;


# instance fields
.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x7fc00000    # NaNf

    const/4 v1, 0x0

    .line 5
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-direct {v0, v2, v2, v2}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    sput-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->NaN:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 6
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-direct {v0, v1, v1, v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    sput-object v0, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "paramFloat1"    # F
    .param p2, "paramFloat2"    # F
    .param p3, "paramFloat3"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    .line 14
    iput p2, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    .line 15
    iput p3, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    .line 16
    return-void
.end method


# virtual methods
.method public add(FLcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 8
    .param p1, "paramFloat"    # F
    .param p2, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    .line 20
    invoke-virtual {p2, p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->scalarMultiply(F)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v3

    .line 21
    .local v3, "localVector3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v0

    .line 22
    .local v0, "f1":F
    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v1

    .line 23
    .local v1, "f2":F
    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v2

    .line 24
    .local v2, "f3":F
    new-instance v4, Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    add-float/2addr v5, v0

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    add-float/2addr v6, v1

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    add-float/2addr v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    return-object v4
.end method

.method public add(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 7
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v0

    .line 30
    .local v0, "f1":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v1

    .line 31
    .local v1, "f2":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v2

    .line 32
    .local v2, "f3":F
    new-instance v3, Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    add-float/2addr v5, v1

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    add-float/2addr v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    return-object v3
.end method

.method public angle(Lcom/vivo/services/motion/gesture/util/Vector3D;)F
    .locals 14
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    const-wide/16 v12, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v10

    mul-double v0, v8, v10

    .line 38
    .local v0, "d1":D
    cmpl-double v7, v0, v12

    if-nez v7, :cond_0

    .line 39
    const/high16 v7, 0x7fc00000    # NaNf

    .line 49
    :goto_0
    return v7

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->dotProduct(Lcom/vivo/services/motion/gesture/util/Vector3D;)F

    move-result v7

    float-to-double v2, v7

    .line 41
    .local v2, "d2":D
    const-wide v8, 0x3fefff2e48e8a71eL    # 0.9999

    mul-double v4, v0, v8

    .line 42
    .local v4, "d3":D
    neg-double v8, v4

    cmpg-double v7, v2, v8

    if-ltz v7, :cond_1

    cmpl-double v7, v2, v4

    if-lez v7, :cond_3

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->crossProduct(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v6

    .line 45
    .local v6, "localVector3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    cmpl-double v7, v2, v12

    if-ltz v7, :cond_2

    .line 46
    invoke-virtual {v6}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v8

    div-double/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->asin(D)D

    move-result-wide v8

    double-to-float v7, v8

    goto :goto_0

    .line 47
    :cond_2
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v6}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v10

    div-double/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v7, v8

    goto :goto_0

    .line 49
    .end local v6    # "localVector3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    :cond_3
    div-double v8, v2, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    double-to-float v7, v8

    goto :goto_0
.end method

.method public asArray()[F
    .locals 3

    .prologue
    .line 54
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 55
    .local v0, "arrayOfFloat":[F
    const/4 v1, 0x0

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    aput v2, v0, v1

    .line 56
    const/4 v1, 0x1

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    aput v2, v0, v1

    .line 57
    const/4 v1, 0x2

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    aput v2, v0, v1

    .line 58
    return-object v0
.end method

.method public crossProduct(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 8
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v0

    .line 64
    .local v0, "f1":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v1

    .line 65
    .local v1, "f2":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v2

    .line 66
    .local v2, "f3":F
    new-instance v3, Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    invoke-direct {v3, v4, v5, v6}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    return-object v3
.end method

.method public distanceFromLine(Lcom/vivo/services/motion/gesture/util/Vector3D;Lcom/vivo/services/motion/gesture/util/Vector3D;)F
    .locals 4
    .param p1, "paramVector3D1"    # Lcom/vivo/services/motion/gesture/util/Vector3D;
    .param p2, "paramVector3D2"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->crossProduct(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v0

    invoke-virtual {p2, p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public dotProduct(Lcom/vivo/services/motion/gesture/util/Vector3D;)F
    .locals 5
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v0

    .line 77
    .local v0, "f1":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v1

    .line 78
    .local v1, "f2":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v2

    .line 79
    .local v2, "f3":F
    iget v3, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    return v3
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    return v0
.end method

.method public norm()D
    .locals 3

    .prologue
    .line 99
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 6

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v2

    double-to-float v0, v2

    .line 105
    .local v0, "f1":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 107
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v0

    .line 108
    .local v1, "f2":F
    new-instance v2, Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget v3, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    mul-float/2addr v5, v1

    invoke-direct {v2, v3, v4, v5}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    .line 110
    .end local v1    # "f2":F
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/vivo/services/motion/gesture/util/Vector3D;->NaN:Lcom/vivo/services/motion/gesture/util/Vector3D;

    goto :goto_0
.end method

.method public scalarMultiply(F)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 4
    .param p1, "paramFloat"    # F

    .prologue
    .line 115
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 7
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v0

    .line 121
    .local v0, "f1":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v1

    .line 122
    .local v1, "f2":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v2

    .line 123
    .local v2, "f3":F
    new-instance v3, Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    sub-float/2addr v5, v1

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    sub-float/2addr v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector3D [x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Vector3D;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
