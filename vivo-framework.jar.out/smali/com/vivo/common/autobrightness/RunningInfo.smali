.class public Lcom/vivo/common/autobrightness/RunningInfo;
.super Ljava/lang/Object;
.source "RunningInfo.java"


# static fields
.field private static final KEY_BACKLIGHT:Ljava/lang/String; = "Lcm"

.field private static final KEY_CHANGE_BY:Ljava/lang/String; = "cBy"

.field private static final KEY_LUX:Ljava/lang/String; = "Lux"

.field private static final KEY_MODE:Ljava/lang/String; = "Mod"

.field private static final KEY_OFF_BY:Ljava/lang/String; = "oBy"

.field private static final KEY_PKG:Ljava/lang/String; = "Pkg"

.field private static final KEY_PRE_BACKLIGHT:Ljava/lang/String; = "pLcm"

.field private static final KEY_PRE_MODE:Ljava/lang/String; = "pMod"

.field private static final KEY_PRE_PKG:Ljava/lang/String; = "pPkg"

.field private static final KEY_PRE_SETTING:Ljava/lang/String; = "pSet"

.field private static final KEY_PWR_ASSISTANT:Ljava/lang/String; = "Ass"

.field private static final KEY_PWR_PERCENT:Ljava/lang/String; = "Pct"

.field private static final KEY_PWR_SAVING:Ljava/lang/String; = "Sav"

.field private static final KEY_REASON:Ljava/lang/String; = "Rea"

.field private static final KEY_SETTING:Ljava/lang/String; = "Set"

.field public static final REASON_BOOT:Ljava/lang/String; = "boot"

.field public static final REASON_SELF:Ljava/lang/String; = "self"

.field public static final REASON_USER:Ljava/lang/String; = "user"


# instance fields
.field public backlight:I

.field public changeBy:Ljava/lang/String;

.field public lux:I

.field public mode:I

.field public offBy:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public preBacklight:I

.field public preMode:I

.field public prePkg:Ljava/lang/String;

.field public preSetting:I

.field public pwrAssistant:Z

.field public pwrPercent:I

.field public pwrSaving:Z

.field public reason:Ljava/lang/String;

.field public setting:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "preBacklight"    # I
    .param p2, "preSetting"    # I
    .param p3, "preMode"    # I
    .param p4, "backlight"    # I
    .param p5, "setting"    # I
    .param p6, "mode"    # I
    .param p7, "offBy"    # Ljava/lang/String;
    .param p8, "changeBy"    # Ljava/lang/String;
    .param p9, "pkg"    # Ljava/lang/String;
    .param p10, "prePkg"    # Ljava/lang/String;
    .param p11, "pwrSaving"    # Z

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/common/autobrightness/RunningInfo;->pwrPercent:I

    .line 25
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/RunningInfo;->pwrSaving:Z

    .line 26
    iput-boolean v1, p0, Lcom/vivo/common/autobrightness/RunningInfo;->pwrAssistant:Z

    .line 58
    iput p1, p0, Lcom/vivo/common/autobrightness/RunningInfo;->preBacklight:I

    .line 59
    iput p2, p0, Lcom/vivo/common/autobrightness/RunningInfo;->preSetting:I

    .line 60
    iput p3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->preMode:I

    .line 61
    iput p4, p0, Lcom/vivo/common/autobrightness/RunningInfo;->backlight:I

    .line 62
    iput p5, p0, Lcom/vivo/common/autobrightness/RunningInfo;->setting:I

    .line 63
    iput p6, p0, Lcom/vivo/common/autobrightness/RunningInfo;->mode:I

    .line 64
    iput-object p7, p0, Lcom/vivo/common/autobrightness/RunningInfo;->offBy:Ljava/lang/String;

    .line 65
    iput-object p8, p0, Lcom/vivo/common/autobrightness/RunningInfo;->changeBy:Ljava/lang/String;

    .line 66
    iput-object p9, p0, Lcom/vivo/common/autobrightness/RunningInfo;->pkg:Ljava/lang/String;

    .line 67
    iput-object p10, p0, Lcom/vivo/common/autobrightness/RunningInfo;->prePkg:Ljava/lang/String;

    .line 68
    iput-boolean p11, p0, Lcom/vivo/common/autobrightness/RunningInfo;->pwrSaving:Z

    .line 69
    return-void
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v1, "ret":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "Rea"

    iget-object v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v2, "Lux"

    iget v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->lux:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    const-string v2, "pLcm"

    iget v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->preBacklight:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string v2, "pSet"

    iget v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->preSetting:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string v2, "pMod"

    iget v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->preMode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string v2, "Lcm"

    iget v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->backlight:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v2, "Set"

    iget v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->setting:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string v2, "Mod"

    iget v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->mode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string v2, "oBy"

    iget-object v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->offBy:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v2, "cBy"

    iget-object v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->changeBy:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v2, "Pkg"

    iget-object v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v2, "pPkg"

    iget-object v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->prePkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v2, "Pct"

    iget v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->pwrPercent:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v2, "Sav"

    iget-boolean v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->pwrSaving:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 92
    const-string v2, "Ass"

    iget-boolean v3, p0, Lcom/vivo/common/autobrightness/RunningInfo;->pwrAssistant:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "ret":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 94
    .restart local v1    # "ret":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method
