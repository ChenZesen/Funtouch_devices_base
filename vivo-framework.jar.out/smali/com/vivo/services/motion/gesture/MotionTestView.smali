.class public Lcom/vivo/services/motion/gesture/MotionTestView;
.super Ljava/lang/Object;
.source "MotionTestView.java"


# static fields
.field private static final NORM_SIZE:F = 200.0f

.field private static final TAG:Ljava/lang/String; = "MotionTest"

.field private static mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

.field private static singleMotionTestView:Lcom/vivo/services/motion/gesture/MotionTestView;


# instance fields
.field public capturing:Z

.field protected draw2d:Z

.field protected draw3d:Z

.field protected mGestureStatus:Ljava/lang/String;

.field public mNormal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

.field private mPaint:Landroid/graphics/Paint;

.field public mPath2d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field public mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

.field public mPath3d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field protected mRotation:Lcom/vivo/services/motion/gesture/util/Quaternion;

.field protected velocity:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/services/motion/gesture/MotionTestView;->singleMotionTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->capturing:Z

    .line 65
    iput-boolean v2, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->draw2d:Z

    .line 66
    iput-boolean v2, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->draw3d:Z

    .line 68
    iput-object v1, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    .line 69
    iput-object v1, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath3d:Ljava/util/Vector;

    .line 70
    iput-object v1, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mNormal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 73
    iput-object v1, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mGestureStatus:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Lcom/vivo/services/motion/gesture/GestureUtils;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/GestureUtils;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    .line 87
    return-void
.end method

