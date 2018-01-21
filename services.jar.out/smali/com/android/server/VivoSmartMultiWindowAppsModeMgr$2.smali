.class Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$2;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowAppsModeMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->vivoDisplayReady(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$2;->this$0:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

    iput-object p2, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$2;->this$0:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->mLoadApps:Z
    invoke-static {v0, v1}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->access$002(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Z)Z

    .line 213
    iget-object v0, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$2;->this$0:Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;

    iget-object v1, p0, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->startLoadAppsModes(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;->access$100(Lcom/android/server/VivoSmartMultiWindowAppsModeMgr;Landroid/content/Context;)V

    .line 214
    return-void
.end method
