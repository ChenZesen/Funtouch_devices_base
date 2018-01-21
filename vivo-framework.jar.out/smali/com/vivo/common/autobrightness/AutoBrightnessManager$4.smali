.class Lcom/vivo/common/autobrightness/AutoBrightnessManager$4;
.super Ljava/lang/Object;
.source "AutoBrightnessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 328
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$4;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessManager$4;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessManager;

    const/4 v1, 0x0

    # setter for: Lcom/vivo/common/autobrightness/AutoBrightnessManager;->mCameraDelayAfterEanble:Z
    invoke-static {v0, v1}, Lcom/vivo/common/autobrightness/AutoBrightnessManager;->access$3202(Lcom/vivo/common/autobrightness/AutoBrightnessManager;Z)Z

    .line 334
    return-void
.end method
