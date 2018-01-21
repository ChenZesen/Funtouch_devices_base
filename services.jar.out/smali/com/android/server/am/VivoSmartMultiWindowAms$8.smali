.class Lcom/android/server/am/VivoSmartMultiWindowAms$8;
.super Ljava/lang/Object;
.source "VivoSmartMultiWindowAms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/VivoSmartMultiWindowAms;->banDuplicateVideoPlayer(Lcom/android/server/am/ActivityRecord;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;


# direct methods
.method constructor <init>(Lcom/android/server/am/VivoSmartMultiWindowAms;)V
    .locals 0

    .prologue
    .line 7222
    iput-object p1, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$8;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7226
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 7227
    iget-object v0, p0, Lcom/android/server/am/VivoSmartMultiWindowAms$8;->this$0:Lcom/android/server/am/VivoSmartMultiWindowAms;

    # getter for: Lcom/android/server/am/VivoSmartMultiWindowAms;->mAms:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/VivoSmartMultiWindowAms;->access$000(Lcom/android/server/am/VivoSmartMultiWindowAms;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v1, 0x30e0141

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7228
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 7229
    return-void
.end method
