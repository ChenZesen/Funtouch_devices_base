.class Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;
.super Ljava/lang/Object;
.source "DirectCallingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/DirectCallingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionAngDevPara"
.end annotation


# instance fields
.field curr_device_Ang:F

.field old_device_Ang:F

.field tem_device_Ang:F

.field final synthetic this$0:Lcom/vivo/services/motion/DirectCallingService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/DirectCallingService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1818
    iput-object p1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1820
    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->curr_device_Ang:F

    .line 1821
    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->old_device_Ang:F

    .line 1822
    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;->tem_device_Ang:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p2, "x1"    # Lcom/vivo/services/motion/DirectCallingService$1;

    .prologue
    .line 1818
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/DirectCallingService$MotionAngDevPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;)V

    return-void
.end method
