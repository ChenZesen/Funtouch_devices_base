.class public final Lcom/android/server/input/InputWindowHandle;
.super Ljava/lang/Object;
.source "InputWindowHandle.java"


# instance fields
.field public canReceiveKeys:Z

.field public dispatchingTimeoutNanos:J

.field public final displayId:I

.field public frameBottom:I

.field public frameLeft:I

.field public frameRight:I

.field public frameTop:I

.field public hasFocus:Z

.field public hasWallpaper:Z

.field public final inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field public inputChannel:Landroid/view/InputChannel;

.field public inputFeatures:I

.field public layer:I

.field public layoutParamsFlags:I

.field public layoutParamsType:I

.field public mSplitFrameBottom:I

.field public mSplitFrameLeft:I

.field public mSplitFrameRight:I

.field public mSplitFrameTop:I

.field public mSplitInputHandleId:I

.field public mSplitScaleFactor:F

.field public mSplitStackBottom:I

.field public mSplitStackLeft:I

.field public mSplitStackRight:I

.field public mSplitStackTop:I

.field public name:Ljava/lang/String;

.field public ownerPid:I

.field public ownerUid:I

.field public paused:Z

.field private ptr:J

.field public scaleFactor:F

.field public final touchableRegion:Landroid/graphics/Region;

.field public visible:Z

.field public final windowState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "windowState"    # Ljava/lang/Object;
    .param p3, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 94
    iput v1, p0, Lcom/android/server/input/InputWindowHandle;->mSplitInputHandleId:I

    .line 95
    iput v1, p0, Lcom/android/server/input/InputWindowHandle;->mSplitStackLeft:I

    .line 96
    iput v1, p0, Lcom/android/server/input/InputWindowHandle;->mSplitStackTop:I

    .line 97
    iput v1, p0, Lcom/android/server/input/InputWindowHandle;->mSplitStackRight:I

    .line 98
    iput v1, p0, Lcom/android/server/input/InputWindowHandle;->mSplitStackBottom:I

    .line 99
    iput v1, p0, Lcom/android/server/input/InputWindowHandle;->mSplitFrameLeft:I

    .line 100
    iput v1, p0, Lcom/android/server/input/InputWindowHandle;->mSplitFrameTop:I

    .line 101
    iput v1, p0, Lcom/android/server/input/InputWindowHandle;->mSplitFrameRight:I

    .line 102
    iput v1, p0, Lcom/android/server/input/InputWindowHandle;->mSplitFrameBottom:I

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/input/InputWindowHandle;->mSplitScaleFactor:F

    .line 111
    iput-object p1, p0, Lcom/android/server/input/InputWindowHandle;->inputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 112
    iput-object p2, p0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    .line 113
    iput p3, p0, Lcom/android/server/input/InputWindowHandle;->displayId:I

    .line 114
    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/input/InputWindowHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void

    .line 121
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
