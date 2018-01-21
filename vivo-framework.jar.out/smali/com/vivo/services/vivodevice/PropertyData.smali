.class public Lcom/vivo/services/vivodevice/PropertyData;
.super Ljava/lang/Object;
.source "PropertyData.java"


# static fields
.field protected static VIVO_DEVICE_NATIVE_CLASS:Ljava/lang/String;


# instance fields
.field private listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vivo/services/vivodevice/IPropertyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private reloadEachTime:Z

.field private value:Ljava/lang/String;

.field private valueGetMethod:Ljava/lang/reflect/Method;

.field private valueSetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "com.vivo.services.vivodevice.VivoDeviceNative"

    sput-object v0, Lcom/vivo/services/vivodevice/PropertyData;->VIVO_DEVICE_NATIVE_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "set"    # Ljava/lang/String;
    .param p3, "get"    # Ljava/lang/String;
    .param p4, "dataPoll"    # Ljava/lang/String;
    .param p5, "reloadEachTime"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v2, ""

    iput-object v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->value:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/vivo/services/vivodevice/PropertyData;->value:Ljava/lang/String;

    .line 27
    :try_start_0
    sget-object v2, Lcom/vivo/services/vivodevice/PropertyData;->VIVO_DEVICE_NATIVE_CLASS:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 28
    .local v0, "c":Ljava/lang/Class;
    if-eqz p3, :cond_0

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->valueGetMethod:Ljava/lang/reflect/Method;

    .line 31
    :cond_0
    iput-boolean p5, p0, Lcom/vivo/services/vivodevice/PropertyData;->reloadEachTime:Z

    .line 32
    if-eqz p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->valueSetMethod:Ljava/lang/reflect/Method;

    .line 35
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->listenerList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    iget-object v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->value:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->reloadEachTime:Z

    if-eqz v2, :cond_1

    .line 52
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->valueGetMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 53
    invoke-static {}, Lcom/vivo/services/vivodevice/VivoDeviceNative;->getDeviceNative()Lcom/vivo/services/vivodevice/VivoDeviceNative;

    move-result-object v1

    .line 54
    .local v1, "v":Lcom/vivo/services/vivodevice/VivoDeviceNative;
    iget-object v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->valueGetMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    .end local v1    # "v":Lcom/vivo/services/vivodevice/VivoDeviceNative;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/vivo/services/vivodevice/PropertyData;->value:Ljava/lang/String;

    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerListener(Lcom/vivo/services/vivodevice/IPropertyChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vivo/services/vivodevice/IPropertyChangedListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vivo/services/vivodevice/PropertyData;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "retBool":Z
    :try_start_0
    iget-object v3, p0, Lcom/vivo/services/vivodevice/PropertyData;->valueSetMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 75
    invoke-static {}, Lcom/vivo/services/vivodevice/VivoDeviceNative;->getDeviceNative()Lcom/vivo/services/vivodevice/VivoDeviceNative;

    move-result-object v2

    .line 76
    .local v2, "v":Lcom/vivo/services/vivodevice/VivoDeviceNative;
    iget-object v3, p0, Lcom/vivo/services/vivodevice/PropertyData;->valueSetMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/vivo/services/vivodevice/PropertyData;->value:Ljava/lang/String;

    .line 79
    const-string v3, "true"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    .end local v2    # "v":Lcom/vivo/services/vivodevice/VivoDeviceNative;
    :goto_0
    return-object v3

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 92
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_1
    const-string v3, "false"

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public unregisterListener(Lcom/vivo/services/vivodevice/IPropertyChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vivo/services/vivodevice/IPropertyChangedListener;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vivo/services/vivodevice/PropertyData;->listenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method
