.class public Landroid/media/AudioFeatures;
.super Ljava/lang/Object;
.source "AudioFeatures.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFeatures$TagParameters;,
        Landroid/media/AudioFeatures$AudioFeatureCallback;
    }
.end annotation


# static fields
.field protected static final COMP_RINGTONE:Ljava/lang/String; = "RINGTONE"

.field public static final KEY_COMPONENT:Ljava/lang/String; = "component"

.field public static final KEY_LOOPING:Ljava/lang/String; = "looping"

.field public static final KEY_RETURN:Ljava/lang/String; = "return"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_STREAM:Ljava/lang/String; = "stream"

.field public static final KEY_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG:Ljava/lang/String; = "AudioFeatures"

.field public static final TAG_DMIC:Ljava/lang/String; = "DMIC"

.field public static final TAG_DMIC_VIVOICE:Ljava/lang/String; = "DMIC.VIVOICE"

.field public static final TAG_HIFI:Ljava/lang/String; = "HIFI"

.field public static final TAG_HISING_DEVICE:Ljava/lang/String; = "HISING_DEVICE"

.field public static final TAG_HISING_ENABLE:Ljava/lang/String; = "HISING_ENABLE"

.field public static final TAG_HISING_MODE:Ljava/lang/String; = "HISING_MODE"

.field public static final TAG_IMUSIC:Ljava/lang/String; = "IMUS"

.field public static final TAG_INTF:Ljava/lang/String; = "INTF"

.field public static final TAG_MAXV:Ljava/lang/String; = "MAXV"

.field public static final TAG_MUTEKEY:Ljava/lang/String; = "MUTK"

.field private static TAG_NONE:Ljava/lang/String; = null

.field public static final TAG_SPKR_MODE:Ljava/lang/String; = "SPKR"

.field public static final TAG_SRSVIPPLUS:Ljava/lang/String; = "SRSVIPPLUS"

.field public static final TAG_VIPPLUSPARA:Ljava/lang/String; = "VIPPLUSPARA"

.field public static final TAG_VIVOVIDEO:Ljava/lang/String; = "IVIVOVIDEO"

.field public static final VALUE_ERROR:Ljava/lang/String; = "ERROR"

.field public static final VALUE_OK:Ljava/lang/String; = "OK"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mICallBack:Landroid/os/IBinder;

.field private mObj:Ljava/lang/Object;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "NONE"

    sput-object v0, Landroid/media/AudioFeatures;->TAG_NONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/media/AudioFeatures;->mICallBack:Landroid/os/IBinder;

    .line 142
    iput-object p1, p0, Landroid/media/AudioFeatures;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/media/AudioFeatures$TagParameters;

    invoke-direct {v0, p2}, Landroid/media/AudioFeatures$TagParameters;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "tp":Landroid/media/AudioFeatures$TagParameters;
    invoke-virtual {v0}, Landroid/media/AudioFeatures$TagParameters;->tag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioFeatures;->mTag:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Landroid/media/AudioFeatures;->mObj:Ljava/lang/Object;

    .line 148
    const-string v1, "component"

    invoke-virtual {v0, v1}, Landroid/media/AudioFeatures$TagParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioFeatures;->mComponent:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Landroid/media/AudioFeatures;->mComponent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Landroid/media/AudioFeatures;->mObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 151
    const-string v1, "AudioFeatures"

    const-string v2, "DEFINE component without obj is danger"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioFeatures;->mComponent:Ljava/lang/String;

    .line 155
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Landroid/media/AudioFeatures;->TAG_NONE:Ljava/lang/String;

    return-object v0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 126
    sget-object v1, Landroid/media/AudioFeatures;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Landroid/media/AudioFeatures;->sService:Landroid/media/IAudioService;

    .line 131
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 129
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 130
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioFeatures;->sService:Landroid/media/IAudioService;

    .line 131
    sget-object v1, Landroid/media/AudioFeatures;->sService:Landroid/media/IAudioService;

    goto :goto_0
.end method


# virtual methods
.method public getAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 199
    invoke-static {}, Landroid/media/AudioFeatures;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 201
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getAudioFeature"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 202
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 213
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 213
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 206
    :catch_1
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 210
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public registerAudioFeatureCallback(Landroid/media/AudioFeatures$AudioFeatureCallback;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "callback"    # Landroid/media/AudioFeatures$AudioFeatureCallback;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 224
    invoke-static {}, Landroid/media/AudioFeatures;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 226
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "registerAudioFeatureCallback"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/media/IAudioFeatureCallback;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 228
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/media/AudioFeatures$AudioFeatureCallback;->getCallback()Landroid/media/IAudioFeatureCallback;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/media/AudioFeatures;->mICallBack:Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 240
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 240
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 237
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 176
    invoke-static {}, Landroid/media/AudioFeatures;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 178
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setAudioFeature"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 179
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/media/AudioFeatures;->mICallBack:Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 190
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 190
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 185
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 187
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public unregisterAudioFeatureCallback(Landroid/media/AudioFeatures$AudioFeatureCallback;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p1, "callback"    # Landroid/media/AudioFeatures$AudioFeatureCallback;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 248
    invoke-static {}, Landroid/media/AudioFeatures;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 250
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "unregisterAudioFeatureCallback"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/media/IAudioFeatureCallback;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 252
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/media/AudioFeatures$AudioFeatureCallback;->getCallback()Landroid/media/IAudioFeatureCallback;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 264
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 264
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 257
    :catch_1
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
