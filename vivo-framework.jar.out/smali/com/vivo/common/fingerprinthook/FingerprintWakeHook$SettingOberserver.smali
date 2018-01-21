.class Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;
.super Landroid/database/ContentObserver;
.source "FingerprintWakeHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingOberserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;


# direct methods
.method public constructor <init>(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    .line 232
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 233
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 236
    # getter for: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook$SettingOberserver;->this$0:Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;

    # invokes: Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->handleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;->access$100(Lcom/vivo/common/fingerprinthook/FingerprintWakeHook;)V

    .line 238
    monitor-exit v1

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
