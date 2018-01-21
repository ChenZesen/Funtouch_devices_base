.class public interface abstract Lcom/vivo/services/daemon/IVivoDmService;
.super Ljava/lang/Object;
.source "IVivoDmService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation


# static fields
.field public static final RUN_SHELL_FILE_TRANSACTION:I = 0x2

.field public static final RUN_SHELL_TRANSACTION:I = 0x1

.field public static final RUN_SHELL_WITH_RESULT_TRANSACTION:I = 0x3

.field public static final descriptor:Ljava/lang/String; = "IVivoDmService"


# virtual methods
.method public abstract runShell(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract runShellFile(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract runShellWithResult(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
