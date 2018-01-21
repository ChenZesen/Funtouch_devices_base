.class Lcom/vivo/common/autobrightness/BrightnessProviderMemory$1;
.super Ljava/lang/Object;
.source "BrightnessProviderMemory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/BrightnessProviderMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;


# direct methods
.method constructor <init>(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$1;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vivo/common/autobrightness/BrightnessProviderMemory$1;->this$0:Lcom/vivo/common/autobrightness/BrightnessProviderMemory;

    # invokes: Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->correctModificationInfos()I
    invoke-static {v0}, Lcom/vivo/common/autobrightness/BrightnessProviderMemory;->access$000(Lcom/vivo/common/autobrightness/BrightnessProviderMemory;)I

    .line 231
    return-void
.end method
