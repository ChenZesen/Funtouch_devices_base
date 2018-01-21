.class Landroid/media/MediaScanner$ImagesScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagesScanner"
.end annotation


# instance fields
.field private audioPos:J

.field private camera_refocus:I

.field private fullview:I

.field private group_id:I

.field private live_photo:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1796
    iput-object p1, p0, Landroid/media/MediaScanner$ImagesScanner;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1797
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$ImagesScanner;->audioPos:J

    .line 1798
    iput v2, p0, Landroid/media/MediaScanner$ImagesScanner;->group_id:I

    .line 1799
    iput v2, p0, Landroid/media/MediaScanner$ImagesScanner;->fullview:I

    .line 1800
    iput v2, p0, Landroid/media/MediaScanner$ImagesScanner;->camera_refocus:I

    .line 1801
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$ImagesScanner;->live_photo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaScanner;
    .param p2, "x1"    # Landroid/media/MediaScanner$1;

    .prologue
    .line 1796
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$ImagesScanner;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner$ImagesScanner;)J
    .locals 2
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;

    .prologue
    .line 1796
    iget-wide v0, p0, Landroid/media/MediaScanner$ImagesScanner;->audioPos:J

    return-wide v0
.end method

.method static synthetic access$1302(Landroid/media/MediaScanner$ImagesScanner;J)J
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;
    .param p1, "x1"    # J

    .prologue
    .line 1796
    iput-wide p1, p0, Landroid/media/MediaScanner$ImagesScanner;->audioPos:J

    return-wide p1
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner$ImagesScanner;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;

    .prologue
    .line 1796
    iget v0, p0, Landroid/media/MediaScanner$ImagesScanner;->group_id:I

    return v0
.end method

.method static synthetic access$1402(Landroid/media/MediaScanner$ImagesScanner;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;
    .param p1, "x1"    # I

    .prologue
    .line 1796
    iput p1, p0, Landroid/media/MediaScanner$ImagesScanner;->group_id:I

    return p1
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner$ImagesScanner;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;

    .prologue
    .line 1796
    iget v0, p0, Landroid/media/MediaScanner$ImagesScanner;->fullview:I

    return v0
.end method

.method static synthetic access$1502(Landroid/media/MediaScanner$ImagesScanner;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;
    .param p1, "x1"    # I

    .prologue
    .line 1796
    iput p1, p0, Landroid/media/MediaScanner$ImagesScanner;->fullview:I

    return p1
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner$ImagesScanner;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;

    .prologue
    .line 1796
    iget v0, p0, Landroid/media/MediaScanner$ImagesScanner;->camera_refocus:I

    return v0
.end method

.method static synthetic access$1602(Landroid/media/MediaScanner$ImagesScanner;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;
    .param p1, "x1"    # I

    .prologue
    .line 1796
    iput p1, p0, Landroid/media/MediaScanner$ImagesScanner;->camera_refocus:I

    return p1
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner$ImagesScanner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;

    .prologue
    .line 1796
    iget-object v0, p0, Landroid/media/MediaScanner$ImagesScanner;->live_photo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/MediaScanner$ImagesScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaScanner$ImagesScanner;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1796
    iput-object p1, p0, Landroid/media/MediaScanner$ImagesScanner;->live_photo:Ljava/lang/String;

    return-object p1
.end method
