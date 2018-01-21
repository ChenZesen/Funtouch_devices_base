.class Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;
.super Ljava/lang/Object;
.source "DirectCallingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/DirectCallingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionAccPara"
.end annotation


# instance fields
.field acc_idx:I

.field acc_value:F

.field curr_device_Acc:F

.field old_device_Acc:F

.field tem_device_Acc:F

.field final synthetic this$0:Lcom/vivo/services/motion/DirectCallingService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/DirectCallingService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    iput-object p1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->this$0:Lcom/vivo/services/motion/DirectCallingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->acc_value:F

    .line 643
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->acc_idx:I

    .line 644
    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->curr_device_Acc:F

    .line 645
    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->old_device_Acc:F

    .line 646
    iput v1, p0, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;->tem_device_Acc:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/DirectCallingService;Lcom/vivo/services/motion/DirectCallingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/DirectCallingService;
    .param p2, "x1"    # Lcom/vivo/services/motion/DirectCallingService$1;

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/DirectCallingService$MotionAccPara;-><init>(Lcom/vivo/services/motion/DirectCallingService;)V

    return-void
.end method
