.class public interface abstract Lcom/android/server/am/IAmSmartShowFuncs;
.super Ljava/lang/Object;
.source "IAmSmartShowFuncs.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# virtual methods
.method public abstract checkActivityInfo(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract checkBroadcastAndRegisteredReceiverLocked(ILcom/android/server/am/BroadcastFilter;Ljava/lang/Object;)Z
.end method

.method public abstract checkOrderedBroadcastReceivers(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;ILjava/util/List;)V
.end method

.method public abstract checkProvider(ILcom/android/server/am/ProcessRecord;Ljava/lang/Object;)I
.end method

.method public abstract checkStartActivityLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;II)Z
.end method

.method public abstract forceStopPackage(Ljava/lang/String;II)V
.end method

.method public abstract getActiveServices(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IActiveServices;
.end method

.method public abstract getFixedProcessRecordLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/ProcessRecord;
.end method

.method public abstract getFixedProcessRecordLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ILjava/lang/Object;)Lcom/android/server/am/ProcessRecord;
.end method

.method public abstract getProcessEuidLocked(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)I
.end method

.method public abstract getProcessRecordLocked(I)Lcom/android/server/am/ProcessRecord;
.end method

.method public abstract getProcessRecordLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;I)Lcom/android/server/am/ProcessRecord;
.end method

.method public abstract getProviderByClass(Landroid/content/ComponentName;I)Lcom/android/server/am/ContentProviderRecord;
.end method

.method public abstract getProviderByName(Ljava/lang/String;I)Lcom/android/server/am/ContentProviderRecord;
.end method

.method public abstract initActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V
.end method

.method public abstract putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V
.end method

.method public abstract putProviderByName(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V
.end method

.method public abstract removeProviderByClass(Landroid/content/ComponentName;I)V
.end method

.method public abstract removeProviderByName(Ljava/lang/String;I)V
.end method

.method public abstract startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZI)Lcom/android/server/am/ProcessRecord;
.end method
