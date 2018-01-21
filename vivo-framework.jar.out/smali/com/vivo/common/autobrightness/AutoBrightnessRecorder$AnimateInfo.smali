.class Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;
.super Ljava/lang/Object;
.source "AutoBrightnessRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateInfo"
.end annotation


# instance fields
.field public mBrightness:I

.field public mTimeStamp:J

.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;)V
    .locals 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;->mBrightness:I

    .line 102
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;->mTimeStamp:J

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;IJ)V
    .locals 1
    .param p2, "brightness"    # I
    .param p3, "time"    # J

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;->this$0:Lcom/vivo/common/autobrightness/AutoBrightnessRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p2, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;->mBrightness:I

    .line 106
    iput-wide p3, p0, Lcom/vivo/common/autobrightness/AutoBrightnessRecorder$AnimateInfo;->mTimeStamp:J

    .line 107
    return-void
.end method
