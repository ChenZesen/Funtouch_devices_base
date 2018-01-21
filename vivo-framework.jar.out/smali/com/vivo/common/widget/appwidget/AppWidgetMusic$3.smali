.class Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetMusic;
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
    .line 537
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 544
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "action":Ljava/lang/String;
    const-string v4, "AppWidgetMusic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicRecevier-action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v4, "com.android.music.playstatechanged"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.music.metachanged"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.music.queuechanged"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 548
    :cond_0
    const-string v4, "updatePlaylist"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 549
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 551
    const-string v4, "AppWidgetMusic"

    const-string v5, "bundle!=null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "ALBUMLIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->AlbumImg:[J

    .line 553
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "TRACKLIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SongName:[Ljava/lang/String;

    .line 554
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "PLAYLIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    .line 555
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "ARTISTLIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SingerName:[Ljava/lang/String;

    .line 556
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "POSITION"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    .line 557
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "ISPLAYING"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->isPlaying:Z

    .line 559
    :cond_1
    const-string v4, "com.android.music.playstatechanged"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 561
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v5}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->isPlaying:Z

    invoke-interface {v4, v5}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;->playMusic(Z)V

    .line 563
    :cond_2
    const-string v4, "com.android.music.metachanged"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 565
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    invoke-virtual {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->storageState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 567
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

    move-result-object v4

    invoke-interface {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;->storageState()V

    .line 568
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->prePosition:I
    invoke-static {v4, v7}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$702(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;I)I

    .line 571
    :cond_3
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-object v4, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->musicHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-object v4, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->musicHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 624
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_0
    return-void

    .line 574
    :cond_5
    const-string v4, "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 576
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->prePosition:I
    invoke-static {v4, v7}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$702(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;I)I

    .line 577
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

    move-result-object v4

    invoke-interface {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;->forceClearMusic()V

    goto :goto_0

    .line 579
    :cond_6
    const-string v4, "APPWIDGET_UPDATENEEDCLEAR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 581
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->needClear:Z
    invoke-static {v4, v9}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$802(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;Z)Z

    goto :goto_0

    .line 583
    :cond_7
    const-string v4, "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 585
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->prePosition:I
    invoke-static {v4, v7}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$702(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;I)I

    .line 586
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

    move-result-object v4

    invoke-interface {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;->killMusicService()V

    goto :goto_0

    .line 588
    :cond_8
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 590
    :cond_9
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.bbkmusic"

    const-string v5, "com.android.bbkmusic.MediaPlaybackService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .local v3, "serviceName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "FROMZERO"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v2, "it":Landroid/content/Intent;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 593
    const-string v4, "fromZero"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 596
    .end local v2    # "it":Landroid/content/Intent;
    .end local v3    # "serviceName":Landroid/content/ComponentName;
    :cond_a
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 598
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->prePosition:I
    invoke-static {v4, v7}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$702(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;I)I

    .line 599
    const-string v4, "updatePlaylist"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 600
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_b

    .line 602
    const-string v4, "AppWidgetMusic"

    const-string v5, "bundle!=null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "ALBUMLIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->AlbumImg:[J

    .line 604
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "TRACKLIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SongName:[Ljava/lang/String;

    .line 605
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "PLAYLIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    .line 606
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "ARTISTLIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->SingerName:[Ljava/lang/String;

    .line 607
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "POSITION"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    .line 608
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v4}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v4

    const-string v5, "ISPLAYING"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->isPlaying:Z

    .line 610
    :cond_b
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->handlerAction:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$902(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-object v4, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->musicHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-object v4, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->musicHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 614
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_c
    const-string v4, "com.android.music.update.photo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 616
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v5}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->mPlayList:[J

    iget-object v6, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v6}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v6

    iget v6, v6, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    aget-wide v6, v5, v6

    iget-object v5, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v5}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->AlbumImg:[J

    iget-object v8, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v8}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v8

    iget v8, v8, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;->CurPosition:I

    aget-wide v8, v5, v8

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->setMusicPhoto(JJ)V
    invoke-static {v4, v6, v7, v8, v9}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$1000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;JJ)V

    goto/16 :goto_0

    .line 618
    :cond_d
    const-string v4, "com.android.ringclip.changed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 620
    const-string v4, "AppWidgetMusic"

    const-string v5, "RINGCLIP_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-object v4, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->musicHandler:Landroid/os/Handler;

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v4, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    iget-object v4, v4, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->musicHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v10, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
