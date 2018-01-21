.class Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;
.super Landroid/database/ContentObserver;
.source "VivoFingerprintFrontKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 345
    const-string v0, "finger_unlock_open"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifySwitchState(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string v0, "finger_touch_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    const/4 v1, 0x2

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifySwitchState(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V

    goto :goto_0

    .line 349
    :cond_2
    const-string v0, "finger_simpinpuk"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    const/16 v1, 0x3f4

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->sendFingerMessage(ILandroid/os/Message;J)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$100(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;ILandroid/os/Message;J)V

    goto :goto_0

    .line 351
    :cond_3
    const-string v0, "finger_press_key_unlock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler$1;->this$0:Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->notifySwitchState(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;->access$000(Lcom/android/server/policy/key/VivoFingerprintFrontKeyHandler;I)V

    goto :goto_0
.end method
