.class public Landroid/view/animation/TweenerInterpolator;
.super Ljava/lang/Object;
.source "TweenerInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/TweenerInterpolator$1;,
        Landroid/view/animation/TweenerInterpolator$TweenerType;
    }
.end annotation


# instance fields
.field private mTweenerType:Landroid/view/animation/TweenerInterpolator$TweenerType;


# direct methods
.method public constructor <init>(Landroid/view/animation/TweenerInterpolator$TweenerType;)V
    .locals 1
    .param p1, "type"    # Landroid/view/animation/TweenerInterpolator$TweenerType;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/TweenerInterpolator;->mTweenerType:Landroid/view/animation/TweenerInterpolator$TweenerType;

    .line 51
    iput-object p1, p0, Landroid/view/animation/TweenerInterpolator;->mTweenerType:Landroid/view/animation/TweenerInterpolator$TweenerType;

    .line 52
    return-void
.end method

.method private bounce(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    const/high16 v4, 0x40f20000    # 7.5625f

    .line 299
    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 301
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    .line 313
    :goto_0
    return v0

    .line 303
    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 305
    float-to-double v0, p1

    const-wide v2, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    goto :goto_0

    .line 307
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 309
    float-to-double v0, p1

    const-wide v2, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    goto :goto_0

    .line 313
    :cond_2
    float-to-double v0, p1

    const-wide v2, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private bouncePast(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x40f20000    # 7.5625f

    .line 319
    const v0, 0x3eba2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 321
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    .line 333
    :goto_0
    return v0

    .line 323
    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 325
    float-to-double v0, p1

    const-wide v2, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    sub-float v0, v5, v0

    goto :goto_0

    .line 327
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 329
    float-to-double v0, p1

    const-wide v2, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    sub-float v0, v5, v0

    goto :goto_0

    .line 333
    :cond_2
    float-to-double v0, p1

    const-wide v2, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    sub-float v0, v5, v0

    goto :goto_0
.end method

.method private easeFrom(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 367
    float-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private easeFromTo(F)F
    .locals 8
    .param p1, "input"    # F

    .prologue
    .line 360
    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 361
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    float-to-double v2, p1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 362
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr p1, v2

    float-to-double v2, p1

    float-to-double v4, p1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method private easeInBack(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 278
    const v0, 0x3fd9cd60

    .line 279
    .local v0, "s":F
    mul-float v1, p1, p1

    const v2, 0x402ce6b0

    mul-float/2addr v2, p1

    const v3, 0x3fd9cd60

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method private easeInCirc(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 260
    mul-float v0, p1, p1

    sub-float v0, v1, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method

.method private easeInCubic(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 166
    float-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private easeInExpo(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 238
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method private easeInOutBack(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const v4, 0x3fc33333    # 1.525f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 290
    const v0, 0x3fd9cd60

    .line 291
    .local v0, "s":F
    div-float/2addr p1, v3

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 292
    mul-float v1, p1, p1

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    .line 293
    :goto_0
    return v1

    :cond_0
    sub-float/2addr p1, v5

    mul-float v1, p1, p1

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    mul-float/2addr v1, v3

    goto :goto_0
.end method

.method private easeInOutCirc(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 270
    div-float/2addr p1, v1

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    .line 271
    const/high16 v0, -0x41000000    # -0.5f

    mul-float v1, p1, p1

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 272
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr p1, v0

    mul-float v0, p1, p1

    sub-float v0, v2, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private easeInOutCubic(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 176
    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 177
    float-to-double v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-float v0, v0

    goto :goto_0
.end method

.method private easeInOutExpo(F)F
    .locals 8
    .param p1, "input"    # F

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 248
    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    .line 254
    :goto_0
    return v0

    .line 250
    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    move v0, v1

    .line 251
    goto :goto_0

    .line 252
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 253
    const/high16 v0, 0x41200000    # 10.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    goto :goto_0

    .line 254
    :cond_2
    const/high16 v0, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v4

    mul-double/2addr v0, v6

    double-to-float v0, v0

    goto :goto_0
.end method

.method private easeInOutQuad(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 158
    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 159
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    float-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    sub-float/2addr p1, v2

    mul-float v1, p1, p1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private easeInOutQuart(F)F
    .locals 8
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 194
    float-to-double v0, p1

    div-double/2addr v0, v4

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 196
    float-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    .line 198
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr p1, v2

    float-to-double v2, p1

    float-to-double v4, p1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method private easeInOutQuint(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 214
    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 215
    float-to-double v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-float v0, v0

    goto :goto_0
.end method

.method private easeInOutSine(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 232
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    float-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private easeInQuad(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 148
    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private easeInQuart(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 184
    float-to-double v0, p1

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private easeInQuint(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 204
    float-to-double v0, p1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private easeInSine(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 222
    float-to-double v0, p1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method private easeOutBack(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 284
    const v0, 0x3fd9cd60

    .line 285
    .local v0, "s":F
    sub-float/2addr p1, v4

    mul-float v1, p1, p1

    const v2, 0x402ce6b0

    mul-float/2addr v2, p1

    const v3, 0x3fd9cd60

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    return v1
.end method

.method private easeOutBounce(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    const/high16 v4, 0x40f20000    # 7.5625f

    .line 339
    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 341
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    .line 353
    :goto_0
    return v0

    .line 343
    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 345
    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    goto :goto_0

    .line 347
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 349
    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    goto :goto_0

    .line 353
    :cond_2
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private easeOutCirc(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 265
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p1, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private easeOutCubic(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private easeOutExpo(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 243
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    :goto_0
    double-to-float v0, v0

    return v0

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v4, -0x3ee00000    # -10.0f

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private easeOutQuad(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    return v0
.end method

.method private easeOutQuart(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 189
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    neg-double v0, v0

    double-to-float v0, v0

    return v0
.end method

.method private easeOutQuint(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 209
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private easeOutSine(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 227
    float-to-double v0, p1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method private easeTo(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 372
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private elastic(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 398
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    const/high16 v4, -0x3f000000    # -8.0f

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private flicker(F)F
    .locals 8
    .param p1, "input"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 413
    float-to-double v2, p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float p1, v2

    .line 414
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    .end local p1    # "input":F
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->sinusoidal(F)F

    move-result v0

    return v0

    .restart local p1    # "input":F
    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method private linear(F)F
    .locals 0
    .param p1, "input"    # F

    .prologue
    .line 429
    return p1
.end method

.method private reverse(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 408
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method

.method private sinusoidal(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 403
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private spring(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 424
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x40900000    # 4.5f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-float v4, p1

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private swingFrom(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 385
    const v0, 0x3fd9cd60

    .line 386
    .local v0, "s":F
    mul-float v1, p1, p1

    const v2, 0x402ce6b0

    mul-float/2addr v2, p1

    const v3, 0x3fd9cd60

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    return v1
.end method

.method private swingFromTo(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const v4, 0x3fc33333    # 1.525f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 378
    const v0, 0x3fd9cd60

    .line 379
    .local v0, "s":F
    div-float/2addr p1, v3

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    mul-float v1, p1, p1

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    :goto_0
    return v1

    :cond_0
    sub-float/2addr p1, v5

    mul-float v1, p1, p1

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v5

    mul-float/2addr v1, v3

    goto :goto_0
.end method

.method private swingTo(F)F
    .locals 5
    .param p1, "input"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 391
    const v0, 0x3fd9cd60

    .line 392
    .local v0, "s":F
    sub-float/2addr p1, v4

    mul-float v1, p1, p1

    const v2, 0x402ce6b0

    mul-float/2addr v2, p1

    const v3, 0x3fd9cd60

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    return v1
.end method

.method private wobble(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    .line 419
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    .line 59
    sget-object v0, Landroid/view/animation/TweenerInterpolator$1;->$SwitchMap$android$view$animation$TweenerInterpolator$TweenerType:[I

    iget-object v1, p0, Landroid/view/animation/TweenerInterpolator;->mTweenerType:Landroid/view/animation/TweenerInterpolator$TweenerType;

    invoke-virtual {v1}, Landroid/view/animation/TweenerInterpolator$TweenerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->linear(F)F

    move-result v0

    :goto_0
    return v0

    .line 62
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInQuad(F)F

    move-result v0

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeOutQuad(F)F

    move-result v0

    goto :goto_0

    .line 66
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInOutQuad(F)F

    move-result v0

    goto :goto_0

    .line 68
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInCubic(F)F

    move-result v0

    goto :goto_0

    .line 70
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeOutCubic(F)F

    move-result v0

    goto :goto_0

    .line 72
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInOutCubic(F)F

    .line 74
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInQuart(F)F

    move-result v0

    goto :goto_0

    .line 76
    :pswitch_7
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeOutQuart(F)F

    move-result v0

    goto :goto_0

    .line 78
    :pswitch_8
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInOutQuart(F)F

    move-result v0

    goto :goto_0

    .line 80
    :pswitch_9
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInQuint(F)F

    move-result v0

    goto :goto_0

    .line 82
    :pswitch_a
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeOutQuint(F)F

    move-result v0

    goto :goto_0

    .line 84
    :pswitch_b
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInOutQuint(F)F

    move-result v0

    goto :goto_0

    .line 86
    :pswitch_c
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInSine(F)F

    move-result v0

    goto :goto_0

    .line 88
    :pswitch_d
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeOutSine(F)F

    move-result v0

    goto :goto_0

    .line 90
    :pswitch_e
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInOutSine(F)F

    move-result v0

    goto :goto_0

    .line 92
    :pswitch_f
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInExpo(F)F

    move-result v0

    goto :goto_0

    .line 94
    :pswitch_10
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeOutExpo(F)F

    move-result v0

    goto :goto_0

    .line 96
    :pswitch_11
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInOutExpo(F)F

    move-result v0

    goto :goto_0

    .line 98
    :pswitch_12
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInCirc(F)F

    move-result v0

    goto :goto_0

    .line 100
    :pswitch_13
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeOutCirc(F)F

    move-result v0

    goto :goto_0

    .line 102
    :pswitch_14
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInOutCirc(F)F

    move-result v0

    goto :goto_0

    .line 104
    :pswitch_15
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInBack(F)F

    move-result v0

    goto :goto_0

    .line 106
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeOutBack(F)F

    move-result v0

    goto :goto_0

    .line 108
    :pswitch_17
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeInOutBack(F)F

    move-result v0

    goto :goto_0

    .line 110
    :pswitch_18
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->bounce(F)F

    move-result v0

    goto :goto_0

    .line 112
    :pswitch_19
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->bouncePast(F)F

    move-result v0

    goto :goto_0

    .line 114
    :pswitch_1a
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeOutBounce(F)F

    move-result v0

    goto/16 :goto_0

    .line 116
    :pswitch_1b
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeFromTo(F)F

    move-result v0

    goto/16 :goto_0

    .line 118
    :pswitch_1c
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeFrom(F)F

    move-result v0

    goto/16 :goto_0

    .line 120
    :pswitch_1d
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->easeTo(F)F

    move-result v0

    goto/16 :goto_0

    .line 122
    :pswitch_1e
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->swingFromTo(F)F

    move-result v0

    goto/16 :goto_0

    .line 124
    :pswitch_1f
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->swingFrom(F)F

    move-result v0

    goto/16 :goto_0

    .line 126
    :pswitch_20
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->swingTo(F)F

    move-result v0

    goto/16 :goto_0

    .line 128
    :pswitch_21
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->elastic(F)F

    move-result v0

    goto/16 :goto_0

    .line 130
    :pswitch_22
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->sinusoidal(F)F

    move-result v0

    goto/16 :goto_0

    .line 132
    :pswitch_23
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->reverse(F)F

    move-result v0

    goto/16 :goto_0

    .line 134
    :pswitch_24
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->flicker(F)F

    move-result v0

    goto/16 :goto_0

    .line 136
    :pswitch_25
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->wobble(F)F

    move-result v0

    goto/16 :goto_0

    .line 138
    :pswitch_26
    invoke-direct {p0, p1}, Landroid/view/animation/TweenerInterpolator;->spring(F)F

    move-result v0

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method
