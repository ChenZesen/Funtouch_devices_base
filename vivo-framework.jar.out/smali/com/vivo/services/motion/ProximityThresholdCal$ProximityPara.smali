.class Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;
.super Ljava/lang/Object;
.source "ProximityThresholdCal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/services/motion/ProximityThresholdCal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityPara"
.end annotation


# instance fields
.field private mAway:I

.field private mCalDown:I

.field private mCalUp:I

.field private mClose:I

.field final synthetic this$0:Lcom/vivo/services/motion/ProximityThresholdCal;


# direct methods
.method private constructor <init>(Lcom/vivo/services/motion/ProximityThresholdCal;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->this$0:Lcom/vivo/services/motion/ProximityThresholdCal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/services/motion/ProximityThresholdCal;Lcom/vivo/services/motion/ProximityThresholdCal$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/services/motion/ProximityThresholdCal;
    .param p2, "x1"    # Lcom/vivo/services/motion/ProximityThresholdCal$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;-><init>(Lcom/vivo/services/motion/ProximityThresholdCal;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .prologue
    .line 13
    iget v0, p0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalDown:I

    return v0
.end method

.method static synthetic access$102(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalDown:I

    return p1
.end method

.method static synthetic access$200(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .prologue
    .line 13
    iget v0, p0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalUp:I

    return v0
.end method

.method static synthetic access$202(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mCalUp:I

    return p1
.end method

.method static synthetic access$300(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .prologue
    .line 13
    iget v0, p0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mClose:I

    return v0
.end method

.method static synthetic access$302(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mClose:I

    return p1
.end method

.method static synthetic access$400(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;

    .prologue
    .line 13
    iget v0, p0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mAway:I

    return v0
.end method

.method static synthetic access$402(Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/vivo/services/motion/ProximityThresholdCal$ProximityPara;->mAway:I

    return p1
.end method
