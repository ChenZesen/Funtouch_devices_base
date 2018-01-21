.class Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$4;
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
    .line 240
    iput-object p1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    iget-object v1, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # invokes: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->loadImage()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$1000(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$902(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 244
    iget-object v0, p0, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto$4;->this$0:Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;

    # getter for: Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;->access$1100(Lcom/vivo/common/widget/appwidget/AppWidgetPhoto;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 245
    return-void
.end method
