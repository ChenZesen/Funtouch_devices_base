.class Lcom/android/server/pm/VivoPKMSDatabaseUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoPKMSDatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VivoPKMSDatabaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$1;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 587
    sget-boolean v0, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->DEBUG_FOR_FB_APL:Z

    if-eqz v0, :cond_0

    .line 588
    const-string v0, "VivoPKMSDatabaseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device boot complete. intent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$1;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$000(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$1;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->mQueryHandler:Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;
    invoke-static {v0}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$300(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;

    move-result-object v0

    const/16 v1, 0x64

    iget-object v3, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$1;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$000(Lcom/android/server/pm/VivoPKMSDatabaseUtils;)Landroid/net/Uri;

    move-result-object v3

    # getter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->QUERY_SELECTION_ARGS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$200()[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/VivoPKMSDatabaseUtils$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/server/pm/VivoPKMSDatabaseUtils$1;->this$0:Lcom/android/server/pm/VivoPKMSDatabaseUtils;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/pm/VivoPKMSDatabaseUtils;->isDeviceBootComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/VivoPKMSDatabaseUtils;->access$402(Lcom/android/server/pm/VivoPKMSDatabaseUtils;Z)Z

    .line 592
    return-void
.end method
