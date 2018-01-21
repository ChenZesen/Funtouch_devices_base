.class Landroid/widget/AbsListView$UpdateBottomFlagTask;
.super Landroid/os/AsyncTask;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateBottomFlagTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 7770
    iput-object p1, p0, Landroid/widget/AbsListView$UpdateBottomFlagTask;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private isSuperFloatViewServiceRunning()Z
    .locals 8

    .prologue
    .line 7789
    iget-object v6, p0, Landroid/widget/AbsListView$UpdateBottomFlagTask;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 7790
    .local v1, "context":Landroid/content/Context;
    const-string v6, "activity"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 7791
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 7792
    .local v5, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView$UpdateBottomFlagTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v5, :cond_1

    .line 7793
    :cond_0
    iget-object v6, p0, Landroid/widget/AbsListView$UpdateBottomFlagTask;->this$0:Landroid/widget/AbsListView;

    const/4 v7, 0x1

    # setter for: Landroid/widget/AbsListView;->mAllowNewTask:Z
    invoke-static {v6, v7}, Landroid/widget/AbsListView;->access$4602(Landroid/widget/AbsListView;Z)Z

    .line 7794
    const/4 v3, 0x0

    .line 7806
    :goto_0
    return v3

    .line 7796
    :cond_1
    const/4 v3, 0x0

    .line 7797
    .local v3, "isRunning":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 7798
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 7799
    .local v4, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    if-eqz v4, :cond_3

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SuperShotFloatViewService"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7801
    const/4 v3, 0x1

    .line 7805
    .end local v4    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$UpdateBottomFlagTask;->this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mAllowNewTask:Z
    invoke-static {v6, v3}, Landroid/widget/AbsListView;->access$4602(Landroid/widget/AbsListView;Z)Z

    goto :goto_0

    .line 7797
    .restart local v4    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 7773
    invoke-direct {p0}, Landroid/widget/AbsListView$UpdateBottomFlagTask;->isSuperFloatViewServiceRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 7774
    invoke-virtual {p0}, Landroid/widget/AbsListView$UpdateBottomFlagTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7785
    :cond_0
    :goto_0
    return-object v6

    .line 7777
    :cond_1
    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 7779
    .local v1, "isBottom":Z
    :try_start_0
    iget-object v2, p0, Landroid/widget/AbsListView$UpdateBottomFlagTask;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "listview_oversroll"

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7781
    :catch_0
    move-exception v0

    .line 7782
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    move v2, v3

    .line 7779
    goto :goto_1
.end method
