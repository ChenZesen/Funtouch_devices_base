.class public Lcom/android/server/policy/VivoGlobalActionsDialog;
.super Landroid/app/Dialog;
.source "VivoGlobalActionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;,
        Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;,
        Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;
    }
.end annotation


# static fields
.field private static final BG_COLOR:I = 0x32000000

.field private static final BLUR_RADIUS:I = 0x19

.field private static final BLUR_SCALED:F = 3.0f

.field private static final HANDLE_EVENT_FREEZE_ROTATION:I = 0x3e6

.field private static final HANDLE_EVENT_SHOW_BACKGROUND:I = 0x3e9

.field private static final HANDLE_EVENT_START_ANIMATION:I = 0x3e7

.field private static final HANDLE_EVENT_UPDATE_LAYOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "VivoGlobalActionsDialog"

.field private static mColorfilter:Landroid/graphics/ColorFilter;

.field public static sNullBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mButtonMarginTop:I

.field private mButtonMarinLeft:I

.field private mButtonWidth:I

.field private mCallback:Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;

.field private mCancelOnUp:Z

.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private mFakeView:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;

.field private mIntercepted:Z

.field private mIsExiting:Z

.field private mIsStarting:Z

.field private mRebootBtn:Landroid/widget/TextView;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mRotateLocked:Z

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mScreenHeight:I

.field private mScreenShotThread:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

.field private mScreenWidth:I

.field private mShutDownBtn:Landroid/widget/TextView;

.field private mSnopshotBmp:Landroid/graphics/Bitmap;

.field private mStartedOnce:Z

.field private final mWindowTouchSlop:I

.field myHandler:Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 120
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v1, -0x80000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mColorfilter:Landroid/graphics/ColorFilter;

    .line 126
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/VivoGlobalActionsDialog;->sNullBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 184
    const v0, 0x30f0105

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 90
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    .line 94
    iput v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenWidth:I

    .line 95
    iput v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenHeight:I

    .line 97
    iput-boolean v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRotateLocked:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mStartedOnce:Z

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    invoke-direct {v0, p0}, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;-><init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenShotThread:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    .line 358
    new-instance v0, Lcom/android/server/policy/VivoGlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/VivoGlobalActionsDialog$1;-><init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 185
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 186
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x3030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    .line 188
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x30d003a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x30d003b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x30d0039

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mFakeView:Landroid/widget/ImageView;

    .line 193
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mFakeView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRotateLocked:Z

    .line 202
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mWindowTouchSlop:I

    .line 205
    const-string v0, "VivoGlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotate lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRotateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mStartedOnce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsExiting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mFakeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->startAnimation(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/VivoGlobalActionsDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->updateLayout()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/VivoGlobalActionsDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->startBackgroundAnim()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/policy/VivoGlobalActionsDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsStarting:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/policy/VivoGlobalActionsDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/VivoGlobalActionsDialog;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    return-object v0
.end method

