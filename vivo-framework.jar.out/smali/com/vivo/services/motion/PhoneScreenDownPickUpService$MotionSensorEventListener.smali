.class Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "PhoneScreenDownPickUpService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneScreenDownPickUpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;Lcom/vivo/services/motion/PhoneScreenDownPickUpService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownPickUpService;
    .param p2, "x1"    # Lcom/vivo/services/motion/PhoneScreenDownPickUpService$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 62
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 49
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isIdle:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$000(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    const/4 v1, 0x0

    # setter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isIdle:Z
    invoke-static {v0, v1}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$002(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;Z)Z

    .line 54
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownPickUpService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->mPhonePickUpAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$100(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;)Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;

    move-result-object v1

    # invokes: Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->judge(Landroid/hardware/SensorEvent;)Z
    invoke-static {v1, p1}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;->access$200(Lcom/vivo/services/motion/PhoneScreenDownPickUpService$PhonePickUpAnalyzer;Landroid/hardware/SensorEvent;)Z

    move-result v1

    # setter for: Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->isIdle:Z
    invoke-static {v0, v1}, Lcom/vivo/services/motion/PhoneScreenDownPickUpService;->access$002(Lcom/vivo/services/motion/PhoneScreenDownPickUpService;Z)Z

    .line 57
    :cond_0
    return-void
.end method
