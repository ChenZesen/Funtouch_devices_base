.class Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;
.super Ljava/lang/Object;
.source "VivoMSPointerEventListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/motion/VivoMSPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MSGestureListener"
.end annotation


# static fields
.field static final TAG_MS:Ljava/lang/String; = "VMSGesture"


# instance fields
.field private final BACK_LEFT_X:F

.field private final BACK_RIGHT_X:F

.field private final FLING_VELOCITY_LEFT:F

.field private final FLING_VELOCITY_RIGHT:F

.field private final INVALID_NUM:F

.field private final MAX_FIRST_TO_RIGHT_Y_INTERVAL:F

.field private final MOVE_LENGTH_FORTH:F

.field private final START_MAX_X:F

.field private final START_MAX_Y:F

.field private final START_MIN_X:F

.field private final START_MIN_Y:F

.field private final VIBRATE_DURATION:I

.field private final Y_MOVE_MAX_LENGTH:F

.field private isBackLengthEnough:Z

.field private isChangeOrigentation:Z

.field private isFistMoveToRight:Z

.field private isForthLengthEnough:Z

.field private isStarted:Z

.field private mBaceRightX:F

.field private mBackLeftX:F

.field private mChangeOrientationTimes:I

.field private mChangeOrigentationX:F

.field private mChangeOrigentationY:F

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFirstScrollX:F

.field private mFirstScrollY:F

.field private mFlingMinVelocityToLeft:F

.field private mFlingMinVelocityToRight:F

.field private mForthMoveEnouthLength:F

.field private mLastScrollX:F

.field private mLastScrollY:F

.field private mMaxFirstToLastYInterval:F

.field private mMaxY:F

.field private mMinY:F

.field private mStartScrollMaxX:F

.field private mStartScrollMaxY:F

.field private mStartScrollMinX:F

.field private mStartScrollMinY:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mYMoveMaxLength:F

.field final synthetic this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)V
    .locals 6

    .prologue
    const v5, 0x3d8f5c29    # 0.07f

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v1, -0x42333333    # -0.1f

    .line 87
    iput-object p1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 91
    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMinX:F

    .line 92
    const v0, 0x44804000    # 1026.0f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMaxX:F

    .line 93
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->START_MIN_X:F

    .line 94
    iput v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->START_MAX_X:F

    .line 96
    iput v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMinY:F

    .line 97
    iput v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMaxY:F

    .line 98
    iput v5, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->START_MIN_Y:F

    .line 99
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->START_MAX_Y:F

    .line 101
    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mForthMoveEnouthLength:F

    .line 102
    const v0, 0x3e3d70a4    # 0.185f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->MOVE_LENGTH_FORTH:F

    .line 104
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mYMoveMaxLength:F

    .line 105
    iput v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->Y_MOVE_MAX_LENGTH:F

    .line 107
    const v0, 0x453b8000    # 3000.0f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFlingMinVelocityToRight:F

    .line 108
    const v0, 0x453b8000    # 3000.0f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFlingMinVelocityToLeft:F

    .line 109
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->FLING_VELOCITY_RIGHT:F

    .line 110
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->FLING_VELOCITY_LEFT:F

    .line 112
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->INVALID_NUM:F

    .line 113
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollX:F

    .line 114
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    .line 115
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mLastScrollX:F

    .line 116
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mLastScrollY:F

    .line 118
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationX:F

    .line 119
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationY:F

    .line 121
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxY:F

    .line 122
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMinY:F

    .line 124
    iput-boolean v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isStarted:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isForthLengthEnough:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isBackLengthEnough:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isChangeOrigentation:Z

    .line 130
    iput v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrientationTimes:I

    .line 133
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->VIBRATE_DURATION:I

    .line 135
    iput v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mBackLeftX:F

    .line 136
    iput v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mBaceRightX:F

    .line 137
    const v0, 0x3e3851ec    # 0.18f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->BACK_LEFT_X:F

    .line 138
    const v0, 0x3f51eb85    # 0.82f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->BACK_RIGHT_X:F

    .line 140
    iput v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxFirstToLastYInterval:F

    .line 141
    const v0, 0x3e6147ae    # 0.22f

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->MAX_FIRST_TO_RIGHT_Y_INTERVAL:F

    .line 144
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    # getter for: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$300(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mVibrator:Landroid/os/Vibrator;

    .line 146
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    # getter for: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$300(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 147
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMinX:F

    .line 148
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMaxX:F

    .line 150
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMinY:F

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMaxY:F

    .line 153
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3e3d70a4    # 0.185f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mForthMoveEnouthLength:F

    .line 154
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mYMoveMaxLength:F

    .line 155
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFlingMinVelocityToRight:F

    .line 156
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFlingMinVelocityToLeft:F

    .line 158
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mBackLeftX:F

    .line 159
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3f51eb85    # 0.82f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mBaceRightX:F

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const v1, 0x3e6147ae    # 0.22f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxFirstToLastYInterval:F

    .line 162
    return-void
.end method

