.class final enum Lcom/vivo/common/widget/BBKDatePicker$DateType;
.super Ljava/lang/Enum;
.source "BBKDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/widget/BBKDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vivo/common/widget/BBKDatePicker$DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vivo/common/widget/BBKDatePicker$DateType;

.field public static final enum DAY:Lcom/vivo/common/widget/BBKDatePicker$DateType;

.field public static final enum MONTH:Lcom/vivo/common/widget/BBKDatePicker$DateType;

.field public static final enum YEAR:Lcom/vivo/common/widget/BBKDatePicker$DateType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;

    const-string v1, "YEAR"

    invoke-direct {v0, v1, v2}, Lcom/vivo/common/widget/BBKDatePicker$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;->YEAR:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    new-instance v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;

    const-string v1, "MONTH"

    invoke-direct {v0, v1, v3}, Lcom/vivo/common/widget/BBKDatePicker$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;->MONTH:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    new-instance v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;

    const-string v1, "DAY"

    invoke-direct {v0, v1, v4}, Lcom/vivo/common/widget/BBKDatePicker$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;->DAY:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vivo/common/widget/BBKDatePicker$DateType;

    sget-object v1, Lcom/vivo/common/widget/BBKDatePicker$DateType;->YEAR:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vivo/common/widget/BBKDatePicker$DateType;->MONTH:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/common/widget/BBKDatePicker$DateType;->DAY:Lcom/vivo/common/widget/BBKDatePicker$DateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;->$VALUES:[Lcom/vivo/common/widget/BBKDatePicker$DateType;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/common/widget/BBKDatePicker$DateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;

    return-object v0
.end method

.method public static values()[Lcom/vivo/common/widget/BBKDatePicker$DateType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/vivo/common/widget/BBKDatePicker$DateType;->$VALUES:[Lcom/vivo/common/widget/BBKDatePicker$DateType;

    invoke-virtual {v0}, [Lcom/vivo/common/widget/BBKDatePicker$DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivo/common/widget/BBKDatePicker$DateType;

    return-object v0
.end method
