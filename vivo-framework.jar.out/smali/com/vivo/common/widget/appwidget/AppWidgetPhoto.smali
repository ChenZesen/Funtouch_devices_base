.class public Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;
.super Ljava/lang/Object;
.source "AppWidgetPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "AppWidgetPhoto"

.field private static final UPDATE_FOR_ALBUM_ID_CHANGE:I = 0x0

.field private static final UPDATE_FOR_ALBUM_LIST_CHANGE:I = 0x1

.field private static final UPDATE_FOR_NEXT_IMAGE:I = 0x2

.field private static final UPDATE_FOR_PREV_IMAGE:I = 0x3


# instance fields
.field private mAlbumId:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndex:I

.field private mList:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShapeBitmap:Landroid/graphics/Bitmap;

.field private mStorageMode:Z

.field private mWidgetTag:Ljava/lang/String;

.field private mWidth:I

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private nextRunnable:Ljava/lang/Runnable;

.field private prevRunnable:Ljava/lang/Runnable;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;Landroid/graphics/Bitmap;IILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
    .param p3, "defaultBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z

    .line 44
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mAlbumId:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mShapeBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mPaint:Landroid/graphics/Paint;

    .line 50
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    .line 53
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    .line 54
    iput v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    .line 133
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->updateRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$4;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$4;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->nextRunnable:Ljava/lang/Runnable;

    .line 248
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$5;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$5;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->prevRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidgetTag:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    .line 85
    iput p4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidth:I

    .line 86
    iput p5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    .line 87
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    .line 88
    invoke-direct {p0, p3}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 89
    iput-object p2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;

    .line 90
    invoke-static {p1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getStorageState(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
    .param p3, "defaultBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "shape"    # Landroid/graphics/Bitmap;
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z

    .line 44
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mAlbumId:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mShapeBitmap:Landroid/graphics/Bitmap;

    .line 49
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mPaint:Landroid/graphics/Paint;

    .line 50
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    .line 53
    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    .line 54
    iput v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    .line 133
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->updateRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$4;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$4;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->nextRunnable:Ljava/lang/Runnable;

    .line 248
    new-instance v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$5;

    invoke-direct {v0, p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$5;-><init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->prevRunnable:Ljava/lang/Runnable;

    .line 65
    iput-object p5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidgetTag:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    .line 67
    iput-object p4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mShapeBitmap:Landroid/graphics/Bitmap;

    .line 68
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidth:I

    .line 69
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    .line 70
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    invoke-direct {p0, p3}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getShapeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 74
    iput-object p2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;

    .line 75
    invoke-static {p1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getStorageState(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->loadImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->update()V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getImageList(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)[I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    return-object v0
.end method

.method static synthetic access$702(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;
    .param p1, "x1"    # [I

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    return-object p1
.end method

.method static synthetic access$800(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;[I[I)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->isEqualList([I[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private displayPhotos(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 318
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 320
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    const-string v2, "fromwidget"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    const-string v2, "widget_id"

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidgetTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v0, "extra":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 326
    const-string v2, "com.android.gallery3d/.app.Gallery"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 327
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 328
    return-void
.end method

.method private static getCorrectlyOrientedImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 476
    .local v11, "is":Ljava/io/InputStream;
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 477
    .local v10, "dbo":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 478
    const/4 v2, 0x0

    invoke-static {v11, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 479
    .local v1, "srcBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 480
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .end local v1    # "srcBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "orientation"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 484
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 486
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 487
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 488
    .local v12, "orientation":I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 489
    const/16 v2, 0x5a

    if-eq v12, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v12, v2, :cond_4

    .line 491
    :cond_1
    iget v14, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 492
    .local v14, "rotatedWidth":I
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 499
    .local v13, "rotatedHeight":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 500
    div-int v2, v14, p2

    int-to-float v2, v2

    int-to-float v3, v13

    const v4, 0x3ff33333    # 1.9f

    move/from16 v0, p3

    int-to-float v5, v0

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v8, v2

    .line 501
    .local v8, "be":I
    const/4 v2, 0x1

    if-gt v8, v2, :cond_2

    .line 502
    const/4 v8, 0x1

    .line 503
    :cond_2
    iput v8, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 504
    const/4 v2, 0x0

    invoke-static {v11, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 505
    .restart local v1    # "srcBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 506
    const/4 v10, 0x0

    .line 507
    if-lez v12, :cond_3

    .line 509
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 510
    .local v6, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, v12

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 511
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 514
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    return-object v1

    .line 496
    .end local v1    # "srcBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "be":I
    .end local v13    # "rotatedHeight":I
    .end local v14    # "rotatedWidth":I
    :cond_4
    iget v14, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 497
    .restart local v14    # "rotatedWidth":I
    iget v13, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .restart local v13    # "rotatedHeight":I
    goto :goto_0
.end method

.method private static getImageList(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumid"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 527
    if-nez p1, :cond_1

    move-object v10, v12

    .line 560
    :cond_0
    :goto_0
    return-object v10

    .line 529
    :cond_1
    const/4 v10, 0x0

    .line 532
    .local v10, "list":[I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "bucket_display_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "datetaken DESC, _id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 535
    .local v7, "cursorImages":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 537
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 538
    .local v11, "size":I
    new-array v9, v11, [I

    .line 539
    .local v9, "ids":[I
    const/4 v6, 0x0

    .line 542
    .local v6, "ctr":I
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v10, v12

    .line 545
    goto :goto_0

    .line 547
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    aput v0, v9, v6

    .line 548
    add-int/lit8 v6, v6, 0x1

    .line 549
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 550
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 551
    move-object v10, v9

    .line 553
    .end local v6    # "ctr":I
    .end local v9    # "ids":[I
    .end local v11    # "size":I
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    .end local v7    # "cursorImages":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 558
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x0

    const/16 v6, 0x14

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 381
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 382
    .local v3, "h":I
    const/4 v2, 0x0

    .line 383
    .local v2, "dstW":I
    const/4 v1, 0x0

    .line 384
    .local v1, "dstH":I
    div-int v5, v3, v4

    if-ge v5, v6, :cond_1

    div-int v5, v4, v3

    if-ge v5, v6, :cond_1

    .line 387
    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidth:I

    .line 388
    mul-int v5, v2, v3

    div-int v1, v5, v4

    .line 389
    iget v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    if-ge v1, v5, :cond_0

    .line 391
    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    .line 392
    mul-int v5, v4, v1

    div-int v2, v5, v3

    .line 400
    :cond_0
    :goto_0
    const/4 v5, 0x1

    invoke-static {p1, v2, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 401
    iget v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidth:I

    iget v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    .local v0, "btm":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 403
    iget v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    if-le v1, v5, :cond_2

    .line 405
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    sub-int v6, v1, v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    invoke-static {p1, v9, v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 411
    :goto_1
    const/4 p1, 0x0

    .line 412
    return-object v0

    .line 397
    .end local v0    # "btm":Landroid/graphics/Bitmap;
    :cond_1
    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidth:I

    .line 398
    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    goto :goto_0

    .line 409
    .restart local v0    # "btm":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidth:I

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidth:I

    invoke-static {p1, v6, v9, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private getShapeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 417
    invoke-direct {p0, p1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 418
    iget v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidth:I

    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 419
    .local v0, "btm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mShapeBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 421
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 423
    return-object v0
.end method

.method private static getStorageState(Landroid/content/Context;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    const/4 v8, 0x0

    .line 435
    .local v8, "sMethodgetVolumePaths":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 436
    .local v9, "sMethodgetVolumeState":Ljava/lang/reflect/Method;
    const-string v11, "storage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 439
    .local v5, "mStorageManager":Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getVolumePaths"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 440
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getVolumeState"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 448
    const/4 v11, 0x0

    :try_start_1
    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 449
    .local v7, "paths":[Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v1, v3

    .line 451
    .local v6, "path":Ljava/lang/String;
    const-string v11, "/sdcard0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "/sdcard"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 453
    :cond_0
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v9, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 454
    .local v10, "state":Ljava/lang/String;
    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-nez v11, :cond_1

    .line 456
    const/4 v11, 0x1

    .line 470
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "paths":[Ljava/lang/String;
    .end local v10    # "state":Ljava/lang/String;
    :goto_1
    return v11

    .line 442
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 460
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "paths":[Ljava/lang/String;
    .restart local v10    # "state":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 449
    .end local v10    # "state":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "paths":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 467
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    const/4 v11, 0x0

    goto :goto_1

    .line 470
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v7    # "paths":[Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private isEqualList([I[I)Z
    .locals 2
    .param p1, "srcList"    # [I
    .param p2, "dstList"    # [I

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "equal":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 213
    const/4 v1, 0x1

    .line 214
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidDataUri(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 347
    if-nez p1, :cond_0

    .line 357
    :goto_0
    return v2

    .line 351
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 352
    .local v1, "f":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    const/4 v2, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "f":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private loadImage()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 366
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    .line 367
    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/images/media/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    iget v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidth:I

    iget v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHeight:I

    invoke-static {v3, v4, v5, v6}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getCorrectlyOrientedImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mShapeBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 375
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    return-object v1

    .line 366
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    goto :goto_0

    .line 368
    :cond_1
    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getShapeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 370
    :catch_0
    move-exception v2

    .line 372
    .local v2, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mDefaultBitmap:Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 373
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-boolean v0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "AppWidgetPhoto"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void
.end method

.method private pickImageFile()V
    .locals 3

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.gallery3d.app.AlbumPicker.PICK_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    const-string v1, "widget_id"

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWidgetTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v1, "com.android.gallery3d/.app.AlbumPicker"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 341
    const-string v1, "fromwidget"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method


# virtual methods
.method public getDefaultBitamp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public nextImage()V
    .locals 2

    .prologue
    .line 272
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    .line 273
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    .line 274
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void

    .line 273
    :cond_0
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    goto :goto_0
.end method

.method public noImages()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prevImage()V
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    .line 283
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    .line 284
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->prevRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void

    .line 283
    :cond_0
    iget v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 103
    const-string v2, "register receiver"

    invoke-direct {p0, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->logd(Ljava/lang/String;)V

    .line 104
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AppWidgetPhoto#Backgroundwork"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWorkThread:Landroid/os/HandlerThread;

    .line 105
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 106
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWorkHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.photos.update"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v1, "filter2":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void
.end method

.method public startAlbumActivity()V
    .locals 5

    .prologue
    .line 292
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mAlbumId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    if-ltz v2, :cond_1

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/images/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I

    iget v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 295
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->isValidDataUri(Landroid/net/Uri;)Z

    move-result v0

    .line 296
    .local v0, "isValidaUri":Z
    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->displayPhotos(Landroid/net/Uri;)V

    .line 309
    .end local v0    # "isValidaUri":Z
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 302
    .restart local v0    # "isValidaUri":Z
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->pickImageFile()V

    goto :goto_0

    .line 307
    .end local v0    # "isValidaUri":Z
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->pickImageFile()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 124
    :try_start_0
    const-string v0, "unregister receiver"

    invoke-direct {p0, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->logd(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 126
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateAlbumList(Ljava/lang/String;)V
    .locals 2
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mAlbumId:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->updateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method
