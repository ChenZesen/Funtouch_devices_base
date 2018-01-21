.class Lcom/vivo/services/proxcali/VivoProxCaliService$1;
.super Ljava/lang/Object;
.source "VivoProxCaliService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/services/proxcali/VivoProxCaliService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;


# direct methods
.method constructor <init>(Lcom/vivo/services/proxcali/VivoProxCaliService;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$1;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 609
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/vivo/services/proxcali/VivoProxCaliService$1;->this$0:Lcom/vivo/services/proxcali/VivoProxCaliService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    # invokes: Lcom/vivo/services/proxcali/VivoProxCaliService;->onPsSensorChanged(F)V
    invoke-static {v0, v1}, Lcom/vivo/services/proxcali/VivoProxCaliService;->access$100(Lcom/vivo/services/proxcali/VivoProxCaliService;F)V

    .line 608
    return-void
.end method
