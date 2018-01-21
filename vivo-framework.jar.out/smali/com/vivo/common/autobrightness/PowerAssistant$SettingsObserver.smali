.class final Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerAssistant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/PowerAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/PowerAssistant;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/PowerAssistant;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/PowerAssistant;

    .line 121
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/PowerAssistant;

    # getter for: Lcom/vivo/common/autobrightness/PowerAssistant;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/PowerAssistant;->access$000(Lcom/vivo/common/autobrightness/PowerAssistant;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/PowerAssistant$SettingsObserver;->this$0:Lcom/vivo/common/autobrightness/PowerAssistant;

    # invokes: Lcom/vivo/common/autobrightness/PowerAssistant;->handleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/vivo/common/autobrightness/PowerAssistant;->access$100(Lcom/vivo/common/autobrightness/PowerAssistant;)V

    .line 128
    monitor-exit v1

    .line 130
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
