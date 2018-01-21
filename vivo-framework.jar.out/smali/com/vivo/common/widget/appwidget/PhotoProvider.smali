.class public Lcom/vivo/common/widget/appwidget/PhotoProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "PhotoProvider.java"


# instance fields
.field public mLayoutId:I

.field public mViewId:I

.field public mWidgetTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 23
    iput v1, p0, Lcom/vivo/common/widget/appwidget/PhotoProvider;->mLayoutId:I

    .line 27
    const-string v0, "PhotoActivity"

    iput-object v0, p0, Lcom/vivo/common/widget/appwidget/PhotoProvider;->mWidgetTag:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/vivo/common/widget/appwidget/PhotoProvider;->mViewId:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    const-string v8, "albuminfo"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 38
    const-string v8, "widget_id"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "widgetId":Ljava/lang/String;
    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/vivo/common/widget/appwidget/PhotoProvider;->mWidgetTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 63
    .end local v7    # "widgetId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local v7    # "widgetId":Ljava/lang/String;
    :cond_1
    const-string v8, "albumid"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "mAlbumId":Ljava/lang/String;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/vivo/common/widget/appwidget/PhotoProvider;->mLayoutId:I

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 43
    .local v6, "views":Landroid/widget/RemoteViews;
    const-string v8, "imagephoto"

    const/4 v9, 0x2

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 44
    .local v5, "share":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 45
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "photouri"

    invoke-interface {v3, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    iget v8, p0, Lcom/vivo/common/widget/appwidget/PhotoProvider;->mViewId:I

    const-string v9, "updatePhotoAlbumList"

    invoke-virtual {v6, v8, v9, v4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 56
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 57
    .local v1, "appWidgetIds":[I
    invoke-virtual {v2, v1, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 61
    .end local v1    # "appWidgetIds":[I
    .end local v2    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "mAlbumId":Ljava/lang/String;
    .end local v5    # "share":Landroid/content/SharedPreferences;
    .end local v6    # "views":Landroid/widget/RemoteViews;
    .end local v7    # "widgetId":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 68
    const-string v3, "imagephoto"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    .local v1, "data":Landroid/content/SharedPreferences;
    const-string v3, "photouri"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "albumid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/vivo/common/widget/appwidget/PhotoProvider;->mLayoutId:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 73
    .local v2, "views":Landroid/widget/RemoteViews;
    iget v3, p0, Lcom/vivo/common/widget/appwidget/PhotoProvider;->mViewId:I

    const-string v4, "updatePhotoAlbumList"

    invoke-virtual {v2, v3, v4, v0}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2, p3, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 76
    .end local v2    # "views":Landroid/widget/RemoteViews;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 77
    return-void
.end method
