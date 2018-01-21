.class Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$2;
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
    .line 299
    iput-object p1, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$2;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    const-string v0, "ScreenBrightnessModeRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunnableRollback try to restore, mLastScreenBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$2;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBeforeChengedScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$2;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBeforeChengedScreenBrightness:I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$2;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1200(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore$2;->this$0:Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;

    # getter for: Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->mBeforeChengedScreenBrightness:I
    invoke-static {v2}, Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;->access$1800(Lcom/vivo/common/autobrightness/ScreenBrightnessModeRestore;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    :cond_0
    return-void
.end method
