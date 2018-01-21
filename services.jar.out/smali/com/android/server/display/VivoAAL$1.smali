.class Lcom/android/server/display/VivoAAL$1;
.super Ljava/lang/Object;
.source "VivoAAL.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VivoAAL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/VivoAAL;


# direct methods
.method constructor <init>(Lcom/android/server/display/VivoAAL;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/server/display/VivoAAL$1;->this$0:Lcom/android/server/display/VivoAAL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 108
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v0, v1

    .line 74
    .local v0, "lightLux":I
    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 75
    const/16 v0, 0x2710

    .line 77
    :cond_0
    const/16 v1, 0xfa0

    if-ge v0, v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/server/display/VivoAAL$1;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mBeingStrongSunlihgt:Z
    invoke-static {v1}, Lcom/android/server/display/VivoAAL;->access$000(Lcom/android/server/display/VivoAAL;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/server/display/VivoAAL$1;->this$0:Lcom/android/server/display/VivoAAL;

    # setter for: Lcom/android/server/display/VivoAAL;->mBeingStrongSunlihgt:Z
    invoke-static {v1, v2}, Lcom/android/server/display/VivoAAL;->access$002(Lcom/android/server/display/VivoAAL;Z)Z

    .line 82
    const-string v1, "VivoAAL"

    const-string v2, "mBeingStrongSunlihgt lightLux < 4000 "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/VivoAAL$1;->this$0:Lcom/android/server/display/VivoAAL;

    # getter for: Lcom/android/server/display/VivoAAL;->mBeingStrongSunlihgt:Z
    invoke-static {v1}, Lcom/android/server/display/VivoAAL;->access$000(Lcom/android/server/display/VivoAAL;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 90
    const-string v1, "VivoAAL"

    const-string v2, "lightLux > 4000 first ---"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/android/server/display/VivoAAL$1;->this$0:Lcom/android/server/display/VivoAAL;

    iput v0, v1, Lcom/android/server/display/VivoAAL;->CompareLightLux:I

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/VivoAAL$1;->this$0:Lcom/android/server/display/VivoAAL;

    iget v1, v1, Lcom/android/server/display/VivoAAL;->CompareLightLux:I

    if-eq v0, v1, :cond_4

    .line 99
    iget-object v1, p0, Lcom/android/server/display/VivoAAL$1;->this$0:Lcom/android/server/display/VivoAAL;

    iput v0, v1, Lcom/android/server/display/VivoAAL;->CompareLightLux:I

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/VivoAAL$1;->this$0:Lcom/android/server/display/VivoAAL;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/display/VivoAAL;->mBeingStrongSunlihgt:Z
    invoke-static {v1, v2}, Lcom/android/server/display/VivoAAL;->access$002(Lcom/android/server/display/VivoAAL;Z)Z

    goto :goto_0
.end method
