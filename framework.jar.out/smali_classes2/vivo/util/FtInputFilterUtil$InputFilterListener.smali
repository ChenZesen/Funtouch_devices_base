.class public abstract Lvivo/util/FtInputFilterUtil$InputFilterListener;
.super Ljava/lang/Object;
.source "FtInputFilterUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvivo/util/FtInputFilterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputFilterListener"
.end annotation


# instance fields
.field filterProxy:Lvivo/util/FtInputFilterUtil$InputFilterProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lvivo/util/FtInputFilterUtil$InputFilterListener;->filterProxy:Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    return-void
.end method

.method static synthetic access$000(Lvivo/util/FtInputFilterUtil$InputFilterListener;Lvivo/util/FtInputFilterUtil$InputFilterProxy;)V
    .locals 0
    .param p0, "x0"    # Lvivo/util/FtInputFilterUtil$InputFilterListener;
    .param p1, "x1"    # Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lvivo/util/FtInputFilterUtil$InputFilterListener;->setFilterProxy(Lvivo/util/FtInputFilterUtil$InputFilterProxy;)V

    return-void
.end method

.method private setFilterProxy(Lvivo/util/FtInputFilterUtil$InputFilterProxy;)V
    .locals 0
    .param p1, "proxy"    # Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    .prologue
    .line 56
    iput-object p1, p0, Lvivo/util/FtInputFilterUtil$InputFilterListener;->filterProxy:Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    .line 57
    return-void
.end method


# virtual methods
.method public dispatchInputEvent(Landroid/view/InputEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lvivo/util/FtInputFilterUtil$InputFilterListener;->filterProxy:Lvivo/util/FtInputFilterUtil$InputFilterProxy;

    invoke-virtual {v0, p1, p2}, Lvivo/util/FtInputFilterUtil$InputFilterProxy;->dispatchInputEvent(Landroid/view/InputEvent;I)V

    .line 63
    return-void
.end method

.method public abstract onInputEvent(Landroid/view/InputEvent;I)V
.end method
