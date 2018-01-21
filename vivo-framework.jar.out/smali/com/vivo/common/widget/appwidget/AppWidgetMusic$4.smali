.class Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;
.super Ljava/lang/Thread;
.source "AppWidgetMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->queryMusicDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 641
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    invoke-virtual {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->getAllSongsCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 644
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, "number":I
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, v2, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->allSongId:[J

    .line 648
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v2, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->allSongName:[Ljava/lang/String;

    .line 649
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->allSongId:[J

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 652
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->allSongName:[Ljava/lang/String;

    const-string v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    .end local v1    # "number":I
    :cond_0
    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-object v2, v2, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->musicHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    if-eqz v0, :cond_1

    .line 666
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_1
    :goto_1
    return-void

    .line 658
    :catch_0
    move-exception v2

    .line 664
    if-eqz v0, :cond_1

    .line 666
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 664
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 666
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method
