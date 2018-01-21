.class public abstract Lcom/android/server/am/IActiveServices;
.super Ljava/lang/Object;
.source "IActiveServices.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->NEW_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation
.end method

.method abstract bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZZZ)Z"
        }
    .end annotation
.end method

.method abstract cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V
.end method

.method clearBgServiceForBroadcastLocked()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/server/am/IActiveServices;->getDefault()Lcom/android/server/am/IActiveServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/IActiveServices;->clearBgServiceForBroadcastLocked()V

    .line 160
    return-void
.end method

.method abstract dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
.end method

.method abstract dumpServicesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
.end method

.method getDefault()Lcom/android/server/am/IActiveServices;
    .locals 0

    .prologue
    .line 79
    return-object p0
.end method

.method abstract getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
.end method

.method abstract getRunningServiceInfoLocked(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method abstract hasBackgroundServices(I)Z
.end method

.method abstract killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
.end method

.method abstract peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
.end method

.method abstract processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method abstract publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
.end method

.method abstract removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
.end method

.method abstract scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method abstract serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
.end method

.method abstract serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
.end method

.method abstract startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation
.end method

.method abstract stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
.end method

.method abstract stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
.end method

.method abstract unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
.end method

.method abstract unbindServiceLocked(Landroid/app/IServiceConnection;)Z
.end method

.method public abstract updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
.end method
