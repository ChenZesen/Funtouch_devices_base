.class public abstract Lcom/vivo/vivotransition/algorithm/BaseTransition;
.super Ljava/lang/Object;
.source "BaseTransition.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;,
        Lcom/vivo/vivotransition/algorithm/BaseTransition$TransitionType;
    }
.end annotation


# instance fields
.field public mAlphaMode:Z

.field public mAnimationType:Ljava/lang/String;

.field public mBreakTimes:I

.field public mCameraZ:F

.field public mHorizBreakTimes:I

.field public mIsScrolling:Z

.field public mLayout_type:I

.field public mOrientation:I

.field public mPageSpacing:I

.field public mSetCameraZ:Z

.field public mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

.field public mUseBg:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mLayout_type:I

    .line 110
    const/high16 v0, -0x3f000000    # -8.0f

    iput v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mCameraZ:F

    .line 111
    iput-boolean v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mSetCameraZ:Z

    .line 112
    iput-boolean v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mUseBg:Z

    .line 113
    iput-boolean v2, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mAlphaMode:Z

    .line 114
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mOrientation:I

    .line 115
    iput v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mPageSpacing:I

    .line 116
    new-instance v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    invoke-direct {v0}, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;-><init>()V

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    .line 117
    iput v2, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mBreakTimes:I

    .line 118
    iput v2, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mHorizBreakTimes:I

    .line 119
    iput-boolean v1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mIsScrolling:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mAnimationType:Ljava/lang/String;

    .line 121
    return-void
.end method

.method private static nonzero(F)Z
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 124
    const v0, -0x457ced91    # -0.001f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x3a83126f    # 0.001f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMatrix()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    .line 132
    .local v0, "transformationinfo":Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;
    iget-boolean v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 134
    iget v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationX:F

    invoke-static {v1}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    invoke-static {v1}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    iget v3, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 136
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotation:F

    iget v3, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    iget v4, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 137
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleX:F

    iget v3, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleY:F

    iget v4, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    iget v5, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 140
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleX:F

    iget v3, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mScaleY:F

    iget v4, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    iget v5, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 141
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    iget v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationZ:F

    invoke-virtual {v1, v6, v6, v2}, Landroid/graphics/Camera;->translate(FFF)V

    .line 142
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    iget v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationX:F

    iget v3, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotationY:F

    iget v4, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mRotation:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 143
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    iget-object v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 144
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 145
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotX:F

    iget v3, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationX:F

    add-float/2addr v2, v3

    iget v3, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mPivotY:F

    iget v4, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 146
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 147
    iget-object v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    goto :goto_0
.end method


# virtual methods
.method public getAnimationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mAnimationType:Ljava/lang/String;

    return-object v0
.end method

.method public getBreakOrder(IF)I
    .locals 0
    .param p1, "times"    # I
    .param p2, "scrollProgress"    # F

    .prologue
    .line 159
    return p1
.end method

.method public getBreakTimes()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mBreakTimes:I

    return v0
.end method

.method public getDrawingOrder(IIIF)I
    .locals 0
    .param p1, "size"    # I
    .param p2, "index"    # I
    .param p3, "times"    # I
    .param p4, "fraction"    # F

    .prologue
    .line 174
    return p2
.end method

.method public getHorizBreakTimes()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mHorizBreakTimes:I

    return v0
.end method

.method public getTransformation(IZZFLandroid/view/View;Landroid/view/View;I)Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;
    .locals 7
    .param p1, "part"    # I
    .param p2, "isOverScrollFirst"    # Z
    .param p3, "isOverScrollLast"    # Z
    .param p4, "scrollProgress"    # F
    .param p5, "parent"    # Landroid/view/View;
    .param p6, "child"    # Landroid/view/View;
    .param p7, "pageSpacing"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    # invokes: Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->clearDirty()V
    invoke-static {v0}, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->access$000(Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;)V

    .line 180
    iput p7, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mPageSpacing:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 182
    invoke-virtual/range {v0 .. v5}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->transform(IZZFLandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v6, 0x0

    .line 191
    .local v6, "transformationinfo":Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;
    :goto_0
    return-object v6

    .line 185
    .end local v6    # "transformationinfo":Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;
    :cond_0
    invoke-direct {p0}, Lcom/vivo/vivotransition/algorithm/BaseTransition;->updateMatrix()V

    .line 186
    iget-boolean v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mAlphaMode:Z

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;->mAlphaDirty:Z

    .line 189
    :cond_1
    iget-object v6, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mTransformationInfo:Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;

    .restart local v6    # "transformationinfo":Lcom/vivo/vivotransition/algorithm/BaseTransition$TransformationInfo;
    goto :goto_0
.end method

.method public isHorizental()Z
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mSetCameraZ:Z

    .line 203
    return-void
.end method

.method public setAlphaMode(Z)V
    .locals 0
    .param p1, "alphaMode"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mAlphaMode:Z

    .line 208
    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1
    .param p1, "distance"    # F

    .prologue
    .line 212
    iput p1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mCameraZ:F

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mSetCameraZ:Z

    .line 214
    return-void
.end method

.method public setLayoutType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mLayout_type:I

    .line 219
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mOrientation:I

    .line 224
    return-void
.end method

.method public setState(Z)V
    .locals 0
    .param p1, "isScrolling"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/vivo/vivotransition/algorithm/BaseTransition;->mIsScrolling:Z

    .line 229
    return-void
.end method

.method public abstract transform(IZZFLandroid/view/View;)Z
.end method
