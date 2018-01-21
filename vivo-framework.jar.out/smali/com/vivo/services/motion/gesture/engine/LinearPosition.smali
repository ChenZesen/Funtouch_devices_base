.class public Lcom/vivo/services/motion/gesture/engine/LinearPosition;
.super Ljava/lang/Object;
.source "LinearPosition.java"


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x3e8

.field private static PathDistance:D = 0.0

.field private static final TAG:Ljava/lang/String; = "LinearPosition"

.field private static final effectCont:I = 0x28

.field private static final effectDistance:D = 260.0

.field private static final headOffSet:D = 0.01

.field private static final tailOffSet:D = 0.1

.field private static final triggerLevel:F = 0.35f


# instance fields
.field public NormalIndex:[I

.field public NormalVectors:[Lcom/vivo/services/motion/gesture/util/Vector3D;

.field public PathBuffer2D:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field public PathBuffer3D:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field private capturing:Z

.field private integrator:Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;

.field private prev3DPonit:Lcom/vivo/services/motion/gesture/util/Vector3D;

.field public rotBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field private trigger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathDistance:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->capturing:Z

    .line 31
    iput-boolean v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->trigger:Z

    .line 32
    iput-object v1, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->integrator:Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;

    .line 41
    iput-object v1, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->prev3DPonit:Lcom/vivo/services/motion/gesture/util/Vector3D;

    return-void
.end method

.method private get2DMatrix([Lcom/vivo/services/motion/gesture/util/Vector3D;Lcom/vivo/services/motion/gesture/util/Vector3D;)[[F
    .locals 28
    .param p1, "deviceAxes"    # [Lcom/vivo/services/motion/gesture/util/Vector3D;
    .param p2, "normal"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    .line 214
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v4, v0, [D

    .line 218
    .local v4, "arrayOfDouble":[D
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 219
    .local v10, "d1":D
    const/4 v9, -0x1

    .line 227
    .local v9, "i":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_0
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v14, v0, :cond_1

    .line 229
    aget-object v22, p1, v14

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->dotProduct(Lcom/vivo/services/motion/gesture/util/Vector3D;)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v4, v14

    .line 230
    aget-wide v22, v4, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 231
    .local v12, "d2":D
    cmpl-double v22, v12, v10

    if-ltz v22, :cond_0

    .line 233
    move-wide v10, v12

    .line 234
    move v9, v14

    .line 227
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 240
    .end local v12    # "d2":D
    :cond_1
    const/16 v22, 0x0

    aget-wide v22, v4, v22

    const/16 v24, 0x0

    aget-wide v24, v4, v24

    mul-double v22, v22, v24

    const/16 v24, 0x1

    aget-wide v24, v4, v24

    const/16 v26, 0x1

    aget-wide v26, v4, v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const/16 v24, 0x2

    aget-wide v24, v4, v24

    const/16 v26, 0x2

    aget-wide v26, v4, v26

    mul-double v24, v24, v26

    add-double v20, v22, v24

    .line 243
    .local v20, "temp":D
    invoke-virtual/range {p2 .. p2}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3feccccccccccccdL    # 0.9

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_3

    .line 245
    const-string v22, "LinearPosition"

    const-string v23, "plane is level"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v22, 0x0

    aget-wide v22, v4, v22

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_2

    sget-object v22, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v15

    .line 256
    .local v15, "localVector3D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    :goto_1
    const/16 v22, 0x0

    aget-object v16, p1, v22

    .line 269
    .local v16, "localVector3D2":Lcom/vivo/services/motion/gesture/util/Vector3D;
    :goto_2
    sget-object v22, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v17

    .line 270
    .local v17, "localVector3D3":Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-virtual/range {v16 .. v17}, Lcom/vivo/services/motion/gesture/util/Vector3D;->crossProduct(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v18

    .line 271
    .local v18, "localVector3D4":Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-virtual/range {v17 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->crossProduct(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v19

    .line 275
    .local v19, "localVector3D5":Lcom/vivo/services/motion/gesture/util/Vector3D;
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v5, v0, [[F

    .line 276
    .local v5, "arrayOfFloat":[[F
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v6, v0, [F

    .line 277
    .local v6, "arrayOfFloat1":[F
    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v23

    aput v23, v6, v22

    .line 278
    const/16 v22, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v23

    aput v23, v6, v22

    .line 279
    const/16 v22, 0x2

    invoke-virtual/range {v18 .. v18}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v23

    aput v23, v6, v22

    .line 280
    const/16 v22, 0x0

    aput-object v6, v5, v22

    .line 281
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v7, v0, [F

    .line 282
    .local v7, "arrayOfFloat2":[F
    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v23

    aput v23, v7, v22

    .line 283
    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v23

    aput v23, v7, v22

    .line 284
    const/16 v22, 0x2

    invoke-virtual/range {v19 .. v19}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v23

    aput v23, v7, v22

    .line 285
    const/16 v22, 0x1

    aput-object v7, v5, v22

    .line 286
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v8, v0, [F

    .line 287
    .local v8, "arrayOfFloat3":[F
    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v23

    aput v23, v8, v22

    .line 288
    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v23

    aput v23, v8, v22

    .line 289
    const/16 v22, 0x2

    invoke-virtual/range {v17 .. v17}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v23

    aput v23, v8, v22

    .line 290
    const/16 v22, 0x2

    aput-object v8, v5, v22

    .line 292
    return-object v5

    .end local v5    # "arrayOfFloat":[[F
    .end local v6    # "arrayOfFloat1":[F
    .end local v7    # "arrayOfFloat2":[F
    .end local v8    # "arrayOfFloat3":[F
    .end local v15    # "localVector3D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v16    # "localVector3D2":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v17    # "localVector3D3":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v18    # "localVector3D4":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v19    # "localVector3D5":Lcom/vivo/services/motion/gesture/util/Vector3D;
    :cond_2
    move-object/from16 v15, p2

    .line 255
    goto/16 :goto_1

    .line 261
    :cond_3
    const-string v22, "LinearPosition"

    const-string v23, "plane is not level"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v16, Lcom/vivo/services/motion/gesture/util/Vector3D;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, -0x40800000    # -1.0f

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    .line 263
    .restart local v16    # "localVector3D2":Lcom/vivo/services/motion/gesture/util/Vector3D;
    aget-wide v22, v4, v9

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_4

    .line 264
    move-object/from16 v15, p2

    .restart local v15    # "localVector3D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    goto/16 :goto_2

    .line 266
    .end local v15    # "localVector3D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    :cond_4
    sget-object v22, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v15

    .restart local v15    # "localVector3D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    goto/16 :goto_2
.end method

.method private get2DPath(Ljava/util/Vector;[Lcom/vivo/services/motion/gesture/util/Vector3D;Lcom/vivo/services/motion/gesture/util/Vector3D;)V
    .locals 9
    .param p2, "deviceAxes"    # [Lcom/vivo/services/motion/gesture/util/Vector3D;
    .param p3, "normal"    # Lcom/vivo/services/motion/gesture/util/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;[",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "pathVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vivo/services/motion/gesture/util/Vector3D;>;"
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer2D:Ljava/util/Vector;

    .line 310
    .local v2, "localVector":Ljava/util/Vector;
    invoke-direct {p0, p2, p3}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->get2DMatrix([Lcom/vivo/services/motion/gesture/util/Vector3D;Lcom/vivo/services/motion/gesture/util/Vector3D;)[[F

    move-result-object v0

    .line 325
    .local v0, "Matrix2D":[[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 327
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 328
    .local v4, "point3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-direct {p0, v4, v0}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->get2DSingleVector(Lcom/vivo/services/motion/gesture/util/Vector3D;[[F)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v3

    .line 330
    .local v3, "point2D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    new-instance v5, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v7

    neg-float v7, v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v3    # "point2D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v4    # "point3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    :cond_0
    return-void
.end method

.method private get2DSingleVector(Lcom/vivo/services/motion/gesture/util/Vector3D;[[F)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 8
    .param p1, "pathVector"    # Lcom/vivo/services/motion/gesture/util/Vector3D;
    .param p2, "Matrix"    # [[F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 297
    new-instance v0, Lcom/vivo/services/motion/gesture/util/Vector3D;

    aget-object v1, p2, v5

    aget v1, v1, v5

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v2

    mul-float/2addr v1, v2

    aget-object v2, p2, v5

    aget v2, v2, v6

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget-object v2, p2, v5

    aget v2, v2, v7

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget-object v2, p2, v6

    aget v2, v2, v5

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    aget-object v3, p2, v6

    aget v3, v3, v6

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aget-object v3, p2, v6

    aget v3, v3, v7

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aget-object v3, p2, v7

    aget v3, v3, v5

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    aget-object v4, p2, v7

    aget v4, v4, v6

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aget-object v4, p2, v7

    aget v4, v4, v7

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    .line 302
    .local v0, "localVector":Lcom/vivo/services/motion/gesture/util/Vector3D;
    return-object v0
.end method

.method private getDeviceAxes(Ljava/util/Vector;)[Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Quaternion;",
            ">;)[",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;"
        }
    .end annotation

    .prologue
    .local p1, "paramVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vivo/services/motion/gesture/util/Quaternion;>;"
    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 53
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 54
    .local v2, "size":I
    const/4 v3, 0x3

    new-array v0, v3, [Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 57
    .local v0, "axesVector3D":[Lcom/vivo/services/motion/gesture/util/Vector3D;
    iget-object v3, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->NormalIndex:[I

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/motion/gesture/util/Quaternion;

    .line 58
    .local v1, "localQuaternion":Lcom/vivo/services/motion/gesture/util/Quaternion;
    new-instance v3, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-direct {v3, v6, v5, v5}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v1, v3}, Lcom/vivo/services/motion/gesture/util/Quaternion;->applyInverseTo(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v3

    aput-object v3, v0, v4

    .line 59
    const/4 v3, 0x1

    new-instance v4, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-direct {v4, v5, v6, v5}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v1, v4}, Lcom/vivo/services/motion/gesture/util/Quaternion;->applyInverseTo(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v4

    aput-object v4, v0, v3

    .line 60
    const/4 v3, 0x2

    new-instance v4, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-direct {v4, v5, v5, v6}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v1, v4}, Lcom/vivo/services/motion/gesture/util/Quaternion;->applyInverseTo(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v4

    aput-object v4, v0, v3

    .line 62
    return-object v0
.end method

.method private getPlaneNormal(Ljava/util/Vector;)Lcom/vivo/services/motion/gesture/util/Vector3D;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;",
            ">;)",
            "Lcom/vivo/services/motion/gesture/util/Vector3D;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "paramVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vivo/services/motion/gesture/util/Vector3D;>;"
    const/16 v19, 0x0

    .line 69
    .local v19, "start":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v20

    .line 73
    .local v20, "stop":I
    const/4 v12, 0x0

    .line 74
    .local v12, "localObject1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    const/4 v13, 0x0

    .line 75
    .local v13, "localObject2":Lcom/vivo/services/motion/gesture/util/Vector3D;
    const/4 v14, 0x0

    .line 77
    .local v14, "localObject3":Lcom/vivo/services/motion/gesture/util/Vector3D;
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 79
    .local v2, "d1":D
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 82
    .local v6, "d3":D
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->NormalIndex:[I

    .line 87
    move/from16 v10, v19

    .local v10, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v10, v0, :cond_2

    .line 89
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 90
    .local v15, "localVector3D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    move v11, v10

    .local v11, "j":I
    :goto_1
    move/from16 v0, v20

    if-ge v11, v0, :cond_1

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 93
    .local v16, "localVector3D2":Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-virtual/range {v15 .. v16}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v4

    .line 95
    .local v4, "d2":D
    cmpl-double v21, v4, v2

    if-lez v21, :cond_0

    .line 97
    move-wide v2, v4

    .line 98
    move-object v12, v15

    .line 99
    move-object/from16 v13, v16

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->NormalIndex:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v10, v21, v22

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->NormalIndex:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput v11, v21, v22

    .line 90
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 87
    .end local v4    # "d2":D
    .end local v16    # "localVector3D2":Lcom/vivo/services/motion/gesture/util/Vector3D;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 111
    .end local v11    # "j":I
    .end local v15    # "localVector3D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    :cond_2
    move/from16 v10, v19

    :goto_2
    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 113
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 114
    .local v17, "localVector3D3":Lcom/vivo/services/motion/gesture/util/Vector3D;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Lcom/vivo/services/motion/gesture/util/Vector3D;->distanceFromLine(Lcom/vivo/services/motion/gesture/util/Vector3D;Lcom/vivo/services/motion/gesture/util/Vector3D;)F

    move-result v21

    move/from16 v0, v21

    float-to-double v8, v0

    .line 115
    .local v8, "d4":D
    cmpl-double v21, v8, v6

    if-lez v21, :cond_3

    .line 117
    move-wide v6, v8

    .line 118
    move-object/from16 v14, v17

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->NormalIndex:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aput v10, v21, v22

    .line 111
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 141
    .end local v8    # "d4":D
    .end local v17    # "localVector3D3":Lcom/vivo/services/motion/gesture/util/Vector3D;
    :cond_4
    invoke-virtual {v13, v12}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v21

    invoke-virtual {v14, v12}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/vivo/services/motion/gesture/util/Vector3D;->crossProduct(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/vivo/services/motion/gesture/util/Vector3D;->normalize()Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v18

    .line 142
    .local v18, "localVector3D4":Lcom/vivo/services/motion/gesture/util/Vector3D;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v18, v21, v22

    const/16 v22, 0x1

    aput-object v12, v21, v22

    const/16 v22, 0x2

    aput-object v13, v21, v22

    const/16 v22, 0x3

    aput-object v14, v21, v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->NormalVectors:[Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 144
    return-object v18
.end method

.method private isEqual(Lcom/vivo/services/motion/gesture/util/Quaternion;Lcom/vivo/services/motion/gesture/util/Quaternion;)Z
    .locals 3
    .param p1, "paramQuaternion1"    # Lcom/vivo/services/motion/gesture/util/Quaternion;
    .param p2, "paramQuaternion2"    # Lcom/vivo/services/motion/gesture/util/Quaternion;

    .prologue
    const/4 v0, 0x0

    .line 149
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getW()F

    move-result v1

    invoke-virtual {p2}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getW()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getZ()F

    move-result v1

    invoke-virtual {p2}, Lcom/vivo/services/motion/gesture/util/Quaternion;->getZ()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isEqual(Lcom/vivo/services/motion/gesture/util/Vector3D;Lcom/vivo/services/motion/gesture/util/Vector3D;)Z
    .locals 3
    .param p1, "paramVector3D1"    # Lcom/vivo/services/motion/gesture/util/Vector3D;
    .param p2, "paramVector3D2"    # Lcom/vivo/services/motion/gesture/util/Vector3D;

    .prologue
    const/4 v0, 0x0

    .line 163
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v1

    invoke-virtual {p2}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 169
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private process()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 176
    const-string v7, "LinearPosition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "process: distance "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%.4f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    sget-wide v12, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathDistance:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v7, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/16 v8, 0x28

    if-le v7, v8, :cond_2

    sget-wide v8, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathDistance:D

    const-wide v10, 0x4070400000000000L    # 260.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_2

    .line 181
    iget-object v7, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    .line 182
    .local v5, "size":I
    int-to-double v8, v5

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 183
    .local v0, "headCut":I
    int-to-double v8, v5

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 185
    .local v6, "tailCut":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    iget-object v7, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    invoke-virtual {v7, v14}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 189
    iget-object v7, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->rotBuffer:Ljava/util/Vector;

    invoke-virtual {v7, v14}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_1

    .line 194
    iget-object v7, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    .line 195
    iget-object v7, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 196
    iget-object v7, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->rotBuffer:Ljava/util/Vector;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    .line 201
    .local v2, "localVector1":Ljava/util/Vector;
    invoke-direct {p0, v2}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->getPlaneNormal(Ljava/util/Vector;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v4

    .line 202
    .local v4, "localVector3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    iget-object v7, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->rotBuffer:Ljava/util/Vector;

    invoke-direct {p0, v7}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->getDeviceAxes(Ljava/util/Vector;)[Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v3

    .line 204
    .local v3, "localVector2":[Lcom/vivo/services/motion/gesture/util/Vector3D;
    invoke-direct {p0, v2, v3, v4}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->get2DPath(Ljava/util/Vector;[Lcom/vivo/services/motion/gesture/util/Vector3D;Lcom/vivo/services/motion/gesture/util/Vector3D;)V

    .line 210
    .end local v0    # "headCut":I
    .end local v1    # "i":I
    .end local v2    # "localVector1":Ljava/util/Vector;
    .end local v3    # "localVector2":[Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v4    # "localVector3D":Lcom/vivo/services/motion/gesture/util/Vector3D;
    .end local v5    # "size":I
    .end local v6    # "tailCut":I
    :goto_2
    return-void

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->reset()V

    goto :goto_2
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->capturing:Z

    return v0
.end method

.method public onSensorData(Lcom/vivo/services/motion/gesture/util/SensorData;)V
    .locals 14
    .param p1, "paramSensorData"    # Lcom/vivo/services/motion/gesture/util/SensorData;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 341
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/SensorData;->getAngularPosition()Lcom/vivo/services/motion/gesture/util/Quaternion;

    move-result-object v2

    .line 342
    .local v2, "localQuaternion":Lcom/vivo/services/motion/gesture/util/Quaternion;
    invoke-virtual {p1}, Lcom/vivo/services/motion/gesture/util/SensorData;->getLinearAccelerationNoGravity()Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v3

    .line 344
    .local v3, "localVector3D1":Lcom/vivo/services/motion/gesture/util/Vector3D;
    iget-boolean v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->trigger:Z

    if-nez v8, :cond_1

    .line 346
    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v8

    const-wide v10, 0x3fd6666660000000L    # 0.3499999940395355

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 347
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->trigger:Z

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    new-instance v8, Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getX()F

    move-result v9

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getY()F

    move-result v10

    invoke-virtual {v3}, Lcom/vivo/services/motion/gesture/util/Vector3D;->getZ()F

    move-result v11

    invoke-direct {v8, v9, v10, v11}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v2, v8}, Lcom/vivo/services/motion/gesture/util/Quaternion;->applyInverseTo(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v4

    .line 352
    .local v4, "localVector3D2":Lcom/vivo/services/motion/gesture/util/Vector3D;
    iget-object v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->integrator:Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;

    invoke-virtual {v8, v4}, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->process(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v5

    .line 353
    .local v5, "localVector3D3":Lcom/vivo/services/motion/gesture/util/Vector3D;
    new-instance v8, Lcom/vivo/services/motion/gesture/util/Vector3D;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v12, v12}, Lcom/vivo/services/motion/gesture/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v2, v8}, Lcom/vivo/services/motion/gesture/util/Quaternion;->applyInverseTo(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v6

    .line 354
    .local v6, "localVector3D4":Lcom/vivo/services/motion/gesture/util/Vector3D;
    const v0, 0x429fffff    # 79.99999f

    .line 355
    .local v0, "f1":F
    const/high16 v1, 0x44960000    # 1200.0f

    .line 356
    .local v1, "f2":F
    sget-object v8, Lcom/vivo/services/motion/gesture/util/Vector3D;->ZERO:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v8, v1, v5}, Lcom/vivo/services/motion/gesture/util/Vector3D;->add(FLcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v8

    invoke-virtual {v8, v0, v6}, Lcom/vivo/services/motion/gesture/util/Vector3D;->add(FLcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v7

    .line 359
    .local v7, "localVector3D5":Lcom/vivo/services/motion/gesture/util/Vector3D;
    iget-boolean v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->capturing:Z

    if-eqz v8, :cond_0

    .line 362
    iget-object v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->prev3DPonit:Lcom/vivo/services/motion/gesture/util/Vector3D;

    if-eqz v8, :cond_2

    .line 364
    sget-wide v8, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathDistance:D

    iget-object v10, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->prev3DPonit:Lcom/vivo/services/motion/gesture/util/Vector3D;

    invoke-virtual {v7, v10}, Lcom/vivo/services/motion/gesture/util/Vector3D;->subtract(Lcom/vivo/services/motion/gesture/util/Vector3D;)Lcom/vivo/services/motion/gesture/util/Vector3D;

    move-result-object v10

    invoke-virtual {v10}, Lcom/vivo/services/motion/gesture/util/Vector3D;->norm()D

    move-result-wide v10

    add-double/2addr v8, v10

    sput-wide v8, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathDistance:D

    .line 367
    :cond_2
    iget-object v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->rotBuffer:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/16 v9, 0x3e8

    if-le v8, v9, :cond_3

    .line 371
    iget-object v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    invoke-virtual {v8, v13}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 372
    iget-object v8, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->rotBuffer:Ljava/util/Vector;

    invoke-virtual {v8, v13}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 377
    :cond_3
    iput-object v7, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->prev3DPonit:Lcom/vivo/services/motion/gesture/util/Vector3D;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->reset(Z)V

    .line 384
    return-void
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "paramBoolean"    # Z

    .prologue
    const/16 v1, 0x3e8

    .line 388
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer3D:Ljava/util/Vector;

    .line 389
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathBuffer2D:Ljava/util/Vector;

    .line 390
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->rotBuffer:Ljava/util/Vector;

    .line 391
    new-instance v0, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;

    const v1, 0x3c23d70a    # 0.01f

    const v2, 0x3c03126f    # 0.008f

    invoke-direct {v0, v1, v2}, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;-><init>(FF)V

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->integrator:Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;

    .line 392
    iget-object v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->integrator:Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;

    invoke-virtual {v0}, Lcom/vivo/services/motion/gesture/engine/DoubleIntegrator3D;->resetPosition()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->prev3DPonit:Lcom/vivo/services/motion/gesture/util/Vector3D;

    .line 396
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->PathDistance:D

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->trigger:Z

    .line 398
    return-void
.end method

.method public setCapturing(Z)V
    .locals 1
    .param p1, "capture"    # Z

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->reset(Z)V

    .line 407
    :goto_0
    iput-boolean p1, p0, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->capturing:Z

    .line 408
    return-void

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/vivo/services/motion/gesture/engine/LinearPosition;->process()V

    goto :goto_0
.end method
