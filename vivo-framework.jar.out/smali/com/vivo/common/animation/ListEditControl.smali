.class public Lcom/vivo/common/animation/ListEditControl;
.super Ljava/lang/Object;
.source "ListEditControl.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field private static final MAX_CHILD:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ListEditControl"


# instance fields
.field private mAlpha:I

.field private mAnimateViewOrginPos:[F

.field private mAnimateViewSet:[Landroid/view/View;

.field private mCheck:Z

.field private mCheckAlignLeft:Z

.field private mContext:Landroid/content/Context;

.field private mControlViewCount:I

.field private mCurrentProgess:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mLayoutRtl:Z

.field private mLeftMargin:I

.field private mMovingDis:I

.field private mParent:Landroid/view/ViewGroup;

.field private mRightMargin:I

.field private mSelfHeight:I

.field private mSelfWidth:I

.field private mTopMargin:I

.field private mTopView:Landroid/view/View;

.field private mVisible:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v3, 0x14

    const/16 v2, 0xf

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/vivo/common/animation/ListEditControl;->mCheck:Z

    .line 23
    new-array v0, v3, [Landroid/view/View;

    iput-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mAnimateViewSet:[Landroid/view/View;

    .line 24
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mAnimateViewOrginPos:[F

    .line 25
    iput v1, p0, Lcom/vivo/common/animation/ListEditControl;->mControlViewCount:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/animation/ListEditControl;->mCheckAlignLeft:Z

    .line 29
    iput v2, p0, Lcom/vivo/common/animation/ListEditControl;->mLeftMargin:I

    .line 30
    iput v2, p0, Lcom/vivo/common/animation/ListEditControl;->mRightMargin:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/animation/ListEditControl;->mTopMargin:I

    .line 33
    iput v1, p0, Lcom/vivo/common/animation/ListEditControl;->mAlpha:I

    .line 40
    iput v1, p0, Lcom/vivo/common/animation/ListEditControl;->mVisible:I

    .line 47
    iput-boolean v1, p0, Lcom/vivo/common/animation/ListEditControl;->mLayoutRtl:Z

    .line 57
    iput-object p2, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    .line 58
    iput-object p1, p0, Lcom/vivo/common/animation/ListEditControl;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v0, "ListEditControl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method private computeMovingDistance()V
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/vivo/common/animation/ListEditControl;->mLeftMargin:I

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mSelfWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mRightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/common/animation/ListEditControl;->mMovingDis:I

    .line 140
    iget-boolean v0, p0, Lcom/vivo/common/animation/ListEditControl;->mCheckAlignLeft:Z

    if-nez v0, :cond_0

    .line 142
    iget v0, p0, Lcom/vivo/common/animation/ListEditControl;->mLeftMargin:I

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mSelfWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mRightMargin:I

    add-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/vivo/common/animation/ListEditControl;->mMovingDis:I

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget v0, p0, Lcom/vivo/common/animation/ListEditControl;->mSelfWidth:I

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mRightMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mLeftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/common/animation/ListEditControl;->mMovingDis:I

    goto :goto_0
.end method

.method private isLayoutRtl()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/vivo/common/animation/ListEditControl;->mLayoutRtl:Z

    return v0
.end method


# virtual methods
.method public addAnimateChildView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 166
    iget v0, p0, Lcom/vivo/common/animation/ListEditControl;->mControlViewCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mAnimateViewSet:[Landroid/view/View;

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mControlViewCount:I

    aput-object p1, v0, v1

    .line 169
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mAnimateViewOrginPos:[F

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mControlViewCount:I

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v0, v1

    .line 170
    iget v0, p0, Lcom/vivo/common/animation/ListEditControl;->mControlViewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/common/animation/ListEditControl;->mControlViewCount:I

    goto :goto_0
.end method

.method clearAnimateChildView()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/animation/ListEditControl;->mControlViewCount:I

    .line 176
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 92
    iget v2, p0, Lcom/vivo/common/animation/ListEditControl;->mAlpha:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vivo/common/animation/ListEditControl;->mVisible:I

    if-eqz v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    .line 96
    .local v0, "startX":F
    const/4 v1, 0x0

    .line 97
    .local v1, "startY":F
    iget v2, p0, Lcom/vivo/common/animation/ListEditControl;->mTopMargin:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 99
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mTopView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mTopView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    move v2, v3

    :goto_1
    add-int/2addr v2, v4

    iget v4, p0, Lcom/vivo/common/animation/ListEditControl;->mSelfHeight:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 106
    :goto_2
    iget-boolean v2, p0, Lcom/vivo/common/animation/ListEditControl;->mCheckAlignLeft:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/vivo/common/animation/ListEditControl;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/vivo/common/animation/ListEditControl;->mCheckAlignLeft:Z

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/vivo/common/animation/ListEditControl;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 108
    :cond_4
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget v4, p0, Lcom/vivo/common/animation/ListEditControl;->mLeftMargin:I

    int-to-float v4, v4

    add-float v0, v2, v4

    .line 114
    :goto_3
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/vivo/common/animation/ListEditControl;->mAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 118
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 99
    :cond_5
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mTopView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_1

    .line 103
    :cond_6
    iget v4, p0, Lcom/vivo/common/animation/ListEditControl;->mTopMargin:I

    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mTopView:Landroid/view/View;

    if-nez v2, :cond_7

    move v2, v3

    :goto_4
    add-int/2addr v2, v4

    int-to-float v1, v2

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mTopView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_4

    .line 112
    :cond_8
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, p0, Lcom/vivo/common/animation/ListEditControl;->mSelfWidth:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/vivo/common/animation/ListEditControl;->mRightMargin:I

    int-to-float v4, v4

    sub-float v0, v2, v4

    goto :goto_3
.end method

.method public getVisible()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/vivo/common/animation/ListEditControl;->mVisible:I

    return v0
.end method

.method protected init(Landroid/graphics/drawable/Drawable;IIIZ)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "ltr"    # Z

    .prologue
    .line 228
    iput-object p1, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 229
    iput p2, p0, Lcom/vivo/common/animation/ListEditControl;->mLeftMargin:I

    .line 230
    iput p3, p0, Lcom/vivo/common/animation/ListEditControl;->mTopMargin:I

    .line 231
    iput p4, p0, Lcom/vivo/common/animation/ListEditControl;->mRightMargin:I

    .line 232
    iput-boolean p5, p0, Lcom/vivo/common/animation/ListEditControl;->mCheckAlignLeft:Z

    .line 234
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 235
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/common/animation/ListEditControl;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/animation/ListEditControl;->mSelfWidth:I

    .line 241
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/animation/ListEditControl;->mSelfHeight:I

    .line 242
    invoke-direct {p0}, Lcom/vivo/common/animation/ListEditControl;->computeMovingDistance()V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSelfWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mSelfWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   mSelfHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/common/animation/ListEditControl;->mSelfHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/ListEditControl;->Log(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/vivo/common/animation/ListEditControl;->mCheck:Z

    return v0
.end method

.method protected isInit()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 219
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimateUpdate(F)V
    .locals 5
    .param p1, "p"    # F

    .prologue
    .line 199
    iput p1, p0, Lcom/vivo/common/animation/ListEditControl;->mCurrentProgess:F

    .line 200
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, p0, Lcom/vivo/common/animation/ListEditControl;->mAlpha:I

    .line 202
    invoke-direct {p0}, Lcom/vivo/common/animation/ListEditControl;->isLayoutRtl()Z

    move-result v1

    .line 204
    .local v1, "isLayoutRtl":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/vivo/common/animation/ListEditControl;->mControlViewCount:I

    if-ge v0, v2, :cond_1

    .line 206
    if-nez v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mAnimateViewSet:[Landroid/view/View;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/vivo/common/animation/ListEditControl;->mMovingDis:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 204
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mAnimateViewSet:[Landroid/view/View;

    aget-object v2, v2, v0

    neg-float v3, p1

    iget v4, p0, Lcom/vivo/common/animation/ListEditControl;->mMovingDis:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 212
    return-void
.end method

.method public setCheckAlignLeftOrRight(Z)V
    .locals 0
    .param p1, "left"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/vivo/common/animation/ListEditControl;->mCheckAlignLeft:Z

    .line 127
    invoke-direct {p0}, Lcom/vivo/common/animation/ListEditControl;->computeMovingDistance()V

    .line 128
    return-void
.end method

.method public setCheckMarginLeft(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/vivo/common/animation/ListEditControl;->mLeftMargin:I

    .line 134
    invoke-direct {p0}, Lcom/vivo/common/animation/ListEditControl;->computeMovingDistance()V

    .line 135
    return-void
.end method

.method public setCheckMarginRight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/vivo/common/animation/ListEditControl;->mRightMargin:I

    .line 160
    invoke-direct {p0}, Lcom/vivo/common/animation/ListEditControl;->computeMovingDistance()V

    .line 161
    return-void
.end method

.method public setCheckMarginTop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/vivo/common/animation/ListEditControl;->mTopMargin:I

    .line 154
    return-void
.end method

.method public setChecked(Z)V
    .locals 7
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, -0x101009e

    .line 70
    iput-boolean p1, p0, Lcom/vivo/common/animation/ListEditControl;->mCheck:Z

    .line 72
    iget-object v1, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    const v3, 0x101009c

    aput v3, v2, v5

    iget-object v3, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const v0, 0x101009e

    :cond_0
    aput v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-array v2, v2, [I

    const v3, -0x10100a0

    aput v3, v2, v4

    const v3, 0x101009c

    aput v3, v2, v5

    iget-object v3, p0, Lcom/vivo/common/animation/ListEditControl;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const v0, 0x101009e

    :cond_3
    aput v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method protected setLayoutRtl(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/vivo/common/animation/ListEditControl;->mLayoutRtl:Z

    .line 257
    return-void
.end method

.method public setTopView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/vivo/common/animation/ListEditControl;->mTopView:Landroid/view/View;

    .line 194
    return-void
.end method

.method public setVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 181
    iput p1, p0, Lcom/vivo/common/animation/ListEditControl;->mVisible:I

    .line 182
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/vivo/common/animation/ListEditControl;->mCheck:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vivo/common/animation/ListEditControl;->setChecked(Z)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 248
    const-string v0, "verifyDrawable"

    invoke-direct {p0, v0}, Lcom/vivo/common/animation/ListEditControl;->Log(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/animation/ListEditControl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
