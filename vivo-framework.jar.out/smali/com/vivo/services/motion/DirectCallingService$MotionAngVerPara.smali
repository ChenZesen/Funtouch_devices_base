.class Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;
.super Ljava/lang/Object;
.source "DirectCallingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/DirectCallingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionAngVerPara"
.end annotation


# instance fields
.field gpro_idx:I

.field gpro_value:F

.field final synthetic this$0:Lcom/vivo/services/motion/DirectCallingService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/DirectCallingService;)V
    .locals 1

    .prologue
    .line 635
    iput-object p1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_value:F

    .line 638
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;->gpro_idx:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p2, "x1"    # Lcom/vivo/services/motion/DirectCallingService$1;

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/DirectCallingService$MotionAngVerPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;)V

    return-void
.end method
