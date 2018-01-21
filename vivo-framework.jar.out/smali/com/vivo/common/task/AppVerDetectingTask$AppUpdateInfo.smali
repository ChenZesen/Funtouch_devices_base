.class public Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
.super Ljava/lang/Object;
.source "AppVerDetectingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/common/task/AppVerDetectingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppUpdateInfo"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private instruction:Ljava/lang/String;

.field private stateCode:I

.field private url:Ljava/lang/String;

.field private verCode:I

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput v3, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->stateCode:I

    .line 608
    iput-object v2, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->appName:Ljava/lang/String;

    .line 609
    iput-object v2, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->verName:Ljava/lang/String;

    .line 610
    iput v3, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->verCode:I

    .line 611
    iput-object v2, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->instruction:Ljava/lang/String;

    .line 612
    iput-object v2, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->url:Ljava/lang/String;

    .line 619
    # invokes: Lcom/vivo/common/task/AppVerDetectingTask;->isStringEmpty(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/vivo/common/task/AppVerDetectingTask;->access$100(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    :goto_0
    return-void

    .line 626
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 627
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "stat"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->setStateCode(I)V

    .line 628
    const-string v2, "appName"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->setAppName(Ljava/lang/String;)V

    .line 629
    const-string v2, "verName"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->setVerName(Ljava/lang/String;)V

    .line 630
    const-string v2, "verCode"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->setVerCode(I)V

    .line 631
    const-string v2, "instruction"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->setInstruction(Ljava/lang/String;)V

    .line 632
    const-string v2, "url"

    invoke-virtual {p0, v2, v1}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->setUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 675
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 687
    :cond_0
    :goto_0
    return v1

    .line 683
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 687
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 667
    invoke-virtual {p0, p1, p2}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRawString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 647
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    :goto_0
    return-object v1

    .line 653
    :cond_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    .line 658
    .local v0, "jsone":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public getStateCode()I
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->stateCode:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVerCode()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->verCode:I

    return v0
.end method

.method public getVerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->appName:Ljava/lang/String;

    .line 708
    return-void
.end method

.method public setInstruction(Ljava/lang/String;)V
    .locals 0
    .param p1, "instruction"    # Ljava/lang/String;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->instruction:Ljava/lang/String;

    .line 762
    return-void
.end method

.method public setStateCode(I)V
    .locals 0
    .param p1, "stateCode"    # I

    .prologue
    .line 793
    iput p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->stateCode:I

    .line 794
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->url:Ljava/lang/String;

    .line 778
    return-void
.end method

.method public setVerCode(I)V
    .locals 0
    .param p1, "verCode"    # I

    .prologue
    .line 743
    iput p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->verCode:I

    .line 744
    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "verName"    # Ljava/lang/String;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->verName:Ljava/lang/String;

    .line 726
    return-void
.end method
