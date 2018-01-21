.class Lcom/vivo/services/motion/PocketModeService$SensorData;
.super Ljava/lang/Object;
.source "PocketModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/PocketModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/services/motion/PocketModeService;

.field public timestamp:J

.field public final values:[F


# direct methods
.method constructor <init>(Lcom/vivo/services/motion/PocketModeService;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vivo/services/motion/PocketModeService$SensorData;->this$0:Lcom/vivo/services/motion/PocketModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/vivo/services/motion/PocketModeService$SensorData;->values:[F

    .line 83
    return-void
.end method
