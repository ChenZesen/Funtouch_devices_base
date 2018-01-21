.class public Lcom/vivo/common/widget/VivoSeekBar;
.super Landroid/widget/AbsSeekBar;
.source "VivoSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mIsDragging:Z

.field private mIsMoved:Z

.field mIsUserSeekable:Z

.field private mOnSeekBarChangeListener:Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mScaledTouchSlop:I

.field private mTempProgress:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/common/widget/VivoSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/common/widget/VivoSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v1, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTempProgress:I

    .line 30
    iput-boolean v1, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsMoved:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsUserSeekable:Z

    .line 39
    iput v1, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingLeft:I

    .line 40
    iput v1, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingRight:I

    .line 90
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mScaledTouchSlop:I

    .line 91
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->getWidth()I

    move-result v5

    .line 211
    .local v5, "width":I
    iget v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingLeft:I

    sub-int v7, v5, v7

    iget v8, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingRight:I

    sub-int v0, v7, v8

    .line 212
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v6, v7

    .line 214
    .local v6, "x":I
    const/4 v2, 0x0

    .line 215
    .local v2, "progress":F
    iget-boolean v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsDragging:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsMoved:Z

    if-eqz v7, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->getMax()I

    move-result v1

    .line 217
    .local v1, "max":I
    iget v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTouchDownX:F

    float-to-int v7, v7

    sub-int v4, v6, v7

    .line 218
    .local v4, "temp":I
    int-to-float v7, v4

    int-to-float v8, v0

    div-float v3, v7, v8

    .line 219
    .local v3, "scale":F
    iget v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTouchProgressOffset:F

    iget v8, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTempProgress:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    int-to-float v8, v1

    mul-float/2addr v8, v3

    add-float v2, v7, v8

    .line 244
    .end local v4    # "temp":I
    :goto_0
    float-to-int v7, v2

    invoke-virtual {p0, v7}, Lcom/vivo/common/widget/VivoSeekBar;->setProgress(I)V

    .line 245
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vivo/common/widget/VivoSeekBar;->onProgressRefresh(Z)V

    .line 246
    return-void

    .line 222
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 223
    iget v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingRight:I

    sub-int v7, v5, v7

    if-le v6, v7, :cond_1

    .line 224
    const/4 v3, 0x0

    .line 241
    .restart local v3    # "scale":F
    :goto_1
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->getMax()I

    move-result v1

    .line 242
    .restart local v1    # "max":I
    int-to-float v7, v1

    mul-float/2addr v7, v3

    add-float/2addr v2, v7

    goto :goto_0

    .line 225
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_1
    iget v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingLeft:I

    if-ge v6, v7, :cond_2

    .line 226
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_1

    .line 228
    .end local v3    # "scale":F
    :cond_2
    sub-int v7, v0, v6

    iget v8, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingLeft:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v3, v7, v8

    .line 229
    .restart local v3    # "scale":F
    iget v2, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 232
    .end local v3    # "scale":F
    :cond_3
    iget v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingLeft:I

    if-ge v6, v7, :cond_4

    .line 233
    const/4 v3, 0x0

    .restart local v3    # "scale":F
    goto :goto_1

    .line 234
    .end local v3    # "scale":F
    :cond_4
    iget v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingRight:I

    sub-int v7, v5, v7

    if-le v6, v7, :cond_5

    .line 235
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_1

    .line 237
    .end local v3    # "scale":F
    :cond_5
    iget v7, p0, Lcom/vivo/common/widget/VivoSeekBar;->mPaddingLeft:I

    sub-int v7, v6, v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v3, v7, v8

    .line 238
    .restart local v3    # "scale":F
    iget v2, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method


# virtual methods
.method onProgressRefresh(Z)V
    .locals 2
    .param p1, "fromUser"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mOnSeekBarChangeListener:Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mOnSeekBarChangeListener:Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/vivo/common/widget/VivoSeekBar;IZ)V

    .line 206
    :cond_0
    return-void
.end method

.method onStartTrackingTouchExtend()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsDragging:Z

    .line 186
    iget-object v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mOnSeekBarChangeListener:Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mOnSeekBarChangeListener:Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/vivo/common/widget/VivoSeekBar;)V

    .line 189
    :cond_0
    return-void
.end method

.method onStopTrackingTouchExtend()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsDragging:Z

    .line 197
    iget-object v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mOnSeekBarChangeListener:Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/vivo/common/widget/VivoSeekBar;->mOnSeekBarChangeListener:Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/vivo/common/widget/VivoSeekBar;)V

    .line 200
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget-boolean v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 172
    :cond_1
    :goto_0
    return v1

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->isScrollContainer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTouchDownX:F

    .line 123
    :goto_1
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->getProgress()I

    move-result v3

    iput v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTempProgress:I

    .line 124
    iput-boolean v2, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsMoved:Z

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/VivoSeekBar;->setPressed(Z)V

    .line 117
    iget-object v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 118
    iget-object v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/VivoSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 120
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTouchDownX:F

    .line 121
    invoke-direct {p0}, Lcom/vivo/common/widget/VivoSeekBar;->attemptClaimDrag()V

    goto :goto_1

    .line 129
    :pswitch_1
    iget-boolean v2, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 130
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/VivoSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 133
    .local v0, "x":F
    iget v2, p0, Lcom/vivo/common/widget/VivoSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 134
    invoke-virtual {p0, v1}, Lcom/vivo/common/widget/VivoSeekBar;->setPressed(Z)V

    .line 135
    iget-object v2, p0, Lcom/vivo/common/widget/VivoSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 136
    iget-object v2, p0, Lcom/vivo/common/widget/VivoSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/common/widget/VivoSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 138
    :cond_6
    iput-boolean v1, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsMoved:Z

    .line 139
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->onStartTrackingTouchExtend()V

    .line 140
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/VivoSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 141
    invoke-direct {p0}, Lcom/vivo/common/widget/VivoSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 147
    .end local v0    # "x":F
    :pswitch_2
    iget-boolean v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_7

    .line 148
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/VivoSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 149
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->onStopTrackingTouchExtend()V

    .line 150
    invoke-virtual {p0, v2}, Lcom/vivo/common/widget/VivoSeekBar;->setPressed(Z)V

    .line 161
    :goto_2
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->onStartTrackingTouchExtend()V

    .line 155
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/VivoSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 156
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->onStopTrackingTouchExtend()V

    goto :goto_2

    .line 165
    :pswitch_3
    iget-boolean v3, p0, Lcom/vivo/common/widget/VivoSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    .line 166
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->onStopTrackingTouchExtend()V

    .line 167
    invoke-virtual {p0, v2}, Lcom/vivo/common/widget/VivoSeekBar;->setPressed(Z)V

    .line 169
    :cond_8
    invoke-virtual {p0}, Lcom/vivo/common/widget/VivoSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/vivo/common/widget/VivoSeekBar;->mOnSeekBarChangeListener:Lcom/vivo/common/widget/VivoSeekBar$OnSeekBarChangeListener;

    .line 103
    return-void
.end method
