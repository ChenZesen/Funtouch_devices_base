.class Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "SmartMultiWindowTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SmartMultiWindowTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenFreezeSurface"
.end annotation


# static fields
.field static final BACKGROUND_LAYER:I = 0x2af7

.field static final FREEZE_LAYER:I = 0x1e8481


# instance fields
.field mBGSurface:Landroid/view/SurfaceControl;

.field mRect:Landroid/graphics/Rect;

.field mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field mTmpFloats:[F

.field mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZII)V
    .locals 16
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "layerStack"    # I
    .param p7, "rotation"    # I
    .param p8, "bgsurface"    # Z
    .param p9, "minlayer"    # I
    .param p10, "maxlayer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 467
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    .line 469
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 470
    const/16 v4, 0x9

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    .line 471
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 477
    sub-int v7, p4, p2

    .line 478
    .local v7, "width":I
    sub-int v8, p5, p3

    .line 479
    .local v8, "height":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 480
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    .line 481
    new-instance v4, Landroid/view/SurfaceControl;

    const-string v6, "ScreenFreezeSurface"

    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 483
    if-eqz p8, :cond_0

    .line 484
    new-instance v4, Landroid/view/SurfaceControl;

    const-string v6, "ScreenFreezeBGSurface"

    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 487
    :cond_0
    # getter for: Lcom/android/server/wm/SmartMultiWindowTransition;->DEBUG_NWAPP_SCREENDATA:Z
    invoke-static {}, Lcom/android/server/wm/SmartMultiWindowTransition;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 488
    const-string v4, "vivo_debug_SmartMultiWindowTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScreenFreezeSurface width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    .line 493
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .line 494
    .local v10, "surface":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 498
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-static/range {v9 .. v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 500
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const v5, 0x1e8481

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 503
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 522
    .end local v10    # "surface":Landroid/view/Surface;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_3

    .line 523
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .line 524
    .restart local v10    # "surface":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 525
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4, v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 527
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/16 v5, 0x2af7

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 530
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_1

    .line 550
    .end local v10    # "surface":Landroid/view/Surface;
    :cond_3
    :goto_1
    return-void

    .line 505
    .restart local v10    # "surface":Landroid/view/Surface;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 509
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 513
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_0

    .line 517
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_0

    .line 532
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 536
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    .line 540
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    .line 544
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_1

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 530
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method kill()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 555
    iput-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 560
    iput-object v1, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 563
    :cond_1
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .locals 10
    .param p1, "transform"    # Landroid/view/animation/Transformation;

    .prologue
    .line 566
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 567
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v4

    .line 568
    .local v1, "left":F
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    .line 569
    .local v2, "top":F
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 570
    .local v3, "width":F
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    .line 571
    .local v0, "height":F
    iget v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 588
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 589
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 590
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 592
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 593
    return-void

    .line 573
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 576
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 577
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 580
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 581
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 584
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 585
    iget-object v4, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v0, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method show()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 604
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/wm/SmartMultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
