.class public Lcom/android/server/wm/AppWindowAnimator;
.super Ljava/lang/Object;
.source "AppWindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AppWindowAnimator"

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field allDrawn:Z

.field animLayerAdjustment:I

.field animating:Z

.field animation:Landroid/view/animation/Animation;

.field deferFinalFrameCleanup:Z

.field deferThumbnailDestruction:Z

.field freezingScreen:Z

.field hasTransformation:Z

.field lastFreezeDuration:I

.field mAllAppWinAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;"
        }
    .end annotation
.end field

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSkipFirstFrame:Z

.field thumbnail:Landroid/view/SurfaceControl;

.field thumbnailAnimation:Landroid/view/animation/Animation;

.field thumbnailForceAboveLayer:I

.field thumbnailLayer:I

.field thumbnailScrim:Landroid/view/SurfaceControl;

.field thumbnailScrimAnimation:Landroid/view/animation/Animation;

.field final thumbnailScrimTransformation:Landroid/view/animation/Transformation;

.field thumbnailScrimX:I

.field thumbnailScrimY:I

.field thumbnailTransactionSeq:I

.field final thumbnailTransformation:Landroid/view/animation/Transformation;

.field thumbnailX:I

.field thumbnailY:I

.field final transformation:Landroid/view/animation/Transformation;

.field usingTransferredAnimation:Z

.field wasAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    .line 77
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    .line 91
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 100
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimTransformation:Landroid/view/animation/Transformation;

    .line 106
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 107
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->service:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 108
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 109
    return-void
.end method

