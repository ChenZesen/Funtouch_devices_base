.class public Lcom/android/server/notification/PackagePriorityExtractor;
.super Ljava/lang/Object;
.source "PackagePriorityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImportantPackageExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;

.field private mIsOverseas:Z
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_FIELD:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    .line 43
    const-string v0, "yes"

    const-string v1, "ro.vivo.product.overseas"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mIsOverseas:Z

    .line 46
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation runtime Landroid/annotation/VivoHook;
        hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->CHANGE_CODE:Landroid/annotation/VivoHook$VivoHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v5

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-eqz v1, :cond_0

    .line 64
    sget-boolean v1, Landroid/util/PowerMoConfig;->WITHOUT_MULTI_PROCESS:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mIsOverseas:Z

    if-nez v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInstanceId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/notification/RankingConfig;->getPackagePriorityForDualInstance(Ljava/lang/String;II)I

    move-result v0

    .line 73
    .local v0, "packagePriority":I
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setPackagePriority(I)V

    goto :goto_0

    .line 68
    .end local v0    # "packagePriority":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/notification/RankingConfig;->getPackagePriority(Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "packagePriority":I
    goto :goto_1
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/notification/PackagePriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 81
    return-void
.end method
