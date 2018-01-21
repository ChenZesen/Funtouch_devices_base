.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$8;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Lcom/vivo/common/autobrightness/CameraLumaCallback$UserChangeBrightnessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$8;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChangeBrightness(Lcom/vivo/common/autobrightness/AutobrightInfo;)V
    .locals 2
    .param p1, "ab"    # Lcom/vivo/common/autobrightness/AutobrightInfo;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$8;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$900(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$8;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    # getter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mAutobrightInfo:Lcom/vivo/common/autobrightness/AutobrightInfo;
    invoke-static {v0}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$4600(Lcom/vivo/common/autobrightness/AutoBrightnessManager;)Lcom/vivo/common/autobrightness/AutobrightInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/common/autobrightness/AutobrightInfo;->copyFrom(Lcom/vivo/common/autobrightness/AutobrightInfo;)V

    .line 534
    monitor-exit v1

    .line 535
    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
