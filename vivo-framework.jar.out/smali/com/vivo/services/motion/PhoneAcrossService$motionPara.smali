.class Lcom/vivo/services/motion/PhoneAcrossService$motionPara;
.super Ljava/lang/Object;
.source "PhoneAcrossService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneAcrossService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "motionPara"
.end annotation


# instance fields
.field curVal:F

.field maxVal:F

.field minVal:F

.field oldVal:F

.field temVal:F

.field final synthetic this$0:Lcom/vivo/services/motion/PhoneAcrossService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/PhoneAcrossService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->this$0:Lcom/vivo/services/motion/PhoneAcrossService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->curVal:F

    .line 153
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->oldVal:F

    .line 154
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->temVal:F

    .line 155
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->maxVal:F

    .line 156
    iput v0, p0, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;->minVal:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/PhoneAcrossService;Lcom/vivo/services/motion/PhoneAcrossService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/PhoneAcrossService;
    .param p2, "x1"    # Lcom/vivo/services/motion/PhoneAcrossService$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PhoneAcrossService$motionPara;-><init>(Lcom/vivo/services/motion/PhoneAcrossService;)V

    return-void
.end method
