.class Lcom/vivo/common/autobrightness/AppClassify$Pare;
.super Ljava/lang/Object;
.source "AppClassify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AppClassify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pare"
.end annotation


# instance fields
.field public list:[Ljava/lang/String;

.field public type:Lcom/vivo/common/autobrightness/AppClassify$AppType;


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/AppClassify$AppType;[Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lcom/vivo/common/autobrightness/AppClassify$AppType;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AppClassify$Pare;->type:Lcom/vivo/common/autobrightness/AppClassify$AppType;

    .line 73
    iput-object p2, p0, Lcom/vivo/common/autobrightness/AppClassify$Pare;->list:[Ljava/lang/String;

    .line 74
    return-void
.end method
