.class public final enum Lcom/vivo/common/autobrightness/AppClassify$AppType;
.super Ljava/lang/Enum;
.source "AppClassify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AppClassify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vivo/common/autobrightness/AppClassify$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vivo/common/autobrightness/AppClassify$AppType;

.field public static final enum TYPE_NEWS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

.field public static final enum TYPE_READING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

.field public static final enum TYPE_SHOPING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

.field public static final enum TYPE_SNS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

.field public static final enum TYPE_UNKOWN:Lcom/vivo/common/autobrightness/AppClassify$AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;

    const-string v1, "TYPE_UNKOWN"

    invoke-direct {v0, v1, v2}, Lcom/vivo/common/autobrightness/AppClassify$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_UNKOWN:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 10
    new-instance v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;

    const-string v1, "TYPE_SNS"

    invoke-direct {v0, v1, v3}, Lcom/vivo/common/autobrightness/AppClassify$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_SNS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 11
    new-instance v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;

    const-string v1, "TYPE_SHOPING"

    invoke-direct {v0, v1, v4}, Lcom/vivo/common/autobrightness/AppClassify$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_SHOPING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 12
    new-instance v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;

    const-string v1, "TYPE_NEWS"

    invoke-direct {v0, v1, v5}, Lcom/vivo/common/autobrightness/AppClassify$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_NEWS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 13
    new-instance v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;

    const-string v1, "TYPE_READING"

    invoke-direct {v0, v1, v6}, Lcom/vivo/common/autobrightness/AppClassify$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_READING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vivo/common/autobrightness/AppClassify$AppType;

    sget-object v1, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_UNKOWN:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_SNS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_SHOPING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_NEWS:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vivo/common/autobrightness/AppClassify$AppType;->TYPE_READING:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;->$VALUES:[Lcom/vivo/common/autobrightness/AppClassify$AppType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/common/autobrightness/AppClassify$AppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;

    return-object v0
.end method

.method public static values()[Lcom/vivo/common/autobrightness/AppClassify$AppType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/vivo/common/autobrightness/AppClassify$AppType;->$VALUES:[Lcom/vivo/common/autobrightness/AppClassify$AppType;

    invoke-virtual {v0}, [Lcom/vivo/common/autobrightness/AppClassify$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivo/common/autobrightness/AppClassify$AppType;

    return-object v0
.end method
