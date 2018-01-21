.class Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;
.super Ljava/lang/Object;
.source "PhoneScreenDownService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PhoneScreenDownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSensorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PhoneScreenDownService;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/PhoneScreenDownService;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/PhoneScreenDownService;Lcom/vivo/services/motion/PhoneScreenDownService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/PhoneScreenDownService;
    .param p2, "x1"    # Lcom/vivo/services/motion/PhoneScreenDownService$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;-><init>(Lcom/vivo/services/motion/PhoneScreenDownService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 66
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 53
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->isIdle:Z
    invoke-static {v0}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$000(Lcom/vivo/services/motion/PhoneScreenDownService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    const/4 v1, 0x0

    # setter for: Lcom/vivo/services/motion/PhoneScreenDownService;->isIdle:Z
    invoke-static {v0, v1}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$002(Lcom/vivo/services/motion/PhoneScreenDownService;Z)Z

    .line 58
    iget-object v0, p0, Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    iget-object v1, p0, Lcom/vivo/services/motion/PhoneScreenDownService$MotionSensorEventListener;->this$0:Lcom/vivo/services/motion/PhoneScreenDownService;

    # getter for: Lcom/vivo/services/motion/PhoneScreenDownService;->mPhonePostureAnalyzer:Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;
    invoke-static {v1}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$100(Lcom/vivo/services/motion/PhoneScreenDownService;)Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;

    move-result-object v1

    # invokes: Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->judge(Landroid/hardware/SensorEvent;)Z
    invoke-static {v1, p1}, Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;->access$200(Lcom/vivo/services/motion/PhoneScreenDownService$PhonePostureAnalyzer;Landroid/hardware/SensorEvent;)Z

    move-result v1

    # setter for: Lcom/vivo/services/motion/PhoneScreenDownService;->isIdle:Z
    invoke-static {v0, v1}, Lcom/vivo/services/motion/PhoneScreenDownService;->access$002(Lcom/vivo/services/motion/PhoneScreenDownService;Z)Z

    .line 61
    :cond_0
    return-void
.end method
