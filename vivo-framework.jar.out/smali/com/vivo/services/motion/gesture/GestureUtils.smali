.class public final Lcom/vivo/services/motion/gesture/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# static fields
.field private static final NONUNIFORM_SCALE:F

.field private static final SCALING_THRESHOLD:F = 0.26f

.field private static final TAG:Ljava/lang/String; = "GestureUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/vivo/services/motion/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "GestureUtils"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static computeCentroid([F)[F
    .locals 9
    .param p0, "points"    # [F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "centerX":F
    const/4 v2, 0x0

    .line 122
    .local v2, "centerY":F
    array-length v3, p0

    .line 123
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 124
    aget v5, p0, v4

    add-float/2addr v1, v5

    .line 125
    add-int/lit8 v4, v4, 0x1

    .line 126
    aget v5, p0, v4

    add-float/2addr v2, v5

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [F

    .line 129
    .local v0, "center":[F
    const/4 v5, 0x0

    mul-float v6, v8, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    .line 130
    const/4 v5, 0x1

    mul-float v6, v8, v2

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    .line 132
    return-object v0
.end method

.method public static computeCoVariance([F)[[F
    .locals 10
    .param p0, "points"    # [F

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    filled-new-array {v5, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 143
    .local v0, "array":[[F
    aget-object v5, v0, v8

    aput v7, v5, v8

    .line 144
    aget-object v5, v0, v8

    aput v7, v5, v9

    .line 145
    aget-object v5, v0, v9

    aput v7, v5, v8

    .line 146
    aget-object v5, v0, v9

    aput v7, v5, v9

    .line 147
    array-length v1, p0

    .line 148
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 149
    aget v3, p0, v2

    .line 150
    .local v3, "x":F
    add-int/lit8 v2, v2, 0x1

    .line 151
    aget v4, p0, v2

    .line 152
    .local v4, "y":F
    aget-object v5, v0, v8

    aget v6, v5, v8

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    aput v6, v5, v8

    .line 153
    aget-object v5, v0, v8

    aget v6, v5, v9

    mul-float v7, v3, v4

    add-float/2addr v6, v7

    aput v6, v5, v9

    .line 154
    aget-object v5, v0, v9

    aget-object v6, v0, v8

    aget v6, v6, v9

    aput v6, v5, v8

    .line 155
    aget-object v5, v0, v9

    aget v6, v5, v9

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    aput v6, v5, v9

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    aget-object v5, v0, v8

    aget v6, v5, v8

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v8

    .line 158
    aget-object v5, v0, v8

    aget v6, v5, v9

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    .line 159
    aget-object v5, v0, v9

    aget v6, v5, v8

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v8

    .line 160
    aget-object v5, v0, v9

    aget v6, v5, v9

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    .line 162
    return-object v0
.end method

.method public static computeOrientation([[F)[F
    .locals 12
    .param p0, "covarianceMatrix"    # [[F

    .prologue
    .line 254
    const/4 v8, 0x2

    new-array v6, v8, [F

    .line 255
    .local v6, "targetVector":[F
    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x1

    aget v8, v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    .line 256
    :cond_0
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v8

    .line 257
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 260
    :cond_1
    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    neg-float v8, v8

    const/4 v9, 0x1

    aget-object v9, p0, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float v0, v8, v9

    .line 261
    .local v0, "a":F
    const/4 v8, 0x0

    aget-object v8, p0, v8

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x1

    aget-object v9, p0, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, p0, v9

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x1

    aget-object v10, p0, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    sub-float v1, v8, v9

    .line 263
    .local v1, "b":F
    const/high16 v8, 0x40000000    # 2.0f

    div-float v7, v0, v8

    .line 264
    .local v7, "value":F
    float-to-double v8, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v1

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 265
    .local v5, "rightside":F
    neg-float v8, v7

    add-float v3, v8, v5

    .line 266
    .local v3, "lambda1":F
    neg-float v8, v7

    sub-float v4, v8, v5

    .line 267
    .local v4, "lambda2":F
    cmpl-float v8, v3, v4

    if-nez v8, :cond_2

    .line 268
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 269
    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 275
    :goto_0
    return-object v6

    .line 271
    :cond_2
    cmpl-float v8, v3, v4

    if-lez v8, :cond_3

    move v2, v3

    .line 272
    .local v2, "lambda":F
    :goto_1
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v6, v8

    .line 273
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, p0, v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v2, v9

    const/4 v10, 0x0

    aget-object v10, p0, v10

    const/4 v11, 0x1

    aget v10, v10, v11

    div-float/2addr v9, v10

    aput v9, v6, v8

    goto :goto_0

    .end local v2    # "lambda":F
    :cond_3
    move v2, v4

    .line 271
    goto :goto_1
.end method

.method static computeStraightness([F)F
    .locals 6
    .param p0, "points"    # [F

    .prologue
    .line 177
    invoke-static {p0}, Lcom/vivo/services/motion/gesture/GestureUtils;->computeTotalLength([F)F

    move-result v2

    .line 178
    .local v2, "totalLen":F
    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x0

    aget v4, p0, v4

    sub-float v0, v3, v4

    .line 179
    .local v0, "dx":F
    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x1

    aget v4, p0, v4

    sub-float v1, v3, v4

    .line 180
    .local v1, "dy":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    div-float/2addr v3, v2

    return v3
.end method

.method static computeStraightness([FF)F
    .locals 4
    .param p0, "points"    # [F
    .param p1, "totalLen"    # F

    .prologue
    .line 184
    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x0

    aget v3, p0, v3

    sub-float v0, v2, v3

    .line 185
    .local v0, "dx":F
    const/4 v2, 0x3

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    sub-float v1, v2, v3

    .line 186
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v2, p1

    return v2
.end method

.method static computeTotalLength([F)F
    .locals 10
    .param p0, "points"    # [F

    .prologue
    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, "sum":F
    array-length v5, p0

    add-int/lit8 v0, v5, -0x4

    .line 168
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 169
    add-int/lit8 v5, v3, 0x2

    aget v5, p0, v5

    aget v6, p0, v3

    sub-float v1, v5, v6

    .line 170
    .local v1, "dx":F
    add-int/lit8 v5, v3, 0x3

    aget v5, p0, v5

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    sub-float v2, v5, v6

    .line 171
    .local v2, "dy":F
    float-to-double v6, v4

    mul-float v5, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    double-to-float v4, v6

    .line 168
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 173
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_0
    return v4
.end method

.method static cosineDistance([F[F)F
    .locals 6
    .param p0, "vector1"    # [F
    .param p1, "vector2"    # [F

    .prologue
    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "sum":F
    array-length v1, p0

    .line 216
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 217
    aget v3, p0, v0

    aget v4, p1, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method static minimumCosineDistance([F[FI)F
    .locals 20
    .param p0, "vector1"    # [F
    .param p1, "vector2"    # [F
    .param p2, "numOrientations"    # I

    .prologue
    .line 231
    move-object/from16 v0, p0

    array-length v9, v0

    .line 232
    .local v9, "len":I
    const/4 v2, 0x0

    .line 233
    .local v2, "a":F
    const/4 v3, 0x0

    .line 234
    .local v3, "b":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 235
    aget v13, p0, v8

    aget v14, p1, v8

    mul-float/2addr v13, v14

    add-int/lit8 v14, v8, 0x1

    aget v14, p0, v14

    add-int/lit8 v15, v8, 0x1

    aget v15, p1, v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    add-float/2addr v2, v13

    .line 236
    aget v13, p0, v8

    add-int/lit8 v14, v8, 0x1

    aget v14, p1, v14

    mul-float/2addr v13, v14

    add-int/lit8 v14, v8, 0x1

    aget v14, p0, v14

    aget v15, p1, v8

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    add-float/2addr v3, v13

    .line 234
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 238
    :cond_0
    const/4 v13, 0x0

    cmpl-float v13, v2, v13

    if-eqz v13, :cond_2

    .line 239
    div-float v12, v3, v2

    .line 240
    .local v12, "tan":F
    float-to-double v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 241
    .local v4, "angle":D
    const/4 v13, 0x2

    move/from16 v0, p2

    if-le v0, v13, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    cmpl-double v13, v14, v16

    if-ltz v13, :cond_1

    .line 242
    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    double-to-float v13, v14

    .line 249
    .end local v4    # "angle":D
    .end local v12    # "tan":F
    :goto_1
    return v13

    .line 244
    .restart local v4    # "angle":D
    .restart local v12    # "tan":F
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 245
    .local v6, "cosine":D
    float-to-double v14, v12

    mul-double v10, v6, v14

    .line 246
    .local v10, "sine":D
    float-to-double v14, v2

    mul-double/2addr v14, v6

    float-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->acos(D)D

    move-result-wide v14

    double-to-float v13, v14

    goto :goto_1

    .line 249
    .end local v4    # "angle":D
    .end local v6    # "cosine":D
    .end local v10    # "sine":D
    .end local v12    # "tan":F
    :cond_2
    const v13, 0x3fc90fdb

    goto :goto_1
.end method

.method private static plot(FF[FI)V
    .locals 26
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sample"    # [F
    .param p3, "sampleSize"    # I

    .prologue
    .line 63
    const/16 v19, 0x0

    cmpg-float v19, p0, v19

    if-gez v19, :cond_0

    const/16 p0, 0x0

    .line 64
    :cond_0
    const/16 v19, 0x0

    cmpg-float v19, p1, v19

    if-gez v19, :cond_1

    const/16 p1, 0x0

    .line 65
    :cond_1
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v12, v0

    .line 66
    .local v12, "xFloor":I
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v9, v0

    .line 67
    .local v9, "xCeiling":I
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v18, v0

    .line 68
    .local v18, "yFloor":I
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v13, v0

    .line 71
    .local v13, "yCeiling":I
    int-to-float v0, v12

    move/from16 v19, v0

    cmpl-float v19, p0, v19

    if-nez v19, :cond_3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, p1, v19

    if-nez v19, :cond_3

    .line 72
    mul-int v19, v13, p3

    add-int v4, v19, v9

    .line 73
    .local v4, "index":I
    aget v19, p2, v4

    const/high16 v22, 0x3f800000    # 1.0f

    cmpg-float v19, v19, v22

    if-gez v19, :cond_2

    .line 74
    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, p2, v4

    .line 111
    :cond_2
    :goto_0
    return-void

    .line 77
    .end local v4    # "index":I
    :cond_3
    int-to-float v0, v12

    move/from16 v19, v0

    sub-float v19, v19, p0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 78
    .local v14, "xFloorSq":D
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, p1

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    .line 79
    .local v20, "yFloorSq":D
    int-to-float v0, v9

    move/from16 v19, v0

    sub-float v19, v19, p0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 80
    .local v10, "xCeilingSq":D
    int-to-float v0, v13

    move/from16 v19, v0

    sub-float v19, v19, p1

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 81
    .local v16, "yCeilingSq":D
    add-double v22, v14, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v6, v0

    .line 82
    .local v6, "topLeft":F
    add-double v22, v10, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v7, v0

    .line 83
    .local v7, "topRight":F
    add-double v22, v14, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v2, v0

    .line 84
    .local v2, "btmLeft":F
    add-double v22, v10, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v3, v0

    .line 85
    .local v3, "btmRight":F
    add-float v19, v6, v7

    add-float v19, v19, v2

    add-float v5, v19, v3

    .line 87
    .local v5, "sum":F
    div-float v8, v6, v5

    .line 88
    .local v8, "value":F
    mul-int v19, v18, p3

    add-int v4, v19, v12

    .line 89
    .restart local v4    # "index":I
    aget v19, p2, v4

    cmpl-float v19, v8, v19

    if-lez v19, :cond_4

    .line 90
    aput v8, p2, v4

    .line 93
    :cond_4
    div-float v8, v7, v5

    .line 94
    mul-int v19, v18, p3

    add-int v4, v19, v9

    .line 95
    aget v19, p2, v4

    cmpl-float v19, v8, v19

    if-lez v19, :cond_5

    .line 96
    aput v8, p2, v4

    .line 99
    :cond_5
    div-float v8, v2, v5

    .line 100
    mul-int v19, v13, p3

    add-int v4, v19, v12

    .line 101
    aget v19, p2, v4

    cmpl-float v19, v8, v19

    if-lez v19, :cond_6

    .line 102
    aput v8, p2, v4

    .line 105
    :cond_6
    div-float v8, v3, v5

    .line 106
    mul-int v19, v13, p3

    add-int v4, v19, v9

    .line 107
    aget v19, p2, v4

    cmpl-float v19, v8, v19

    if-lez v19, :cond_2

    .line 108
    aput v8, p2, v4

    goto/16 :goto_0
.end method

.method static rotate([FF)[F
    .locals 8
    .param p0, "points"    # [F
    .param p1, "angle"    # F

    .prologue
    .line 280
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 281
    .local v0, "cos":F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 282
    .local v2, "sin":F
    array-length v3, p0

    .line 283
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 284
    aget v6, p0, v1

    mul-float/2addr v6, v0

    add-int/lit8 v7, v1, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v2

    sub-float v4, v6, v7

    .line 285
    .local v4, "x":F
    aget v6, p0, v1

    mul-float/2addr v6, v2

    add-int/lit8 v7, v1, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v0

    add-float v5, v6, v7

    .line 286
    .local v5, "y":F
    aput v4, p0, v1

    .line 287
    add-int/lit8 v6, v1, 0x1

    aput v5, p0, v6

    .line 283
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 289
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return-object p0
.end method

.method static scale([FFF)[F
    .locals 4
    .param p0, "points"    # [F
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 302
    array-length v1, p0

    .line 303
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 304
    aget v2, p0, v0

    mul-float/2addr v2, p1

    aput v2, p0, v0

    .line 305
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, p2

    aput v3, p0, v2

    .line 303
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 307
    :cond_0
    return-object p0
.end method

.method static squaredEuclideanDistance([F[F)F
    .locals 6
    .param p0, "vector1"    # [F
    .param p1, "vector2"    # [F

    .prologue
    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, "squaredDistance":F
    array-length v2, p0

    .line 199
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 200
    aget v4, p0, v1

    aget v5, p1, v1

    sub-float v0, v4, v5

    .line 201
    .local v0, "difference":F
    mul-float v4, v0, v0

    add-float/2addr v3, v4

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "difference":F
    :cond_0
    int-to-float v4, v2

    div-float v4, v3, v4

    return v4
.end method

.method static translate([FFF)[F
    .locals 4
    .param p0, "points"    # [F
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 293
    array-length v1, p0

    .line 294
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 295
    aget v2, p0, v0

    add-float/2addr v2, p1

    aput v2, p0, v0

    .line 296
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    add-float/2addr v3, p2

    aput v3, p0, v2

    .line 294
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 298
    :cond_0
    return-object p0
.end method
