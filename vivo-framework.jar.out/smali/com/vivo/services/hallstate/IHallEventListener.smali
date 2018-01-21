.class public interface abstract Lcom/vivo/services/hallstate/IHallEventListener;
.super Ljava/lang/Object;
.source "IHallEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/services/hallstate/IHallEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onHallStateChanged(Lcom/vivo/services/hallstate/HallEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
