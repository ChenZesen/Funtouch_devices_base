.class public Lcom/vivo/vivotransition/algorithm/CylinderTransition;
.super Lcom/vivo/vivotransition/algorithm/BaseTransition;
.source "CylinderTransition.java"


# static fields
.field public static final CAMERA_DISTANCE_FACTOR:F = 2.5f

.field public static final DEGREE_TO_RADIAN:F = 0.01745329f

.field public static final RADIUS_SCALE:F = 0.9f


# instance fields
.field private mAngle:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field mIsCylinderform:Z

.field private mRadius:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 24
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;-><init>()V

    .line 25
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mAngle:F

    .line 26
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 27
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mRadius:F

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mIsCylinderform:Z

    .line 29
    const-string v0, "3D"

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mAnimationType:Ljava/lang/String;

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mBreakTimes:I

    .line 31
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mBreakTimes:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mAngle:F

    .line 32
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v0, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    .line 34
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public getBreakOrder(IF)I
    .locals 1
    .param p1, "times"    # I
    .param p2, "scrollProgress"    # F

    .prologue
    .line 41
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 42
    iget v0, p0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mBreakTimes:I

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 43
    :cond_0
    return p1
.end method

.method public getDrawingOrder(IIIF)I
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "i"    # I
    .param p3, "part"    # I
    .param p4, "scrollProgress"    # F

    .prologue
    const/4 v3, 0x0

    .line 49
    const/4 v0, -0x1

    .line 50
    .local v0, "index":I
    cmpl-float v1, p4, v3

    if-eqz v1, :cond_4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 52
    cmpl-float v1, p4, v3

    if-lez v1, :cond_2

    .line 53
    float-to-double v2, p4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 54
    add-int/lit8 v0, p2, 0x1

    .line 55
    if-lt v0, p1, :cond_0

    .line 56
    move v0, p2

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    move v0, p2

    goto :goto_0

    .line 62
    :cond_2
    float-to-double v2, p4

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    .line 63
    move v0, p2

    goto :goto_0

    .line 65
    :cond_3
    add-int/lit8 v0, p2, -0x1

    .line 66
    if-gez v0, :cond_0

    .line 67
    move v0, p2

    goto :goto_0

    .line 72
    :cond_4
    move v0, p2

    goto :goto_0
.end method

.method public transform(IZZFLandroid/view/View;)Z
    .locals 17
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "childView"    # Landroid/view/View;

    .prologue
    .line 82
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .local v8, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p5

    invoke-static {v0, v8}, Lcom/vivo/vivotransition/AlgorithmUtil;->getTransformRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 86
    const/high16 v11, 0x40200000    # 2.5f

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    mul-float v4, v11, v12

    .line 87
    .local v4, "cameraZ":F
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mSetCameraZ:Z

    if-eqz v11, :cond_0

    .line 88
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mCameraZ:F

    .line 89
    :cond_0
    const/high16 v11, -0x3f000000    # -8.0f

    cmpl-float v11, v4, v11

    if-eqz v11, :cond_1

    .line 90
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v11, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v4

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-virtual {v11, v12, v13, v14}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 94
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mLayout_type:I

    if-nez v11, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 95
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, p4

    iput v12, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 98
    :cond_2
    const v11, 0x3f666666    # 0.9f

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mRadius:F

    .line 99
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mBreakTimes:I

    div-int v6, v11, v12

    .line 100
    .local v6, "clipWidth":I
    iget v11, v8, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    int-to-float v12, v6

    const/high16 v13, 0x3f000000    # 0.5f

    move/from16 v0, p1

    int-to-float v14, v0

    add-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    .line 102
    .local v5, "clipCenter":F
    const/high16 v11, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mAngle:F

    const/high16 v13, 0x3f000000    # 0.5f

    move/from16 v0, p1

    int-to-float v14, v0

    add-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x43340000    # 180.0f

    mul-float v12, v12, p4

    sub-float v3, v11, v12

    .line 104
    .local v3, "angle":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mRadius:F

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3c8efa34

    mul-float/2addr v13, v3

    invoke-static {v13}, Lcom/vivo/vivotransition/AlgorithmUtil;->cos(F)F

    move-result v13

    sub-float/2addr v12, v13

    mul-float v10, v11, v12

    .line 105
    .local v10, "tz":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mRadius:F

    const v12, 0x3c8efa34

    mul-float/2addr v12, v3

    invoke-static {v12}, Lcom/vivo/vivotransition/AlgorithmUtil;->sin(F)F

    move-result v12

    mul-float/2addr v11, v12

    iget v12, v8, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    sub-float v9, v11, v5

    .line 109
    .local v9, "tx":F
    const/high16 v11, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mRadius:F

    div-float v12, v10, v12

    sub-float v2, v11, v12

    .line 110
    .local v2, "alpha":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v2, v11

    if-lez v11, :cond_6

    .line 111
    const/high16 v2, 0x3f800000    # 1.0f

    .line 115
    :cond_3
    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3f666666    # 0.9f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 116
    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v12, v13

    mul-float/2addr v12, v2

    mul-float v2, v11, v12

    .line 118
    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    .line 119
    .local v7, "percent":F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 120
    .local v1, "aProgress":F
    const v11, 0x3d4ccccd    # 0.05f

    cmpg-float v11, v1, v11

    if-gez v11, :cond_8

    .line 121
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mIsCylinderform:Z

    if-nez v11, :cond_7

    .line 122
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mInterpolator:Landroid/animation/TimeInterpolator;

    const v12, 0x3d4ccccd    # 0.05f

    div-float v12, v1, v12

    invoke-interface {v11, v12}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    .line 134
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget-object v11, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBounds:Landroid/graphics/Rect;

    iget v12, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mBreakTimes:I

    div-int/2addr v13, v14

    mul-int v13, v13, p1

    add-int/2addr v12, v13

    iget v13, v8, Landroid/graphics/Rect;->top:I

    iget v14, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mBreakTimes:I

    move/from16 v16, v0

    div-int v15, v15, v16

    add-int/lit8 v16, p1, 0x1

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mBoundsDirty:Z

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v5, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v12, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    int-to-float v12, v12

    iput v12, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    .line 140
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    mul-float v12, v3, v7

    iput v12, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    .line 141
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iget v12, v12, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    mul-float v13, v9, v7

    add-float/2addr v12, v13

    iput v12, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    .line 142
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    mul-float v12, v10, v7

    iput v12, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationZ:F

    .line 143
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    .line 144
    const/4 v11, 0x1

    return v11

    .line 113
    .end local v1    # "aProgress":F
    .end local v7    # "percent":F
    :cond_6
    const v11, 0x3ecccccd    # 0.4f

    cmpg-float v11, v2, v11

    if-gez v11, :cond_3

    .line 114
    const v2, 0x3ecccccd    # 0.4f

    goto/16 :goto_0

    .line 123
    .restart local v1    # "aProgress":F
    .restart local v7    # "percent":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mIsScrolling:Z

    if-nez v11, :cond_5

    .line 124
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mIsCylinderform:Z

    goto/16 :goto_1

    .line 127
    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v2, v11

    if-nez v11, :cond_9

    .line 128
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mIsCylinderform:Z

    .line 129
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    iput v2, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlpha:F

    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/vivotransition/algorithm/CylinderTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    goto/16 :goto_1
.end method
