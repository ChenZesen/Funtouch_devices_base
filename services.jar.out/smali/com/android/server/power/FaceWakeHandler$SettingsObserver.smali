.class Lcom/android/server/power/FaceWakeHandler$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "FaceWakeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FaceWakeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FaceWakeHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/power/FaceWakeHandler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/power/FaceWakeHandler$SettingsObserver;->this$0:Lcom/android/server/power/FaceWakeHandler;

    .line 51
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 52
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    const-string v1, "observe...."

    invoke-static {v1}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/server/power/FaceWakeHandler$SettingsObserver;->this$0:Lcom/android/server/power/FaceWakeHandler;

    # getter for: Lcom/android/server/power/FaceWakeHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/FaceWakeHandler;->access$000(Lcom/android/server/power/FaceWakeHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "bbk_keep_screen_enable_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    iget-object v1, p0, Lcom/android/server/power/FaceWakeHandler$SettingsObserver;->this$0:Lcom/android/server/power/FaceWakeHandler;

    # invokes: Lcom/android/server/power/FaceWakeHandler;->updateSettings()V
    invoke-static {v1}, Lcom/android/server/power/FaceWakeHandler;->access$100(Lcom/android/server/power/FaceWakeHandler;)V

    .line 62
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 67
    const-string v0, "onChange...."

    invoke-static {v0}, Lcom/android/server/power/FaceWakeHandler;->log(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/power/FaceWakeHandler$SettingsObserver;->this$0:Lcom/android/server/power/FaceWakeHandler;

    # invokes: Lcom/android/server/power/FaceWakeHandler;->notifyChanged()V
    invoke-static {v0}, Lcom/android/server/power/FaceWakeHandler;->access$200(Lcom/android/server/power/FaceWakeHandler;)V

    .line 69
    return-void
.end method
