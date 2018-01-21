.class public Lcom/vivo/services/motion/gesture/util/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# static fields
.field public static final IDENTITY:Lcom/vivo/services/motion/gesture/util/Quaternion;

.field public static final NaN:Lcom/vivo/services/motion/gesture/util/Quaternion;


# instance fields
.field private final w:F

.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x7fc00000    # NaNf

    const/4 v1, 0x0

    .line 5
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Quaternion;

    invoke-direct {v0, v3, v1, v1, v1}, Lcom/vivo/services/motion/gesture/util/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->IDENTITY:Lcom/vivo/services/motion/gesture/util/Quaternion;

    .line 6
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Quaternion;

    invoke-direct {v0, v3, v2, v2, v2}, Lcom/vivo/services/motion/gesture/util/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->NaN:Lcom/vivo/services/motion/gesture/util/Quaternion;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "paramFloat1"    # F
    .param p2, "paramFloat2"    # F
    .param p3, "paramFloat3"    # F
    .param p4, "paramFloat4"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    .line 15
    iput p2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    .line 16
    iput p3, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    .line 17
    iput p4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    .line 18
    return-void
.end method

.method public constructor <init>(FFFFZ)V
    .locals 4
    .param p1, "paramFloat1"    # F
    .param p2, "paramFloat2"    # F
    .param p3, "paramFloat3"    # F
    .param p4, "paramFloat4"    # F
    .param p5, "paramBoolean"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p5, :cond_0

    .line 24
    mul-float v2, p1, p1

    mul-float v3, p2, p2

    add-float/2addr v2, v3

    mul-float v3, p3, p3

    add-float/2addr v2, v3

    mul-float v3, p4, p4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 25
    .local v0, "f1":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 27
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v0

    .line 28
    .local v1, "f2":F
    mul-float/2addr p1, v1

    .line 29
    mul-float/2addr p2, v1

    .line 30
    mul-float/2addr p3, v1

    .line 31
    mul-float/2addr p4, v1

    .line 34
    .end local v0    # "f1":F
    .end local v1    # "f2":F
    :cond_0
    iput p1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    .line 35
    iput p2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    .line 36
    iput p3, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    .line 37
    iput p4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    .line 38
    return-void
.end method

.method public static fromUnitVector(FFF)Lcom/vivo/services/motion/gesture/util/Quaternion;
    .locals 4
    .param p0, "paramFloat1"    # F
    .param p1, "paramFloat2"    # F
    .param p2, "paramFloat3"    # F

    .prologue
    const/4 v1, 0x0

    .line 42
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, p0, p0

    sub-float/2addr v2, v3

    mul-float v3, p1, p1

    sub-float/2addr v2, v3

    mul-float v3, p2, p2

    sub-float v0, v2, v3

    .line 43
    .local v0, "f1":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 44
    .local v1, "f2":F
    :cond_0
    new-instance v2, Lcom/vivo/services/motion/gesture/util/Quaternion;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/vivo/services/motion/gesture/util/Quaternion;-><init>(FFFF)V

    return-object v2
.end method

.method public static fromVector(FFF)Lcom/vivo/services/motion/gesture/util/Quaternion;
    .locals 7
    .param p0, "paramFloat1"    # F
    .param p1, "paramFloat2"    # F
    .param p2, "paramFloat3"    # F

    .prologue
    const/4 v1, 0x0

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v2, p0, p0

    sub-float/2addr v0, v2

    mul-float v2, p1, p1

    sub-float/2addr v0, v2

    mul-float v2, p2, p2

    sub-float v6, v0, v2

    .line 50
    .local v6, "f1":F
    cmpl-float v0, v6, v1

    if-lez v0, :cond_0

    float-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 51
    .local v1, "f2":F
    :cond_0
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Quaternion;

    const/4 v5, 0x1

    move v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/motion/gesture/util/Quaternion;-><init>(FFFFZ)V

    return-object v0
.end method

