.class Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;
.super Landroid/database/ContentObserver;
.source "VivoInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VivoInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsDBObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VivoInputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/VivoInputMethodManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;->this$0:Lcom/android/server/VivoInputMethodManagerService;

    .line 252
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 253
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;->this$0:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v1, v0, Lcom/android/server/VivoInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;->this$0:Lcom/android/server/VivoInputMethodManagerService;

    # getter for: Lcom/android/server/VivoInputMethodManagerService;->mObserverUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/VivoInputMethodManagerService;->access$000(Lcom/android/server/VivoInputMethodManagerService;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;->this$0:Lcom/android/server/VivoInputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/VivoInputMethodManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;->this$0:Lcom/android/server/VivoInputMethodManagerService;

    # getter for: Lcom/android/server/VivoInputMethodManagerService;->mObserverUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/server/VivoInputMethodManagerService;->access$000(Lcom/android/server/VivoInputMethodManagerService;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/server/VivoInputMethodManagerService$SettingsDBObserver;->this$0:Lcom/android/server/VivoInputMethodManagerService;

    # invokes: Lcom/android/server/VivoInputMethodManagerService;->updateSecureIMS()V
    invoke-static {v0}, Lcom/android/server/VivoInputMethodManagerService;->access$100(Lcom/android/server/VivoInputMethodManagerService;)V

    .line 262
    :cond_0
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
