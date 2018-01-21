.class public final enum Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;
.super Ljava/lang/Enum;
.source "TimePeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/TimePeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PeriodType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

.field public static final enum DAY_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

.field public static final enum NIGHT_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    const-string v1, "DAY_TIME"

    invoke-direct {v0, v1, v2}, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->DAY_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    .line 37
    new-instance v0, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    const-string v1, "NIGHT_TIME"

    invoke-direct {v0, v1, v3}, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->NIGHT_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    sget-object v1, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->DAY_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->NIGHT_TIME:Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->$VALUES:[Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    return-object v0
.end method

.method public static values()[Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->$VALUES:[Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    invoke-virtual {v0}, [Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivo/common/autobrightness/TimePeriod$PeriodType;

    return-object v0
.end method
