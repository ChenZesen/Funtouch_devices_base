.class Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;
.super Landroid/os/Handler;
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
    .line 418
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 425
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
    invoke-static {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;->onUpdate(Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 431
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->handMusicInfo()V
    invoke-static {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V

    goto :goto_0

    .line 433
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 435
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->changeMusicInfo()V
    invoke-static {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)V

    goto :goto_0

    .line 437
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicUtilWidget:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;
    invoke-static {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetMusic;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->mMusicInfo:Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetMusic;)Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicUtilWidget;->updateQueryData(Lcom/vivo/common/widget/appwidget/AppWidgetMusic$MusicInfo;)V

    goto :goto_0
.end method
