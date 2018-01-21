.class Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;
.super Ljava/lang/Object;
.source "ScreenBrightnessModeRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 249
    invoke-static {}, Lcom/vivo/common/autobrightness/AblConfig;->isBrightnessModeRestore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunnable try to restore, mLastScreenBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitToRestoreBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreBrightness:Z
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$900(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitToRestoreMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreMode:Z
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1000(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastScreenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1100(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreBrightness:Z
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$900(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunnable restore prelast SCREEN_BRIGHTNESS as mLastScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$300(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # setter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreBrightness:Z
    invoke-static {v0, v4}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$902(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Z)Z

    .line 260
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # setter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->bBrightnessRestoreStatus:Z
    invoke-static {v0, v3}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1302(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Z)Z

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreMode:Z
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1000(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1100(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunnable restore prelast SCREEN_BRIGHTNESS as mLastScreenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1100(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$300(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1100(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 266
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenMode:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1100(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # setter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mWaitToRestoreMode:Z
    invoke-static {v0, v4}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1002(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Z)Z

    .line 296
    :cond_2
    :goto_0
    return-void

    .line 273
    :cond_3
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunnable try to restore, mLastScreenBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessModeOffBy:Ljava/lang/String;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1400(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    iget-object v1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mScreenBrightnessModeOffBy:Ljava/lang/String;
    invoke-static {v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1400(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->USE_PRELAST_PKG_LIST:[Ljava/lang/String;
    invoke-static {}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1500()[Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->isInList(Ljava/lang/String;[Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1600(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 275
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPreLastScreenBrightness:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1700(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v0

    if-lez v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunnable restore prelast SCREEN_BRIGHTNESS as mPreLastScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPreLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1700(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$300(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPreLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1700(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    :goto_1
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v0

    if-lez v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunnable restore prelast SCREEN_BRIGHTNESS as mLastScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$300(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 282
    :cond_5
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t restore prelast as : mLastScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreLastScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPreLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1700(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v0

    if-lez v0, :cond_7

    .line 286
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunnable restore last SCREEN_BRIGHTNESS as mPreLastScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mPreLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1700(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$300(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 289
    :cond_7
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t restore last as : mLastScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$1;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mLastScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
