.class public Lcom/vivo/services/hallstate/HallEvent;
.super Ljava/lang/Object;
.source "HallEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vivo/services/hallstate/HallEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final HALL_STATE_COVERED:I = 0x0

.field public static final HALL_STATE_UNCOVERED:I = 0x1

.field public static final HALL_STATE_UNKOWN:I = -0x1

.field private static final HAVE_HOLSTER_WINDOW:Z

.field public static final TIME_INVALID:J = -0x1L


# instance fields
.field public final mHaveHolsterWindow:Z

.field public state:I

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "Have_holster_with_window"

    const-string v1, "persist.vivo.phone.holster"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/vivo/services/hallstate/HallEvent;->HAVE_HOLSTER_WINDOW:Z

    .line 117
    new-instance v0, Lcom/vivo/services/hallstate/HallEvent$1;

    invoke-direct {v0}, Lcom/vivo/services/hallstate/HallEvent$1;-><init>()V

    sput-object v0, Lcom/vivo/services/hallstate/HallEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/vivo/services/hallstate/HallEvent;->HAVE_HOLSTER_WINDOW:Z

    iput-boolean v0, p0, Lcom/vivo/services/hallstate/HallEvent;->mHaveHolsterWindow:Z

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/services/hallstate/HallEvent;->time:J

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "defState"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/vivo/services/hallstate/HallEvent;->HAVE_HOLSTER_WINDOW:Z

    iput-boolean v0, p0, Lcom/vivo/services/hallstate/HallEvent;->mHaveHolsterWindow:Z

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/services/hallstate/HallEvent;->time:J

    .line 37
    iput p1, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    .line 38
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "state"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/vivo/services/hallstate/HallEvent;->HAVE_HOLSTER_WINDOW:Z

    iput-boolean v0, p0, Lcom/vivo/services/hallstate/HallEvent;->mHaveHolsterWindow:Z

    .line 41
    iput-wide p1, p0, Lcom/vivo/services/hallstate/HallEvent;->time:J

    .line 42
    iput p3, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 1
    .param p1, "other"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/vivo/services/hallstate/HallEvent;->HAVE_HOLSTER_WINDOW:Z

    iput-boolean v0, p0, Lcom/vivo/services/hallstate/HallEvent;->mHaveHolsterWindow:Z

    .line 46
    invoke-virtual {p0, p1}, Lcom/vivo/services/hallstate/HallEvent;->copyFrom(Lcom/vivo/services/hallstate/HallEvent;)V

    .line 47
    return-void
.end method

.method public static isCovered(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 78
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStateValid(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 70
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUncovered(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 86
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copyFrom(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 2
    .param p1, "other"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-wide v0, p1, Lcom/vivo/services/hallstate/HallEvent;->time:J

    iput-wide v0, p0, Lcom/vivo/services/hallstate/HallEvent;->time:J

    .line 52
    iget v0, p1, Lcom/vivo/services/hallstate/HallEvent;->state:I

    iput v0, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    .line 54
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/vivo/services/hallstate/HallEvent;)Z
    .locals 3
    .param p1, "other"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    const/4 v0, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    iget v2, p1, Lcom/vivo/services/hallstate/HallEvent;->state:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public haveHolsterWindow()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/vivo/services/hallstate/HallEvent;->HAVE_HOLSTER_WINDOW:Z

    return v0
.end method

.method public isCovered()Z
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 66
    iget v1, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUncovered()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 82
    iget v1, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vivo/services/hallstate/HallEvent;->time:J

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vivo/services/hallstate/HallEvent;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/services/hallstate/HallEvent;->mHaveHolsterWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/vivo/services/hallstate/HallEvent;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget v0, p0, Lcom/vivo/services/hallstate/HallEvent;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void
.end method
