.class Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;
.super Ljava/lang/Object;
.source "AppWidgetPhoto.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 196
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$400(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mAlbumId:Ljava/lang/String;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$500(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->getImageList(Landroid/content/Context;Ljava/lang/String;)[I
    invoke-static {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$600(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    .line 200
    .local v0, "list":[I
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$700(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)[I

    move-result-object v2

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->isEqualList([I[I)Z
    invoke-static {v1, v0, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$800(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;[I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mList:[I
    invoke-static {v1, v0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$702(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;[I)[I

    .line 203
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    iget-object v2, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->loadImage()Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$1000(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/graphics/Bitmap;

    move-result-object v2

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$902(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 205
    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$2;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$1100(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
