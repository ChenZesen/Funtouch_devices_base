.class public Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
.super Ljava/lang/Object;
.source "AppWidgetMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicInfo"
.end annotation


# instance fields
.field public AlbumImg:[J

.field public CurPosition:I

.field public SingerName:[Ljava/lang/String;

.field public SongName:[Ljava/lang/String;

.field public allSongId:[J

.field public allSongName:[Ljava/lang/String;

.field public bitmap:Landroid/graphics/Bitmap;

.field public isPlaying:Z

.field public mPlayList:[J

.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;


# direct methods
.method public constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 800
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->AlbumImg:[J

    .line 803
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SongName:[Ljava/lang/String;

    .line 804
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    .line 805
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SingerName:[Ljava/lang/String;

    .line 806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->isPlaying:Z

    .line 807
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    .line 808
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 809
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->allSongId:[J

    .line 810
    iput-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->allSongName:[Ljava/lang/String;

    return-void
.end method
