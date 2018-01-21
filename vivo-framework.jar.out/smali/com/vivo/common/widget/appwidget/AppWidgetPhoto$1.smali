.class Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;


# direct methods
.method constructor <init>(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive    action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     mStorageMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z
    invoke-static {v3}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z
    invoke-static {v1, v4}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$002(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;Z)Z

    .line 144
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;->onStorageModeChange(Z)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->update()V
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    goto :goto_0

    .line 151
    :cond_2
    const-string v1, "com.photos.update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$000(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->update()V
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$300(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)V

    goto :goto_0

    .line 159
    :cond_4
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mStorageMode:Z
    invoke-static {v1, v5}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$002(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;Z)Z

    .line 162
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$1;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;->onStorageModeChange(Z)V

    goto :goto_0
.end method