.method public static fromVector(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Quaternion;
    .locals 10
    .param p0, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v2

    .line 57
    .local v2, "f1":F
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v3

    .line 58
    .local v3, "f2":F
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v4

    .line 59
    .local v4, "f3":F
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v5, v2, v2

    sub-float/2addr v0, v5

    mul-float v5, v3, v3

    sub-float/2addr v0, v5

    mul-float v5, v4, v4

    sub-float v6, v0, v5

    .line 60
    .local v6, "f4":F
    cmpl-float v0, v6, v1

    if-lez v0, :cond_0

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 61
    .local v1, "f5":F
    :cond_0
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Quaternion;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/vivo/services/motion/gesture/util/Quaternion;-><init>(FFFFZ)V

    return-object v0
.end method


# virtual methods
.method public applyInverseTo(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 12
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 66
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v0

    .line 67
    .local v0, "f1":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v1

    .line 68
    .local v1, "f2":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v2

    .line 69
    .local v2, "f3":F
    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .line 70
    .local v3, "f4":F
    new-instance v4, Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    neg-float v5, v5

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    neg-float v6, v6

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    mul-float/2addr v5, v11

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    neg-float v6, v6

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    neg-float v7, v7

    mul-float/2addr v7, v1

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    mul-float/2addr v6, v11

    sub-float/2addr v6, v1

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    neg-float v7, v7

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    neg-float v8, v8

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v9, v1

    iget v10, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v10, v0

    sub-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    return-object v4
.end method

.method public applyTo(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 12
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 77
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v0

    .line 78
    .local v0, "f1":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v1

    .line 79
    .local v1, "f2":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v2

    .line 80
    .local v2, "f3":F
    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .line 81
    .local v3, "f4":F
    new-instance v4, Lcom/vivo/services/motion/gesture/util/Vector3D;

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v6, v0

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    mul-float/2addr v5, v11

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v7, v1

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v8, v0

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    mul-float/2addr v6, v11

    sub-float/2addr v6, v1

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v8, v2

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v9, v1

    iget v10, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v10, v0

    sub-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    return-object v4
.end method

.method public asArray()[F
    .locals 3

    .prologue
    .line 88
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 89
    .local v0, "arrayOfFloat":[F
    const/4 v1, 0x0

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    aput v2, v0, v1

    .line 90
    const/4 v1, 0x1

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    aput v2, v0, v1

    .line 91
    const/4 v1, 0x2

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    aput v2, v0, v1

    .line 92
    const/4 v1, 0x3

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    aput v2, v0, v1

    .line 93
    return-object v0
.end method

.method public composeWith(Lcom/vivo/services/motion/gesture/util/Quaternion;)Lcom/vivo/services/motion/gesture/util/Quaternion;
    .locals 11
    .param p1, "paramQuaternion"    # Lcom/vivo/services/motion/gesture/util/Quaternion;

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getW()F

    move-result v0

    .line 99
    .local v0, "f1":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getX()F

    move-result v1

    .line 100
    .local v1, "f2":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getY()F

    move-result v2

    .line 101
    .local v2, "f3":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getZ()F

    move-result v3

    .line 102
    .local v3, "f4":F
    new-instance v4, Lcom/vivo/services/motion/gesture/util/Quaternion;

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v6, v1

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v6, v1

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v8, v3

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v8, v3

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v9, v1

    iget v10, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v10, v2

    sub-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/vivo/services/motion/gesture/util/Quaternion;-><init>(FFFF)V

    return-object v4
.end method

.method public getMatrix()[[D
    .locals 30

    .prologue
    .line 110
    const/4 v3, 0x3

    new-array v2, v3, [[D

    .line 111
    .local v2, "arrayOfDouble":[[D
    const/4 v3, 0x0

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    aput-object v24, v2, v3

    .line 112
    const/4 v3, 0x1

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    aput-object v24, v2, v3

    .line 113
    const/4 v3, 0x2

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v24, v0

    aput-object v24, v2, v3

    .line 114
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v4, v3

    .line 115
    .local v4, "d1":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v8, v3

    .line 116
    .local v8, "d2":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v10, v3

    .line 117
    .local v10, "d3":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v12, v3

    .line 118
    .local v12, "d4":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v14, v3

    .line 119
    .local v14, "d5":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v0, v3

    move-wide/from16 v16, v0

    .line 120
    .local v16, "d6":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v0, v3

    move-wide/from16 v18, v0

    .line 121
    .local v18, "d7":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v0, v3

    move-wide/from16 v20, v0

    .line 122
    .local v20, "d8":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v0, v3

    move-wide/from16 v22, v0

    .line 123
    .local v22, "d9":D
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    move/from16 v24, v0

    mul-float v3, v3, v24

    float-to-double v6, v3

    .line 124
    .local v6, "d10":D
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v4, v8

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 125
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v20, v18

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 126
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/16 v24, 0x0

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v22, v16

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 127
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v20, v18

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 128
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v24, 0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v4, v10

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 129
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/16 v24, 0x1

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v6, v14

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 130
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/16 v24, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v22, v16

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 131
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/16 v24, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v6, v14

    mul-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 132
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/16 v24, 0x2

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    add-double v28, v4, v12

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    sub-double v26, v26, v28

    aput-wide v26, v3, v24

    .line 133
    return-object v2
.end method

.method public getOrientation()Lcom/vivo/services/motion/gesture/util/Angle;
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    .line 138
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Angle;

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    iget v3, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v8

    float-to-double v2, v1

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v1, v4

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    mul-float/2addr v1, v8

    sub-float v1, v9, v1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    iget v3, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, v8

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v3, v8

    float-to-double v4, v3

    iget v3, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v3, v6

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    mul-float/2addr v3, v8

    sub-float v3, v9, v3

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/services/motion/gesture/util/Angle;-><init>(FFF)V

    return-object v0
.end method

.method public getW()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    return v0
.end method

.method public multiply(Lcom/vivo/services/motion/gesture/util/Quaternion;)Lcom/vivo/services/motion/gesture/util/Quaternion;
    .locals 10
    .param p1, "paramQuaternion"    # Lcom/vivo/services/motion/gesture/util/Quaternion;

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getW()F

    move-result v0

    .line 166
    .local v0, "f1":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getX()F

    move-result v1

    .line 167
    .local v1, "f2":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getY()F

    move-result v2

    .line 168
    .local v2, "f3":F
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getZ()F

    move-result v3

    .line 169
    .local v3, "f4":F
    new-instance v4, Lcom/vivo/services/motion/gesture/util/Quaternion;

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v6, v3

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v6, v1

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v7, v2

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iget v8, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v8, v3

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v9, v0

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/vivo/services/motion/gesture/util/Quaternion;-><init>(FFFF)V

    return-object v4
.end method

.method public norm()D
    .locals 3

    .prologue
    .line 177
    iget v0, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    iget v2, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public normalize()Lcom/vivo/services/motion/gesture/util/Quaternion;
    .locals 7

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/util/Quaternion;->norm()D

    move-result-wide v2

    double-to-float v0, v2

    .line 183
    .local v0, "f1":F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 185
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v0

    .line 186
    .local v1, "f2":F
    new-instance v2, Lcom/vivo/services/motion/gesture/util/Quaternion;

    iget v3, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    mul-float/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/vivo/services/motion/gesture/util/Quaternion;-><init>(FFFF)V

    .line 188
    .end local v1    # "f2":F
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/vivo/services/motion/gesture/util/Quaternion;->NaN:Lcom/vivo/services/motion/gesture/util/Quaternion;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quaternion [w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/motion/gesture/util/Quaternion;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