.method private getStartTimeCorrection()J
    .locals 4

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    neg-long v0, v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 337
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private stepAnimation(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v2, :cond_0

    move v0, v1

    .line 326
    :goto_0
    return v0

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 307
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 308
    .local v0, "hasMoreFrames":Z
    if-nez v0, :cond_1

    .line 309
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    if-nez v2, :cond_2

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 313
    const/4 v0, 0x1

    .line 325
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    goto :goto_0

    .line 318
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->deferFinalFrameCleanup:Z

    .line 319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 320
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 321
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_1

    const-string v1, "AppWindowAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished animation in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stepThumbnailAnimation(J)V
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->clear()V

    .line 230
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5, p1, p2, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 231
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 233
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 235
    .local v1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 237
    .local v0, "screenAnimation":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 238
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    .line 241
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v5, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 242
    .local v2, "tmpFloats":[F
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 243
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    const-string v6, "thumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "POS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, v2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 246
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    aget v6, v2, v9

    const/4 v7, 0x5

    aget v7, v2, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 247
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    const-string v6, "thumbnail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alpha="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " layer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " matrix=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 254
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 255
    iget v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    if-lez v5, :cond_4

    .line 256
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 263
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    aget v4, v2, v4

    aget v6, v2, v10

    aget v3, v2, v3

    aget v7, v2, v11

    invoke-virtual {v5, v4, v6, v3, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 265
    return-void

    .end local v0    # "screenAnimation":Z
    .end local v2    # "tmpFloats":[F
    :cond_3
    move v0, v4

    .line 235
    goto/16 :goto_0

    .line 260
    .restart local v0    # "screenAnimation":Z
    .restart local v2    # "tmpFloats":[F
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    add-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_1
.end method

.method private stepThumbnailScrimAnimation(J)V
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 269
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->clear()V

    .line 270
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimAnimation:Landroid/view/animation/Animation;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5, p1, p2, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 271
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimY:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 273
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v1

    .line 275
    .local v1, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 277
    .local v0, "screenAnimation":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 278
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/Transformation;->postCompose(Landroid/view/animation/Transformation;)V

    .line 282
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v5, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    .line 283
    .local v2, "tmpFloats":[F
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 284
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    const-string v6, "thumbnailScrim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "POS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, v2, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 287
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    aget v6, v2, v9

    const/4 v7, 0x5

    aget v7, v2, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 288
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    const-string v6, "thumbnailScrim"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "alpha="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " layer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " matrix=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->logSurface(Landroid/view/SurfaceControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 295
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 296
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 297
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    aget v4, v2, v4

    aget v6, v2, v10

    aget v3, v2, v3

    aget v7, v2, v11

    invoke-virtual {v5, v4, v6, v3, v7}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 299
    return-void

    .end local v0    # "screenAnimation":Z
    .end local v2    # "tmpFloats":[F
    :cond_3
    move v0, v4

    .line 275
    goto/16 :goto_0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 165
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 166
    return-void
.end method

.method public clearThumbnail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 175
    iput-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "AppWindowAnimator"

    const-string v1, "SURFACE: clearThumbnail."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 181
    iput-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    .line 184
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    .line 185
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 446
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAnimator="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "freezingScreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 449
    const-string v2, " allDrawn="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 450
    const-string v2, " animLayerAdjustment="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 451
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "lastFreezeDuration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->lastFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 455
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    .line 456
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "animating="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 457
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "animation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 459
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    if-eqz v2, :cond_3

    .line 460
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "XForm: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    .line 462
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 464
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4

    .line 465
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "thumbnail="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 466
    const-string v2, " x="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailX:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 467
    const-string v2, " y="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailY:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 468
    const-string v2, " layer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "thumbnailAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 470
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "thumbnailTransformation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 474
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowStateAnimator;

    .line 475
    .local v1, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "App Win Anim #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 476
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;IIZ)V
    .locals 7
    .param p1, "anim"    # Landroid/view/animation/Animation;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "skipFirstFrame"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 112
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "AppWindowAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting animation in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wxh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 116
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 117
    invoke-virtual {p1}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 120
    :cond_1
    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 121
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 122
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v1

    .line 123
    .local v1, "zorder":I
    const/4 v0, 0x0

    .line 124
    .local v0, "adj":I
    if-ne v1, v6, :cond_5

    .line 125
    const/16 v0, 0x3e8

    .line 130
    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eq v2, v0, :cond_3

    .line 131
    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 132
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 136
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 137
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 139
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 141
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-nez v2, :cond_4

    .line 142
    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    .line 144
    :cond_4
    return-void

    .line 126
    :cond_5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 127
    const/16 v0, -0x3e8

    goto :goto_0

    .line 136
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setDummyAnimation()V
    .locals 3

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "AppWindowAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting dummy animation in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    sget-object v0, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 152
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 153
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAllWindowsLocked()Z
    .locals 7

    .prologue
    .line 433
    const/4 v2, 0x0

    .line 434
    .local v2, "isAnimating":Z
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 435
    .local v0, "NW":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 436
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowStateAnimator;

    .line 437
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_0

    const-string v4, "AppWindowAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "performing show on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    .line 440
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    return v2
.end method

.method stepAnimationLocked(JI)Z
    .locals 11
    .param p1, "currentTime"    # J
    .param p3, "displayId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 343
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 346
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v7, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v6, v7, :cond_1

    move v4, v5

    .line 429
    :cond_0
    :goto_0
    return v4

    .line 354
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v6, :cond_9

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_9

    .line 356
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v6, :cond_6

    .line 357
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v6, :cond_3

    const-string v6, "AppWindowAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting animation in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " scale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " allDrawn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " animating="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowAnimator;->getStartTimeCorrection()J

    move-result-wide v0

    .line 363
    .local v0, "correction":J
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    add-long v8, p1, v0

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 364
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 365
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_4

    .line 366
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->show()V

    .line 367
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    add-long v8, p1, v0

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 370
    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_5

    .line 371
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->show()V

    .line 372
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrimAnimation:Landroid/view/animation/Animation;

    add-long v8, p1, v0

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 375
    :cond_5
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mSkipFirstFrame:Z

    .line 377
    .end local v0    # "correction":J
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimation(J)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 380
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_7

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailAnimation(J)V

    .line 384
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailScrim:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_0

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppWindowAnimator;->stepThumbnailScrimAnimation(J)V

    goto/16 :goto_0

    .line 391
    :cond_8
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_9

    .line 394
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 395
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 398
    :cond_9
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    .line 400
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v6, :cond_a

    move v4, v5

    .line 401
    goto/16 :goto_0

    .line 404
    :cond_a
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v7, 0x8

    const-string v8, "AppWindowToken"

    invoke-virtual {v6, p0, v7, v8, p3}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 407
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 408
    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 409
    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    if-eqz v6, :cond_b

    .line 410
    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 411
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 413
    :cond_b
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v6, v7, :cond_c

    .line 415
    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 418
    :cond_c
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v4, :cond_d

    const-string v4, "AppWindowAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Animation done in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": reportedVisible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_d
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->clear()V

    .line 424
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 425
    .local v3, "numAllAppWinAnimators":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_e

    .line 426
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 428
    :cond_e
    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    move v4, v5

    .line 429
    goto/16 :goto_0
.end method

.method transferCurrentAnimation(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "toAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "transferWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    iput-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 193
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 194
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    iput v0, p1, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 196
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowAnimator;->updateLayers()V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    .line 200
    :cond_0
    if-eqz p2, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iput-object p1, p2, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 205
    :cond_1
    return-void
.end method

.method updateLayers()V
    .locals 8

    .prologue
    .line 208
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 209
    .local v4, "windowCount":I
    iget v0, p0, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 210
    .local v0, "adj":I
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 211
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 212
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 213
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 214
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, v0

    iput v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 215
    iget v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    if-le v5, v6, :cond_0

    .line 216
    iget v5, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v5, p0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 218
    :cond_0
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYERS:Z

    if-eqz v5, :cond_1

    const-string v5, "AppWindowAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating layer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-nez v5, :cond_2

    .line 220
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 222
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_3

    .line 223
    iget-object v5, p0, Lcom/android/server/wm/AppWindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowManagerService;->setWallpaperAnimLayerAdjustmentLocked(I)V

    .line 211
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_4
    return-void
.end method