.method private checkFirstMoveAngle()Z
    .locals 4

    .prologue
    .line 244
    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollX:F

    iget v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 245
    .local v0, "internalX":F
    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    iget v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 247
    .local v1, "internalY":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 249
    const/4 v2, 0x1

    .line 252
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkFirstToLastYInterval()Z
    .locals 3

    .prologue
    .line 257
    iget v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mLastScrollY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 259
    .local v0, "interval":F
    iget v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxFirstToLastYInterval:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 261
    const/4 v1, 0x1

    .line 264
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkFlingVelocity(F)Z
    .locals 3
    .param p1, "velocity"    # F

    .prologue
    const/4 v0, 0x1

    .line 305
    iget-boolean v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    if-eqz v1, :cond_1

    .line 307
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFlingMinVelocityToRight:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFlingMinVelocityToLeft:F

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    .line 320
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkMoveLengthEnough(FF)Z
    .locals 4
    .param p1, "endFlingX"    # F
    .param p2, "endFlingY"    # F

    .prologue
    const/4 v1, 0x0

    .line 269
    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationX:F

    iget v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 271
    .local v0, "forthLength":F
    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mBackLeftX:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mBaceRightX:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 278
    :cond_1
    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mForthMoveEnouthLength:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 280
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkMoveYLengthToLarge()Z
    .locals 3

    .prologue
    .line 290
    iget v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxY:F

    iget v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMinY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 292
    .local v0, "Length":F
    iget v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mYMoveMaxLength:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 294
    const-string v1, "VMSGesture"

    const-string v2, "minscreen checkMoveYLengthToLarge true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x1

    .line 299
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkStartY()Z
    .locals 2

    .prologue
    .line 325
    iget v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    iget v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMinY:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    iget v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMaxY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 327
    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetFlag(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    const v1, -0x42333333    # -0.1f

    const/4 v0, 0x0

    .line 167
    iput p1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollX:F

    .line 168
    iput p2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    .line 169
    iput p1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mLastScrollX:F

    .line 170
    iput p2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mLastScrollY:F

    .line 171
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationX:F

    .line 172
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationY:F

    .line 174
    iput-boolean v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isStarted:Z

    .line 175
    iput-boolean v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    .line 176
    iput-boolean v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isForthLengthEnough:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isBackLengthEnough:Z

    .line 178
    iput-boolean v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isChangeOrigentation:Z

    .line 179
    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrientationTimes:I

    .line 181
    iput v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxY:F

    .line 182
    iput v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMinY:F

    .line 183
    return-void
.end method

.method private setMinScreenShow(Z)V
    .locals 14
    .param p1, "windowPosLeft"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 187
    move v10, p1

    .line 188
    .local v10, "windowPosLeftFinal":Z
    const-string v12, "sys.super_power_save"

    invoke-static {v12, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 189
    .local v1, "isSuperPower":Z
    if-eqz v1, :cond_1

    .line 191
    const-string v11, "VMSGesture"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMinScreenShow enter but isSuperPower:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " and return"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v12, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    # getter for: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$300(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "vivo_mini_screen_gesture_enable"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v0, :cond_2

    .line 197
    .local v0, "isGestureEnable":Z
    :goto_1
    if-nez v0, :cond_3

    .line 199
    const-string v11, "VMSGesture"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMinScreenShow enter but isGestureEnable:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " and return"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "isGestureEnable":Z
    :cond_2
    move v0, v11

    .line 195
    goto :goto_1

    .line 203
    .restart local v0    # "isGestureEnable":Z
    :cond_3
    iget-object v11, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    # getter for: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$300(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 204
    .local v6, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    .line 206
    .local v8, "screenOn":Z
    iget-object v11, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    # getter for: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$300(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "keyguard"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 207
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 208
    .local v2, "keyguardLocked":Z
    const-string v11, "VMSGesture"

    const-string v12, "setMinScreenShow enter start"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-eqz v8, :cond_0

    if-nez v2, :cond_0

    .line 212
    iget-object v11, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    # getter for: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$300(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 213
    .local v9, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 214
    .local v7, "rotation":I
    if-eqz v7, :cond_4

    .line 216
    const-string v11, "VMSGesture"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "rotation = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "just return and not start minscreen"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    :cond_4
    iget-object v11, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v12, 0x17

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate(J)V

    .line 222
    const/4 v5, 0x0

    .line 223
    .local v5, "msWindowPos":I
    if-eqz v10, :cond_5

    .line 225
    const/4 v5, 0x0

    .line 231
    :goto_2
    const-string v11, "VMSGesture"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMinScreenShow success msWindowPos:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " VIBRATE_DURATION:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x17

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v4, "msIntent":Landroid/content/Intent;
    const-string v11, "android.action.multifloatingtask.showsmallwindow"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v11, "windowPosValue"

    invoke-virtual {v4, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    iget-object v11, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->this$0:Lcom/android/server/policy/motion/VivoMSPointerEventListener;

    # getter for: Lcom/android/server/policy/motion/VivoMSPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/motion/VivoMSPointerEventListener;->access$300(Lcom/android/server/policy/motion/VivoMSPointerEventListener;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 229
    .end local v4    # "msIntent":Landroid/content/Intent;
    :cond_5
    const/4 v5, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    const/4 v5, 0x0

    const v4, -0x42333333    # -0.1f

    .line 343
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 345
    :cond_0
    const-string v1, "VMSGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFling arg0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0, v4, v4}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->resetFlag(FF)V

    .line 381
    :goto_0
    return v5

    .line 350
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    .line 357
    .local v0, "windowPosLeft":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mLastScrollX:F

    .line 358
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mLastScrollY:F

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 363
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isChangeOrigentation:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->checkMoveLengthEnough(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrientationTimes:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->checkFlingVelocity(F)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->checkMoveYLengthToLarge()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->checkStartY()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->checkFirstToLastYInterval()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->checkFirstMoveAngle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    invoke-direct {p0, v4, v4}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->resetFlag(FF)V

    .line 369
    invoke-direct {p0, v0}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->setMinScreenShow(Z)V

    goto :goto_0

    .line 373
    :cond_3
    invoke-direct {p0, v4, v4}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->resetFlag(FF)V

    goto :goto_0

    .line 378
    :cond_4
    invoke-direct {p0, v4, v4}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->resetFlag(FF)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 389
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    const v8, -0x42333333    # -0.1f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 394
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 396
    :cond_0
    const-string v4, "VMSGesture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScroll arg0="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-direct {p0, v8, v8}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->resetFlag(FF)V

    .line 516
    :cond_1
    :goto_0
    return v7

    .line 405
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 406
    .local v0, "arg0X":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 407
    .local v1, "arg0Y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 408
    .local v2, "arg1X":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 410
    .local v3, "arg1Y":F
    iget-boolean v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isStarted:Z

    if-nez v4, :cond_4

    .line 412
    cmpl-float v4, p3, v5

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMaxX:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3

    .line 414
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxY:F

    .line 415
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMinY:F

    .line 416
    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollX:F

    .line 417
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    .line 418
    iput-boolean v7, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    .line 419
    iput-boolean v6, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isStarted:Z

    goto :goto_0

    .line 422
    :cond_3
    cmpg-float v4, p3, v5

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMinX:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 424
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxY:F

    .line 425
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMinY:F

    .line 426
    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollX:F

    .line 427
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    .line 428
    iput-boolean v6, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    .line 429
    iput-boolean v6, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isStarted:Z

    goto :goto_0

    .line 435
    :cond_4
    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollX:F

    cmpl-float v4, v4, v0

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_7

    .line 437
    :cond_5
    invoke-direct {p0, v8, v8}, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->resetFlag(FF)V

    .line 438
    cmpl-float v4, p3, v5

    if-lez v4, :cond_6

    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMaxX:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_6

    .line 440
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxY:F

    .line 441
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMinY:F

    .line 442
    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollX:F

    .line 443
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    .line 444
    iput-boolean v7, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    .line 445
    iput-boolean v6, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isStarted:Z

    goto :goto_0

    .line 448
    :cond_6
    cmpg-float v4, p3, v5

    if-gez v4, :cond_1

    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mStartScrollMinX:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    .line 450
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxY:F

    .line 451
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMinY:F

    .line 452
    iput v0, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollX:F

    .line 453
    iput v1, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mFirstScrollY:F

    .line 454
    iput-boolean v6, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    .line 455
    iput-boolean v6, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isStarted:Z

    goto :goto_0

    .line 461
    :cond_7
    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxY:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_9

    .line 463
    iput v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMaxY:F

    .line 470
    :cond_8
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isChangeOrigentation:Z

    if-nez v4, :cond_b

    .line 472
    iget-boolean v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    if-eqz v4, :cond_a

    .line 474
    cmpg-float v4, p3, v5

    if-ltz v4, :cond_1

    .line 480
    iput-boolean v6, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isChangeOrigentation:Z

    .line 481
    iput v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationX:F

    .line 482
    iput v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationY:F

    goto/16 :goto_0

    .line 465
    :cond_9
    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMinY:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_8

    .line 467
    iput v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mMinY:F

    goto :goto_1

    .line 489
    :cond_a
    cmpl-float v4, p3, v5

    if-gtz v4, :cond_1

    .line 495
    iput-boolean v6, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isChangeOrigentation:Z

    .line 496
    iput v2, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationX:F

    .line 497
    iput v3, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrigentationY:F

    goto/16 :goto_0

    .line 506
    :cond_b
    cmpl-float v4, p3, v5

    if-lez v4, :cond_c

    iget-boolean v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    if-nez v4, :cond_c

    .line 508
    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrientationTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrientationTimes:I

    goto/16 :goto_0

    .line 510
    :cond_c
    cmpg-float v4, p3, v5

    if-gez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->isFistMoveToRight:Z

    if-eqz v4, :cond_1

    .line 512
    iget v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrientationTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/policy/motion/VivoMSPointerEventListener$MSGestureListener;->mChangeOrientationTimes:I

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 524
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method
