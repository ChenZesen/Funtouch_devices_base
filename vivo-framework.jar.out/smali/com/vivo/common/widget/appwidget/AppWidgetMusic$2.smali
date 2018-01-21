.class Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;
.super Ljava/lang/Thread;
.source "AppWidgetMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->setMusicPhoto(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

.field final synthetic val$album_id:J

.field final synthetic val$song_id:J


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;JJ)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iput-wide p2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->val$song_id:J

    iput-wide p4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->val$album_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 454
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-wide v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->val$song_id:J

    iget-wide v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->val$album_id:J

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->getBitmap(JJ)Landroid/graphics/Bitmap;
    invoke-static {v2, v4, v5, v6, v7}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$400(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;JJ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 455
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 457
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 458
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 459
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$600(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->images:[Ljava/lang/Integer;
    invoke-static {v3}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)[Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    iget v4, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->images:[Ljava/lang/Integer;
    invoke-static {v5}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)[Ljava/lang/Integer;

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 462
    .end local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-object v1, v1, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->musicHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method