.method private dataRotate()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 200
    const/4 v6, 0x0

    .line 201
    .local v6, "num":I
    iget-object v9, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_0

    .line 203
    iget-object v9, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v6

    .line 206
    :cond_0
    mul-int/lit8 v9, v6, 0x2

    new-array v7, v9, [F

    .line 207
    .local v7, "points":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 209
    mul-int/lit8 v9, v5, 0x2

    iget-object v10, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v10

    aput v10, v7, v9

    .line 210
    mul-int/lit8 v9, v5, 0x2

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v10

    aput v10, v7, v9

    .line 207
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 213
    :cond_1
    sget-object v9, Lcom/vivo/services/motion/gesture/MotionTestView;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    invoke-static {v7}, Lcom/vivo/services/motion/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v2

    .line 214
    .local v2, "centerData":[F
    aget v3, v2, v12

    .line 215
    .local v3, "centerDataX":F
    aget v4, v2, v11

    .line 217
    .local v4, "centerDataY":F
    sget-object v9, Lcom/vivo/services/motion/gesture/MotionTestView;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    neg-float v9, v3

    neg-float v10, v4

    invoke-static {v7, v9, v10}, Lcom/vivo/services/motion/gesture/GestureUtils;->translate([FFF)[F

    .line 218
    sget-object v9, Lcom/vivo/services/motion/gesture/MotionTestView;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    invoke-static {v7}, Lcom/vivo/services/motion/gesture/GestureUtils;->computeCoVariance([F)[[F

    move-result-object v1

    .line 219
    .local v1, "array":[[F
    sget-object v9, Lcom/vivo/services/motion/gesture/MotionTestView;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    invoke-static {v1}, Lcom/vivo/services/motion/gesture/GestureUtils;->computeOrientation([[F)[F

    move-result-object v8

    .line 221
    .local v8, "targetVector":[F
    aget v9, v8, v12

    cmpl-float v9, v9, v14

    if-nez v9, :cond_2

    aget v9, v8, v11

    cmpl-float v9, v9, v14

    if-nez v9, :cond_2

    .line 223
    const v0, -0x4036f025

    .line 231
    .local v0, "angle":F
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_3

    .line 233
    iget-object v9, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    new-instance v10, Lcom/vivo/services/motion/gesture/util/Vector3D;

    mul-int/lit8 v11, v5, 0x2

    aget v11, v7, v11

    add-float/2addr v11, v3

    mul-int/lit8 v12, v5, 0x2

    add-int/lit8 v12, v12, 0x1

    aget v12, v7, v12

    add-float/2addr v12, v4

    const/high16 v13, 0x43af0000    # 350.0f

    add-float/2addr v12, v13

    invoke-direct {v10, v11, v12, v14}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    aput-object v10, v9, v5

    .line 231
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 227
    .end local v0    # "angle":F
    :cond_2
    aget v9, v8, v11

    float-to-double v10, v9

    aget v9, v8, v12

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    double-to-float v0, v10

    .line 228
    .restart local v0    # "angle":F
    sget-object v9, Lcom/vivo/services/motion/gesture/MotionTestView;->mGestureUtils:Lcom/vivo/services/motion/gesture/GestureUtils;

    neg-float v9, v0

    invoke-static {v7, v9}, Lcom/vivo/services/motion/gesture/GestureUtils;->rotate([FF)[F

    goto :goto_1

    .line 235
    :cond_3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/services/motion/gesture/MotionTestView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionTestView;->singleMotionTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/vivo/services/motion/gesture/MotionTestView;

    invoke-direct {v0}, Lcom/vivo/services/motion/gesture/MotionTestView;-><init>()V

    sput-object v0, Lcom/vivo/services/motion/gesture/MotionTestView;->singleMotionTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    .line 100
    :cond_0
    sget-object v0, Lcom/vivo/services/motion/gesture/MotionTestView;->singleMotionTestView:Lcom/vivo/services/motion/gesture/MotionTestView;

    return-object v0
.end method

.method private project3D(Lcom/vivo/services/motion/gesture/util/Vector3D;)[I
    .locals 6
    .param p1, "paramVector3D"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    const/high16 v5, 0x44fa0000    # 2000.0f

    .line 239
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 240
    .local v0, "arrayOfInt":[I
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mRotation:Lcom/vivo/services/motion/gesture/util/Quaternion;

    invoke-virtual {v2, p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->applyTo(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v2

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->scalarMultiply(F)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v1

    .line 241
    .local v1, "localVector3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-virtual {v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v4

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit16 v3, v3, 0x190

    aput v3, v0, v2

    .line 242
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-virtual {v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v4

    add-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    rsub-int v3, v3, 0x3e8

    aput v3, v0, v2

    .line 244
    return-object v0
.end method


# virtual methods
.method public normalsize()V
    .locals 22

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v7

    .line 146
    .local v7, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v8

    .local v8, "maxX":F
    move v13, v8

    .line 147
    .local v13, "minX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v9

    .local v9, "maxY":F
    move v14, v9

    .line 148
    .local v14, "minY":F
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v2

    .line 151
    .local v2, "VectorX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v3

    .line 153
    .local v3, "VectorY":F
    cmpl-float v18, v2, v8

    if-lez v18, :cond_0

    move v8, v2

    .line 154
    :cond_0
    cmpg-float v18, v2, v13

    if-gez v18, :cond_1

    move v13, v2

    .line 156
    :cond_1
    cmpl-float v18, v3, v9

    if-lez v18, :cond_2

    move v9, v3

    .line 157
    :cond_2
    cmpg-float v18, v3, v14

    if-gez v18, :cond_3

    move v14, v3

    .line 148
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "VectorX":F
    .end local v3    # "VectorY":F
    :cond_4
    sub-float v11, v8, v13

    .line 162
    .local v11, "max_diff_x":F
    sub-float v12, v9, v14

    .line 163
    .local v12, "max_diff_y":F
    cmpl-float v18, v11, v12

    if-lez v18, :cond_5

    move v10, v11

    .line 164
    .local v10, "max_diff":F
    :goto_1
    const/high16 v18, 0x43480000    # 200.0f

    div-float v17, v18, v10

    .line 167
    .local v17, "ratio":F
    const/high16 v18, 0x43480000    # 200.0f

    sub-float v15, v18, v8

    .line 168
    .local v15, "offsetX":F
    const/high16 v18, 0x42480000    # 50.0f

    sub-float v16, v18, v14

    .line 170
    .local v16, "offsetY":F
    new-array v0, v7, [Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 171
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_6

    .line 173
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_7

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v18

    mul-float v18, v18, v17

    add-float v4, v18, v15

    .line 176
    .local v4, "X":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v18

    mul-float v18, v18, v17

    add-float v5, v18, v16

    .line 178
    .local v5, "Y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vivo/services/motion/gesture/util/Vector3D;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v4, v5, v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    aput-object v19, v18, v6

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v4    # "X":F
    .end local v5    # "Y":F
    .end local v10    # "max_diff":F
    .end local v15    # "offsetX":F
    .end local v16    # "offsetY":F
    .end local v17    # "ratio":F
    :cond_5
    move v10, v12

    .line 163
    goto :goto_1

    .line 184
    .restart local v10    # "max_diff":F
    .restart local v15    # "offsetX":F
    .restart local v16    # "offsetY":F
    .restart local v17    # "ratio":F
    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_7

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v18

    add-float v4, v18, v15

    .line 188
    .restart local v4    # "X":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2d:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v18

    add-float v5, v18, v16

    .line 190
    .restart local v5    # "Y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/MotionTestView;->mPath2dNomal:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-object/from16 v18, v0

    new-instance v19, Lcom/vivo/services/motion/gesture/util/Vector3D;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v4, v5, v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    aput-object v19, v18, v6

    .line 184
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 195
    .end local v4    # "X":F
    .end local v5    # "Y":F
    .end local v6    # "i":I
    .end local v7    # "max":I
    .end local v8    # "maxX":F
    .end local v9    # "maxY":F
    .end local v10    # "max_diff":F
    .end local v11    # "max_diff_x":F
    .end local v12    # "max_diff_y":F
    .end local v13    # "minX":F
    .end local v14    # "minY":F
    .end local v15    # "offsetX":F
    .end local v16    # "offsetY":F
    .end local v17    # "ratio":F
    :cond_7
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 112
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 113
    .local v0, "arrayOfFloat1":[F
    const/4 v2, 0x4

    new-array v1, v2, [F

    .line 115
    .local v1, "arrayOfFloat2":[F
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 117
    aget v2, v0, v5

    aput v2, v1, v4

    .line 118
    aget v2, v0, v4

    aput v2, v1, v5

    .line 119
    aget v2, v0, v6

    neg-float v2, v2

    aput v2, v1, v6

    .line 121
    aget v2, v1, v4

    aget v3, v1, v5

    aget v4, v1, v6

    invoke-static {v2, v3, v4}, Lcom/vivo/services/motion/gesture/util/Quaternion;->fromUnitVector(FFF)Lcom/vivo/services/motion/gesture/util/Quaternion;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/services/motion/gesture/MotionTestView;->mRotation:Lcom/vivo/services/motion/gesture/util/Quaternion;

    .line 134
    .end local v0    # "arrayOfFloat1":[F
    .end local v1    # "arrayOfFloat2":[F
    :cond_0
    return-void
.end method
