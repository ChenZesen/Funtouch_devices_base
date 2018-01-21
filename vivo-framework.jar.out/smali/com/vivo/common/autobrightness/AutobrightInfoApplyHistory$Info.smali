.class Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;
.super Ljava/lang/Object;
.source "AutobrightInfoApplyHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Info"
.end annotation


# static fields
.field private static final KEY_BRIGHT:Ljava/lang/String; = "b"

.field private static final KEY_LUX:Ljava/lang/String; = "l"

.field private static final KEY_TIME:Ljava/lang/String; = "t"


# instance fields
.field public bright:I

.field public lux:I

.field final synthetic this$0:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

.field public timeStamp:J


# direct methods
.method public constructor <init>(Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;JII)V
    .locals 0
    .param p2, "timeStamp"    # J
    .param p4, "bright"    # I
    .param p5, "lux"    # I

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->this$0:Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p2, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->timeStamp:J

    .line 34
    iput p4, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->bright:I

    .line 35
    iput p5, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->lux:I

    .line 36
    return-void
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 42
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "t"

    iget-wide v4, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->timeStamp:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    const-string v2, "l"

    iget v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->lux:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v2, "b"

    iget v3, p0, Lcom/vivo/common/autobrightness/AutobrightInfoApplyHistory$Info;->bright:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 48
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "AutobrightInfoApplyHistory"

    const-string v3, "info toString e:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v1, 0x0

    goto :goto_0
.end method
