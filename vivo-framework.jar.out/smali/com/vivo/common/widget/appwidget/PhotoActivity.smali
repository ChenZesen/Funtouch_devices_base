.class public Lcom/vivo/common/widget/appwidget/PhotoActivity;
.super Landroid/app/Activity;
.source "PhotoActivity.java"


# instance fields
.field private mAppWidgetId:I

.field public mLayoutId:I

.field public mWidgetTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/widget/appwidget/PhotoActivity;->mAppWidgetId:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/common/widget/appwidget/PhotoActivity;->mLayoutId:I

    .line 24
    const-string v0, "PhotoActivity"

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/PhotoActivity;->mWidgetTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 46
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 48
    const-string v5, "bucketId"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "id":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v3, "result":Landroid/content/Intent;
    const-string v5, "albuminfo"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v5, "widget_id"

    iget-object v6, p0, Lcom/vivo/common/widget/appwidget/PhotoActivity;->mWidgetTag:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v5, "albumid"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v3}, Lcom/vivo/common/widget/appwidget/PhotoActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 56
    .local v2, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/PhotoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/vivo/common/widget/appwidget/PhotoActivity;->mLayoutId:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 57
    .local v4, "views":Landroid/widget/RemoteViews;
    iget v5, p0, Lcom/vivo/common/widget/appwidget/PhotoActivity;->mAppWidgetId:I

    invoke-virtual {v2, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 58
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "appWidgetId"

    iget v6, p0, Lcom/vivo/common/widget/appwidget/PhotoActivity;->mAppWidgetId:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v1}, Lcom/vivo/common/widget/appwidget/PhotoActivity;->setResult(ILandroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/PhotoActivity;->finish()V

    .line 67
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v3    # "result":Landroid/content/Intent;
    .end local v4    # "views":Landroid/widget/RemoteViews;
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/PhotoActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/PhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vivo/common/widget/appwidget/PhotoActivity;->mAppWidgetId:I

    .line 31
    iget v1, p0, Lcom/vivo/common/widget/appwidget/PhotoActivity;->mAppWidgetId:I

    if-ne v1, v3, :cond_0

    .line 33
    invoke-virtual {p0, v4}, Lcom/vivo/common/widget/appwidget/PhotoActivity;->setResult(I)V

    .line 34
    invoke-virtual {p0}, Lcom/vivo/common/widget/appwidget/PhotoActivity;->finish()V

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.gallery3d.app.AlbumPicker.PICK_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "com.android.gallery3d/.app.AlbumPicker"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0, v4}, Lcom/vivo/common/widget/appwidget/PhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
