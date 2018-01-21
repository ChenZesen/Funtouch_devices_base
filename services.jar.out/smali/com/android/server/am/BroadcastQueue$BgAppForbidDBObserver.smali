.class Lcom/android/server/am/BroadcastQueue$BgAppForbidDBObserver;
.super Landroid/database/ContentObserver;
.source "BroadcastQueue.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BgAppForbidDBObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BgAppForbidDBObserver;->this$0:Lcom/android/server/am/BroadcastQueue;

    .line 1576
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1577
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 1580
    const-string v1, "BroadcastQueue"

    const-string v2, "calling observe method ! "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BgAppForbidDBObserver;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1582
    .local v0, "resolver":Landroid/content/ContentResolver;
    # getter for: Lcom/android/server/am/BroadcastQueue;->CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/BroadcastQueue;->access$100()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1584
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1588
    const-string v0, "BroadcastQueue"

    const-string v1, "calling onChange method !"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BgAppForbidDBObserver;->this$0:Lcom/android/server/am/BroadcastQueue;

    # invokes: Lcom/android/server/am/BroadcastQueue;->queryFromForbidBgStartUpList()V
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->access$200(Lcom/android/server/am/BroadcastQueue;)V

    .line 1590
    return-void
.end method
