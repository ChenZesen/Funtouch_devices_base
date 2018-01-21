.class Lcom/vivo/services/motion/ScreenOffWakeupService$SensorData;
.super Ljava/lang/Object;
.source "ScreenOffWakeupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ScreenOffWakeupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

.field public timestamp:J

.field public final values:[F


# direct methods
.method constructor <init>(Lcom/vivo/services/motion/ScreenOffWakeupService;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$SensorData;->this$0:Lcom/vivo/services/motion/ScreenOffWakeupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/vivo/services/motion/ScreenOffWakeupService$SensorData;->values:[F

    .line 93
    return-void
.end method
