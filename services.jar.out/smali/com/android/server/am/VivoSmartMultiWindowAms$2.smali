.class Lcom/android/server/am/VivoSmartMultiWindowAms$2;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowAms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/VivoSmartMultiWindowAms;->vivoMustFullScreenActivitysChanged(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/am/VivoSmartMultiWindowAms;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$2;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    iput-object p2, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$2;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    # getter for: Lcom/android/server/am/VivoSmartMultiWindowAms;->mMgr:Lcom/android/server/VivoSmartMultiWindowMgr;
    invoke-static {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$700(Lcom/android/server/am/VivoSmartMultiWindowAms;)Lcom/android/server/VivoSmartMultiWindowMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/SmartMultWindowSharedPreferences;->getMustFullScreenActivity(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/VivoSmartMultiWindowMgr;->mustFullScreenActivitys:Ljava/util/ArrayList;

    .line 415
    return-void
.end method