.method private blur(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I
    .param p3, "scaled"    # F

    .prologue
    .line 672
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v10

    .line 673
    .local v10, "startTime":J
    const/4 v7, 0x0

    .line 674
    .local v7, "result":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, p3

    float-to-int v9, v12

    .line 676
    .local v9, "scaledW":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, p3

    float-to-int v8, v12

    .line 677
    .local v8, "scaledH":I
    const/4 v12, 0x2

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x2

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 678
    .local v5, "overlay":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 679
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v12, 0x2

    if-ge v9, v12, :cond_0

    const/4 v12, 0x2

    if-ge v8, v12, :cond_0

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v0, v12

    move/from16 p3, v0

    .line 682
    :cond_0
    const/high16 v12, 0x3f800000    # 1.0f

    div-float v12, v12, p3

    const/high16 v13, 0x3f800000    # 1.0f

    div-float v13, v13, p3

    invoke-virtual {v3, v12, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 683
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 684
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setFlags(I)V

    .line 685
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v12, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 687
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/server/policy/VivoGlobalActionsDialog;->doBlurByRenderScript(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 689
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "overlay":Landroid/graphics/Bitmap;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v8    # "scaledH":I
    .end local v9    # "scaledW":I
    :cond_1
    const/16 v2, 0x32

    .line 690
    .local v2, "a":I
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    .line 692
    :try_start_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 693
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 694
    const/high16 v12, 0x32000000

    invoke-virtual {v3, v12}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    :goto_0
    const-string v12, "VivoGlobalActionsDialog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "blur time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-object v7

    .line 695
    :catch_0
    move-exception v4

    .line 696
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "VivoGlobalActionsDialog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawColor error! e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createBackBlur(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 28
    .param p1, "blurView"    # Landroid/view/View;

    .prologue
    .line 728
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 729
    .local v22, "startMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 730
    .local v9, "blurViewWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 731
    .local v8, "blurViewHeight":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenWidth:I

    .line 732
    .local v12, "fullWidth":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenHeight:I

    .line 734
    .local v11, "fullHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 735
    .local v15, "res":Landroid/content/res/Resources;
    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v26, v0

    div-float v25, v25, v26

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 736
    .local v18, "scale":F
    int-to-float v0, v12

    move/from16 v24, v0

    mul-float v24, v24, v18

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 737
    .local v20, "scaleWidth":I
    int-to-float v0, v11

    move/from16 v24, v0

    mul-float v24, v24, v18

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 739
    .local v19, "scaleHeight":I
    const-string v24, "VivoGlobalActionsDialog"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "blurViewWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", blurViewHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", fullWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", fullHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", scale="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", scaleWidth="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", scaleHeight="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    if-eqz v9, :cond_0

    if-nez v8, :cond_1

    .line 744
    :cond_0
    const/4 v6, 0x0

    .line 789
    :goto_0
    return-object v6

    .line 746
    :cond_1
    const/high16 v7, 0x41700000    # 15.0f

    .line 748
    .local v7, "blurRadius":F
    float-to-int v4, v7

    .line 750
    .local v4, "addedWidth":I
    mul-int/lit8 v24, v4, 0x2

    add-int v24, v24, v20

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move/from16 v1, v19

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 751
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    .line 752
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v10, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 754
    const/high16 v24, -0x1000000

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 755
    int-to-float v0, v4

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 756
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 759
    const/16 v24, 0x0

    sub-int v25, v11, v8

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 760
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 761
    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v17

    .line 765
    .local v17, "rs":Landroid/renderscript/RenderScript;
    sget-object v24, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v5, v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v13

    .line 767
    .local v13, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v13}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v14

    .line 768
    .local v14, "output":Landroid/renderscript/Allocation;
    invoke-static/range {v17 .. v17}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v21

    .line 769
    .local v21, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 770
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 771
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 772
    invoke-virtual {v14, v5}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 774
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 775
    invoke-virtual/range {v21 .. v21}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 776
    invoke-virtual {v13}, Landroid/renderscript/Allocation;->destroy()V

    .line 777
    invoke-virtual {v14}, Landroid/renderscript/Allocation;->destroy()V

    .line 778
    invoke-virtual/range {v17 .. v17}, Landroid/renderscript/RenderScript;->destroy()V

    .line 780
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v5, v4, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 781
    .local v16, "resultBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v16

    if-eq v0, v5, :cond_2

    .line 782
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 785
    :cond_2
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 786
    .local v6, "blurDrw":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v24, Lcom/android/server/policy/VivoGlobalActionsDialog;->mColorfilter:Landroid/graphics/ColorFilter;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 788
    const-string v24, "VivoGlobalActionsDialog"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "blur time : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v22

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private doBlurByRenderScript(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    const/4 v5, 0x0

    .line 706
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 707
    .local v3, "rs":Landroid/renderscript/RenderScript;
    invoke-static {v3, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 708
    .local v1, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 709
    .local v2, "output":Landroid/renderscript/Allocation;
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 710
    .local v4, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v6, p2

    invoke-virtual {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 711
    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 712
    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 713
    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 716
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 717
    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 718
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 719
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v1    # "input":Landroid/renderscript/Allocation;
    .end local v2    # "output":Landroid/renderscript/Allocation;
    .end local v3    # "rs":Landroid/renderscript/RenderScript;
    .end local v4    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    .end local p1    # "src":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 720
    .restart local p1    # "src":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v5

    .line 722
    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_0

    .line 231
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 225
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 227
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 229
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isAnimating()Z
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsStarting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsExiting:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAnimation(Z)V
    .locals 1
    .param p1, "in"    # Z

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 800
    :cond_0
    if-eqz p1, :cond_1

    .line 801
    invoke-direct {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->startInAnim()V

    goto :goto_0

    .line 803
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->startOutAnim()V

    goto :goto_0
.end method

.method private startBackgroundAnim()V
    .locals 6

    .prologue
    .line 416
    iget-object v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mFakeView:Landroid/widget/ImageView;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 418
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 419
    .local v1, "animation":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 420
    new-instance v2, Lcom/android/server/policy/VivoGlobalActionsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/VivoGlobalActionsDialog$2;-><init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 443
    return-void

    .line 416
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startInAnim()V
    .locals 14

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 808
    iget-object v5, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    const-string v6, "x"

    new-array v7, v10, [F

    iget v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonWidth:I

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v11

    iget v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarinLeft:I

    int-to-float v8, v8

    aput v8, v7, v12

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 810
    .local v3, "inLeftX":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 811
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5, v13}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 812
    iget-object v5, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    const-string v6, "x"

    new-array v7, v10, [F

    iget v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenWidth:I

    int-to-float v8, v8

    aput v8, v7, v11

    iget v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenWidth:I

    iget v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarinLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonWidth:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v7, v12

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 814
    .local v4, "inRightX":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 815
    new-instance v5, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v5, v13}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 817
    iget-object v5, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    const-string v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 819
    .local v0, "alpahL":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    const-string v6, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 822
    .local v1, "alpahR":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 823
    .local v2, "animationIn":Landroid/animation/AnimatorSet;
    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v0, v5, v11

    aput-object v1, v5, v12

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 825
    new-instance v5, Lcom/android/server/policy/VivoGlobalActionsDialog$4;

    invoke-direct {v5, p0}, Lcom/android/server/policy/VivoGlobalActionsDialog$4;-><init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 853
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 855
    return-void

    .line 817
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 819
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startOutAnim()V
    .locals 15

    .prologue
    const/high16 v14, 0x40000000    # 2.0f

    const/4 v13, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 859
    iget-object v6, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "protect_lock"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 861
    .local v5, "on":I
    if-ne v5, v13, :cond_0

    .line 862
    iput v11, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    .line 866
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    const-string v7, "x"

    new-array v8, v12, [F

    iget v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarinLeft:I

    int-to-float v9, v9

    aput v9, v8, v11

    iget v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonWidth:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v13

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 868
    .local v3, "inLeftX":Landroid/animation/ObjectAnimator;
    iget v6, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 869
    new-instance v6, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v6, v14}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 871
    iget-object v6, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    const-string v7, "x"

    new-array v8, v12, [F

    iget v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenWidth:I

    iget v10, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarinLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    aput v9, v8, v11

    iget v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenWidth:I

    int-to-float v9, v9

    aput v9, v8, v13

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 873
    .local v4, "inRightX":Landroid/animation/ObjectAnimator;
    iget v6, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 874
    new-instance v6, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v6, v14}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 876
    iget-object v6, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    const-string v7, "alpha"

    new-array v8, v12, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget v7, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 878
    .local v0, "alpahL":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    const-string v7, "alpha"

    new-array v8, v12, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget v7, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 881
    .local v1, "alpahR":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 882
    .local v2, "animationOut":Landroid/animation/AnimatorSet;
    new-array v6, v12, [Landroid/animation/Animator;

    aput-object v0, v6, v11

    aput-object v1, v6, v13

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 884
    new-instance v6, Lcom/android/server/policy/VivoGlobalActionsDialog$5;

    invoke-direct {v6, p0}, Lcom/android/server/policy/VivoGlobalActionsDialog$5;-><init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 913
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 914
    return-void

    .line 876
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 878
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 18

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 236
    .local v12, "startMs":J
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 237
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 238
    .local v11, "wm":Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 239
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 241
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 242
    .local v7, "metrix":Landroid/graphics/Matrix;
    const/4 v14, 0x2

    new-array v4, v14, [F

    const/4 v14, 0x0

    iget v15, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v15, v15

    aput v15, v4, v14

    const/4 v14, 0x1

    iget v15, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v15, v15

    aput v15, v4, v14

    .line 243
    .local v4, "dims":[F
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getDegreesForRotation(I)F

    move-result v3

    .line 244
    .local v3, "degrees":F
    const-string v14, "VivoGlobalActionsDialog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "shot dims = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v4, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v4, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-lez v14, :cond_1

    const/4 v8, 0x1

    .line 246
    .local v8, "requiresRotation":Z
    :goto_0
    if-eqz v8, :cond_0

    .line 248
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 249
    neg-float v14, v3

    invoke-virtual {v7, v14}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 250
    invoke-virtual {v7, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 251
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    aput v15, v4, v14

    .line 252
    const/4 v14, 0x1

    const/4 v15, 0x1

    aget v15, v4, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    aput v15, v4, v14

    .line 253
    const-string v14, "VivoGlobalActionsDialog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "reqRotate, dims = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v4, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v4, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    const/4 v14, 0x0

    aget v14, v4, v14

    float-to-int v14, v14

    const/4 v15, 0x1

    aget v15, v4, v15

    float-to-int v15, v15

    invoke-static {v14, v15}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 257
    .local v9, "screenBitmap":Landroid/graphics/Bitmap;
    if-nez v9, :cond_2

    .line 258
    const-string v14, "VivoGlobalActionsDialog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "screenBitmap is null, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v4, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v4, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v14, Lcom/android/server/policy/VivoGlobalActionsDialog;->sNullBitmap:Landroid/graphics/Bitmap;

    .line 278
    :goto_1
    return-object v14

    .line 245
    .end local v8    # "requiresRotation":Z
    .end local v9    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 262
    .restart local v8    # "requiresRotation":Z
    .restart local v9    # "screenBitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v8, :cond_3

    .line 264
    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 266
    .local v10, "ss":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 269
    const/4 v14, 0x0

    aget v14, v4, v14

    neg-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v4, v15

    neg-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v2, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v9, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 274
    move-object v9, v10

    .line 277
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v10    # "ss":Landroid/graphics/Bitmap;
    :cond_3
    const-string v14, "VivoGlobalActionsDialog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "finish screenshot "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v9

    .line 278
    goto :goto_1
.end method

.method private updateLayout()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 282
    iget-boolean v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsExiting:Z

    if-eqz v8, :cond_0

    .line 283
    const-string v7, "VivoGlobalActionsDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current state is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsStarting:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIsExiting:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 288
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 289
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 290
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 291
    iget v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenWidth:I

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenHeight:I

    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v8, v9, :cond_2

    .line 293
    :cond_1
    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenWidth:I

    .line 294
    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenHeight:I

    .line 297
    :cond_2
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getDegreesForRotation(I)F

    move-result v0

    .line 298
    .local v0, "degrees":F
    const-string v8, "VivoGlobalActionsDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "degrees = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-eqz v8, :cond_4

    const/high16 v8, 0x43340000    # 180.0f

    cmpl-float v8, v0, v8

    if-eqz v8, :cond_4

    const/4 v5, 0x1

    .line 301
    .local v5, "requiresRotation":Z
    :goto_1
    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x30c0035

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonWidth:I

    .line 304
    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x30c0032

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarinLeft:I

    .line 306
    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x30c0033

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarginTop:I

    .line 309
    if-eqz v5, :cond_3

    .line 310
    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x30c0037

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarinLeft:I

    .line 312
    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x30c0038

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarginTop:I

    .line 316
    :cond_3
    const-string v8, "VivoGlobalActionsDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#margin is ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarinLeft:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarginTop:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 321
    .local v3, "lpShut":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 323
    .local v2, "lpReboot":Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarinLeft:I

    iget v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarginTop:I

    invoke-virtual {v3, v8, v9, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 324
    iget v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarginTop:I

    iget v9, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mButtonMarinLeft:I

    invoke-virtual {v2, v7, v8, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 326
    iget-object v7, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mShutDownBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v3}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v7, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRebootBtn:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v2}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v7, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->invalidate()V

    goto/16 :goto_0

    .end local v2    # "lpReboot":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "lpShut":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "requiresRotation":Z
    :cond_4
    move v5, v7

    .line 299
    goto/16 :goto_1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 577
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 528
    iget-object v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v2, :cond_4

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 530
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 532
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 533
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 534
    .local v11, "eventY":I
    iget v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    .line 538
    :cond_0
    iput-boolean v13, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCancelOnUp:Z

    .line 542
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_6

    .line 543
    iget-object v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIntercepted:Z

    .line 544
    iget-boolean v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_2

    .line 545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 546
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 548
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 549
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    .end local v0    # "now":J
    :cond_2
    if-ne v8, v13, :cond_4

    .line 556
    iget-boolean v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_3

    .line 557
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->cancel()V

    .line 559
    :cond_3
    iput-boolean v12, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCancelOnUp:Z

    .line 560
    iput-boolean v12, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIntercepted:Z

    .line 564
    .end local v8    # "action":I
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_5
    :goto_0
    return v2

    .line 552
    .restart local v8    # "action":I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 555
    if-ne v8, v13, :cond_5

    .line 556
    iget-boolean v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_7

    .line 557
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->cancel()V

    .line 559
    :cond_7
    iput-boolean v12, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCancelOnUp:Z

    .line 560
    iput-boolean v12, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIntercepted:Z

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v2

    if-ne v8, v13, :cond_9

    .line 556
    iget-boolean v3, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_8

    .line 557
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->cancel()V

    .line 559
    :cond_8
    iput-boolean v12, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCancelOnUp:Z

    .line 560
    iput-boolean v12, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mIntercepted:Z

    :cond_9
    throw v2
.end method

.method public getBlurBackground(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 666
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 667
    .local v0, "density":F
    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v0, v3

    .line 668
    .local v2, "scaled":F
    const/16 v3, 0x19

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/policy/VivoGlobalActionsDialog;->blur(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->startAnimation(Z)V

    .line 523
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCallback:Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;

    if-nez v0, :cond_0

    .line 922
    const-string v0, "VivoGlobalActionsDialog"

    const-string v1, "none callback found!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 936
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->onBackPressed()V

    goto :goto_0

    .line 928
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCallback:Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;

    invoke-interface {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;->shutdown()V

    .line 929
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->dismiss()V

    goto :goto_0

    .line 932
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCallback:Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;

    invoke-interface {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;->reboot()V

    .line 933
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->dismiss()V

    goto :goto_0

    .line 926
    nop

    :pswitch_data_0
    .packed-switch 0x30d003a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 336
    .local v2, "startMs":J
    const-string v5, "VivoGlobalActionsDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate in, time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 341
    new-instance v5, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;

    invoke-direct {v5, p0}, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;-><init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V

    iput-object v5, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->myHandler:Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;

    .line 346
    const-string v5, "VivoGlobalActionsDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate out, last time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v4

    .line 349
    .local v4, "wm":Landroid/view/IWindowManager;
    invoke-virtual {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 350
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 352
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "VivoGlobalActionsDialog"

    const-string v6, "Remote exception when removing rotation watcher"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 447
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 448
    invoke-direct {p0}, Lcom/android/server/policy/VivoGlobalActionsDialog;->updateLayout()V

    .line 452
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/VivoGlobalActionsDialog$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/VivoGlobalActionsDialog$3;-><init>(Lcom/android/server/policy/VivoGlobalActionsDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 460
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 467
    :goto_0
    const-string v0, "VivoGlobalActionsDialog"

    const-string v1, "onStart!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void

    .line 462
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 463
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 491
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 494
    iget-object v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenShotThread:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    invoke-virtual {v2}, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->exit()V

    .line 495
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 497
    iget-object v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRotationWatcher:Landroid/view/IRotationWatcher;

    if-eqz v2, :cond_0

    .line 498
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 500
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 501
    const-string v2, "VivoGlobalActionsDialog"

    const-string v3, "removeRotationWatcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/policy/EnableAccessibilityController;->onDestroy()V

    .line 514
    :cond_1
    const-string v2, "VivoGlobalActionsDialog"

    const-string v3, "System.gc();"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void

    .line 502
    .restart local v1    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "VivoGlobalActionsDialog"

    const-string v3, "Remote exception when removing rotation watcher"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 638
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 639
    const-string v0, "VivoGlobalActionsDialog"

    const-string v1, "onWindowFocusChanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-boolean v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mStartedOnce:Z

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mScreenShotThread:Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;

    invoke-virtual {v0}, Lcom/android/server/policy/VivoGlobalActionsDialog$ScreenShotThread;->start()V

    .line 648
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mCallback:Lcom/android/server/policy/VivoGlobalActionsDialog$IGlobalDialogCallback;

    .line 220
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->mDuration:I

    .line 213
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 656
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 657
    iget-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->myHandler:Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 658
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "start"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 659
    iget-object v1, p0, Lcom/android/server/policy/VivoGlobalActionsDialog;->myHandler:Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/policy/VivoGlobalActionsDialog$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 660
    return-void
.end method
