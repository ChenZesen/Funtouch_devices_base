.class final Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutoBrightnessRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    .line 163
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 164
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 168
    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    # invokes: Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->handleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;->access$500(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V

    .line 170
    monitor-exit v1

    .line 172
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method