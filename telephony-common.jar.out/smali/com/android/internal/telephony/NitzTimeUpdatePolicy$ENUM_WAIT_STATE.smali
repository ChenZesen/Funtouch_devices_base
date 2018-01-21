.class final enum Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;
.super Ljava/lang/Enum;
.source "NitzTimeUpdatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NitzTimeUpdatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ENUM_WAIT_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

.field public static final enum COMPLETE:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

.field public static final enum INIT:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

.field public static final enum WAIT_LOC:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

.field public static final enum WAIT_NTP:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->INIT:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    new-instance v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    const-string v1, "WAIT_LOC"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->WAIT_LOC:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    new-instance v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    const-string v1, "WAIT_NTP"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->WAIT_NTP:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    new-instance v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->COMPLETE:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    sget-object v1, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->INIT:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->WAIT_LOC:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->WAIT_NTP:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->COMPLETE:Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->$VALUES:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->$VALUES:[Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/NitzTimeUpdatePolicy$ENUM_WAIT_STATE;

    return-object v0
.end method
