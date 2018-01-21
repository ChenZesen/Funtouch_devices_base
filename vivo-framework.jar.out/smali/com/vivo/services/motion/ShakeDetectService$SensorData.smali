.class Lcom/vivo/services/motion/ShakeDetectService$SensorData;
.super Ljava/lang/Object;
.source "ShakeDetectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ShakeDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/ShakeDetectService;

.field public timestamp:J

.field public final values:[F


# direct methods
.method constructor <init>(Lcom/vivo/services/motion/ShakeDetectService;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vivo/services/motion/ShakeDetectService$SensorData;->this$0:Lcom/vivo/services/motion/ShakeDetectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/vivo/services/motion/ShakeDetectService$SensorData;->values:[F

    .line 94
    return-void
.end method
