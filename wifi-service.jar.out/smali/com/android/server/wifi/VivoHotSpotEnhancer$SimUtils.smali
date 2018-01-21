.class Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;
.super Ljava/lang/Object;
.source "VivoHotSpotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/VivoHotSpotEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimUtils"
.end annotation


# static fields
.field private static final CACHE_TIME:J = 0x1388L


# instance fields
.field private mFtTelephony:Landroid/telephony/FtTelephony;

.field private sInfoRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/FtSubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private sLastUpdateTime:J

.field final synthetic this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/VivoHotSpotEnhancer;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->this$0:Lcom/android/server/wifi/VivoHotSpotEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sInfoRecords:Ljava/util/ArrayList;

    .line 1007
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sLastUpdateTime:J

    .line 1003
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    .line 1004
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->update()V

    .line 1005
    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    .line 1009
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1011
    .local v2, "now":J
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sInfoRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-wide v6, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sLastUpdateTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1388

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 1012
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sInfoRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1013
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v5}, Landroid/telephony/FtTelephony;->getAllSubInfoList()Ljava/util/List;

    move-result-object v1

    .line 1014
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1015
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/FtSubInfo;

    .line 1016
    .local v4, "ss":Landroid/telephony/FtSubInfo;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    iget v6, v4, Landroid/telephony/FtSubInfo;->mSlotId:I

    invoke-virtual {v5, v6}, Landroid/telephony/FtTelephony;->isSimInserted(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1017
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sInfoRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1021
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "ss":Landroid/telephony/FtSubInfo;
    :cond_2
    iput-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sLastUpdateTime:J

    .line 1022
    const-string v5, "VivoHotSpotEnhancer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update sLastUpdateTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sLastUpdateTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public forceFlush()V
    .locals 10

    .prologue
    .line 1027
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1028
    .local v2, "now":J
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sInfoRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1029
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v5}, Landroid/telephony/FtTelephony;->getAllSubInfoList()Ljava/util/List;

    move-result-object v1

    .line 1030
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/FtSubInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1031
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/FtSubInfo;

    .line 1032
    .local v4, "ss":Landroid/telephony/FtSubInfo;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    iget v6, v4, Landroid/telephony/FtSubInfo;->mSlotId:I

    invoke-virtual {v5, v6}, Landroid/telephony/FtTelephony;->isSimInserted(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1033
    iget-object v5, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sInfoRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1038
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "ss":Landroid/telephony/FtSubInfo;
    :cond_1
    iput-wide v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sLastUpdateTime:J

    .line 1039
    const-string v5, "VivoHotSpotEnhancer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceFlush sLastUpdateTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sLastUpdateTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    return-void
.end method

.method public getAllActiveSimCount()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1069
    const/4 v0, 0x0

    .line 1070
    .local v0, "simCount":I
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->isSimRadioOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    add-int/lit8 v0, v0, 0x1

    .line 1073
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->isSimRadioOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1074
    add-int/lit8 v0, v0, 0x1

    .line 1076
    :cond_1
    return v0
.end method

.method public getApnOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0, p1}, Landroid/telephony/FtTelephony;->getApnOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInertedSimCount()I
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0}, Landroid/telephony/FtTelephony;->getInsertedSimCount()I

    move-result v0

    return v0
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->update()V

    .line 1048
    iget-object v2, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->sInfoRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/FtSubInfo;

    .line 1049
    .local v1, "record":Landroid/telephony/FtSubInfo;
    iget v2, v1, Landroid/telephony/FtSubInfo;->mSlotId:I

    if-ne v2, p1, :cond_0

    .line 1050
    iget-object v2, v1, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    .line 1053
    .end local v1    # "record":Landroid/telephony/FtSubInfo;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public isDeviceSupportMultiSim()Z
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0}, Landroid/telephony/FtTelephony;->isMultiSimCard()Z

    move-result v0

    return v0
.end method

.method public isSimInsert(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0, p1}, Landroid/telephony/FtTelephony;->isSimInserted(I)Z

    move-result v0

    return v0
.end method

.method public isSimRadioOn(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/server/wifi/VivoHotSpotEnhancer$SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0, p1}, Landroid/telephony/FtTelephony;->isRadioOn(I)Z

    move-result v0

    return v0
.end method
