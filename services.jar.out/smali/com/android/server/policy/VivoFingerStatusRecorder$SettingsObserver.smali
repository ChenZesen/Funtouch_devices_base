.class Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VivoFingerStatusRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/VivoFingerStatusRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/VivoFingerStatusRecorder;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    .line 445
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 446
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 451
    # getter for: Lcom/android/server/policy/VivoFingerStatusRecorder;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/VivoFingerStatusRecorder$SettingsObserver;->this$0:Lcom/android/server/policy/VivoFingerStatusRecorder;

    # invokes: Lcom/android/server/policy/VivoFingerStatusRecorder;->handleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/android/server/policy/VivoFingerStatusRecorder;->access$600(Lcom/android/server/policy/VivoFingerStatusRecorder;)V

    .line 453
    monitor-exit v1

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
