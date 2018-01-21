.class Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;
.super Landroid/os/Handler;
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
    .line 218
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    .line 222
    .local v0, "what":I
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle message  is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$100(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;Ljava/lang/String;)V

    .line 223
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$900(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;->onUpdateAlbum(Landroid/graphics/Bitmap;)V

    .line 227
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$900(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;->nextAlbum(Landroid/graphics/Bitmap;)V

    .line 231
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mCallback:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$200(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$3;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$900(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$OnAlbumInfoChange;->prevAlbum(Landroid/graphics/Bitmap;)V

    .line 235
    :cond_2
    return-void
.end method
