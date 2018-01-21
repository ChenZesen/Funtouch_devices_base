.class public abstract Lcom/vivo/common/task/AppVerDetectingTask;
.super Landroid/os/AsyncTask;
.source "AppVerDetectingTask.java"


# annotations
.annotation runtime Landroid/annotation/VivoHook;
    hookType = .enum Landroid/annotation/VivoHook$VivoHookType;->PUBLIC_API_CLASS:Landroid/annotation/VivoHook$VivoHookType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/common/task/AppVerDetectingTask$ExceptionCode;,
        Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_SYSTEM_UPDATE:Ljava/lang/String; = "com.bbk.action.SYSTEM_UPDATE"

.field private static final CHECK_URL:Ljava/lang/String; = "http://sysupgrade.bbk.com/checkapp/query"

.field private static final METHOD_ENCODE:Ljava/lang/String; = "UTF-8"

.field private static final PROP_BRANCH_VERSION:Ljava/lang/String; = "ro.hardware.bbk"

.field private static final PROP_CUSTOMIZE:Ljava/lang/String; = "ro.product.customize.bbk"

.field private static final PROP_CUSTOMIZE_NEW:Ljava/lang/String; = "persist.vivo.product.cust"

.field private static final PROP_MODEL:Ljava/lang/String; = "ro.product.model.bbk"

.field private static final PROP_NETWORK_STANDARD_TYPE:Ljava/lang/String; = "ro.vivo.op.entry"

.field private static final PROP_RADIO_TYPE:Ljava/lang/String; = "persist.vivo.radio.type.abbr"

.field private static final PROP_VERSION:Ljava/lang/String; = "ro.build.version.bbk"

.field private static final PROTOCAL_VERSION:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "AppVerDetectingTask"

.field private static final TIMEOUT:I = 0xea60


# instance fields
.field private appName:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private dialog:Landroid/app/ProgressDialog;

.field private showDialog:Z

.field private verCode:I

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "verName"    # Ljava/lang/String;
    .param p4, "verCode"    # I
    .param p5, "showDialog"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    .line 69
    iput-boolean v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->showDialog:Z

    .line 70
    iput-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask;->dialog:Landroid/app/ProgressDialog;

    .line 71
    iput-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask;->appName:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask;->verName:Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->verCode:I

    .line 80
    iput-object p1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    .line 81
    iput-object p2, p0, Lcom/vivo/common/task/AppVerDetectingTask;->appName:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/vivo/common/task/AppVerDetectingTask;->verName:Ljava/lang/String;

    .line 83
    iput p4, p0, Lcom/vivo/common/task/AppVerDetectingTask;->verCode:I

    .line 84
    iput-boolean p5, p0, Lcom/vivo/common/task/AppVerDetectingTask;->showDialog:Z

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/common/task/AppVerDetectingTask;Landroid/content/DialogInterface;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/common/task/AppVerDetectingTask;
    .param p1, "x1"    # Landroid/content/DialogInterface;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/vivo/common/task/AppVerDetectingTask;->keepDialog(Landroid/content/DialogInterface;Z)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/common/task/AppVerDetectingTask;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/common/task/AppVerDetectingTask;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    return-object v0
.end method

.method private appendQueryParameters(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "encode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    const/4 v6, 0x0

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v4, "localStringBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 458
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    :goto_0
    return-object v5

    .line 461
    :cond_1
    invoke-static {p3}, Lcom/vivo/common/task/AppVerDetectingTask;->isStringEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 463
    const-string p3, "UTF-8"

    .line 466
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 467
    .local v3, "localIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;TT;>;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 469
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 470
    .local v2, "localEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 472
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "encodeKey":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "encodeValue":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 482
    .end local v0    # "encodeKey":Ljava/lang/String;
    .end local v1    # "encodeValue":Ljava/lang/String;
    .end local v2    # "localEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    :cond_4
    const-string v5, "?"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_5

    .line 484
    const-string v5, "?"

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :goto_2
    invoke-virtual {v4, v6, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 488
    :cond_5
    const-string v5, "&"

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 152
    .local v0, "array":[C
    array-length v2, v0

    .line 154
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 156
    aget-char v3, v0, v1

    invoke-direct {p0, v3}, Lcom/vivo/common/task/AppVerDetectingTask;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 154
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCheckUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 224
    const/4 v2, 0x0

    .line 225
    .local v2, "urlStr":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v1, "localMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "appName"

    iget-object v4, p0, Lcom/vivo/common/task/AppVerDetectingTask;->appName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v3, "verCode"

    iget v4, p0, Lcom/vivo/common/task/AppVerDetectingTask;->verCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v3, "verName"

    iget-object v4, p0, Lcom/vivo/common/task/AppVerDetectingTask;->verName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v3, "proName"

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getProName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v3, "public_model"

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getPublicProName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v3, "sysVersion"

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getSysVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v3, "imei"

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v3, "mtype"

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getNetworkStandardType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v3, "language"

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v3, "elapsedtime"

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getElapsedRealtime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v3, "pflag"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v3, "radiotype"

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getRadioType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :try_start_0
    const-string v3, "http://sysupgrade.bbk.com/checkapp/query"

    const-string v4, "UTF-8"

    invoke-direct {p0, v3, v1, v4}, Lcom/vivo/common/task/AppVerDetectingTask;->appendQueryParameters(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 247
    :goto_0
    return-object v2

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCodeString(I)Ljava/lang/String;
    .locals 3
    .param p1, "code"    # I

    .prologue
    const v2, 0x30e0008

    .line 338
    const-string v0, ""

    .line 339
    .local v0, "ret":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 352
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_0
    return-object v0

    .line 342
    :sswitch_0
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    goto :goto_0

    .line 346
    :sswitch_1
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const v2, 0x30e0009

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    goto :goto_0

    .line 349
    :sswitch_2
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const v2, 0x30e000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    goto :goto_0

    .line 339
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_1
        0x3e9 -> :sswitch_2
    .end sparse-switch
.end method

.method private getCustomize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    const-string v1, "persist.vivo.product.cust"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "cust":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 184
    :cond_0
    const-string v1, "ro.product.customize.bbk"

    const-string v2, "N"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_1
    return-object v0
.end method

.method private getElapsedRealtime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 219
    .local v0, "elapsedRealtime":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getHardwareVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    const-string v0, "ro.hardware.bbk"

    const-string v1, "A"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImei()Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    iget-object v2, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 204
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "unknow"

    .end local v0    # "imei":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "lan":Ljava/lang/String;
    return-object v0
.end method

.method private getNetworkStandardType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    const-string v0, "ro.vivo.op.entry"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    const-string v0, "ro.product.model.bbk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPublicProName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getRadioType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    const-string v0, "persist.vivo.radio.type.abbr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSoftVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    const-string v1, "ro.build.version.bbk"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "list":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 166
    const-string v1, ""

    .line 175
    :goto_0
    return-object v1

    .line 169
    :cond_0
    array-length v1, v0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 171
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/vivo/common/task/AppVerDetectingTask;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/vivo/common/task/AppVerDetectingTask;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSysVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getProName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "sysVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getCustomize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getHardwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getSoftVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string v1, "AppVerDetectingTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sysVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-object v0
.end method

.method private isDigit(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 141
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowDialog()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/vivo/common/task/AppVerDetectingTask;->showDialog:Z

    return v0
.end method

.method private static isStringEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 498
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private keepDialog(Landroid/content/DialogInterface;Z)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "isKeep"    # Z

    .prologue
    const/4 v2, 0x1

    .line 509
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mShowing"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 510
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 511
    if-nez p2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 511
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 513
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private showUpdateDialog(Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;

    .prologue
    const/16 v10, 0xc9

    .line 521
    move-object v4, p1

    .line 522
    .local v4, "result":Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    invoke-virtual {v4}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getStateCode()I

    move-result v5

    .line 523
    .local v5, "stateCode":I
    invoke-virtual {v4}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const v9, 0x30e0003

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 525
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getInstruction()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "msg":Ljava/lang/String;
    iget-object v8, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const v9, 0x30e0004

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, "posBtn":Ljava/lang/String;
    iget-object v8, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const v9, 0x30e0005

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "negBtn":Ljava/lang/String;
    if-ne v5, v10, :cond_0

    .line 530
    iget-object v8, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const v9, 0x30e0006

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->onShow()V

    .line 535
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/vivo/common/task/AppVerDetectingTask$3;

    invoke-direct {v9, p0, v5, v4, v7}, Lcom/vivo/common/task/AppVerDetectingTask$3;-><init>(Lcom/vivo/common/task/AppVerDetectingTask;ILcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;Ljava/lang/String;)V

    invoke-virtual {v8, v3, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/vivo/common/task/AppVerDetectingTask$2;

    invoke-direct {v9, p0, v5}, Lcom/vivo/common/task/AppVerDetectingTask$2;-><init>(Lcom/vivo/common/task/AppVerDetectingTask;I)V

    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 581
    .local v0, "dialog":Landroid/app/Dialog;
    if-ne v5, v10, :cond_1

    .line 583
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 590
    :goto_0
    new-instance v8, Lcom/vivo/common/task/AppVerDetectingTask$4;

    invoke-direct {v8, p0}, Lcom/vivo/common/task/AppVerDetectingTask$4;-><init>(Lcom/vivo/common/task/AppVerDetectingTask;)V

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 599
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 600
    return-void

    .line 587
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/common/task/AppVerDetectingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 17
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 253
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 254
    .local v3, "client":Lorg/apache/http/client/HttpClient;
    const/4 v5, 0x0

    .line 256
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    const/4 v11, 0x0

    .line 259
    .local v11, "server":Ljava/net/URI;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/vivo/common/task/AppVerDetectingTask;->getCheckUrl()Ljava/lang/String;

    move-result-object v13

    .line 260
    .local v13, "urlStr":Ljava/lang/String;
    const-string v14, "AppVerDetectingTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CheckAppUrl:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {v13}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 269
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 270
    .local v8, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v14, "Cache-Control"

    const-string v15, "no-cache"

    invoke-virtual {v8, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.connection.timeout"

    const v16, 0xea60

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 272
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.socket.timeout"

    const v16, 0xea60

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 276
    :try_start_1
    invoke-interface {v3, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 277
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    .line 278
    .local v12, "statusCode":I
    const/16 v14, 0xc8

    if-eq v12, v14, :cond_0

    .line 280
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const/16 v16, 0x3e9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/common/task/AppVerDetectingTask;->publishProgress([Ljava/lang/Object;)V

    .line 281
    const-string v14, "AppVerDetectingTask"

    const-string v15, "network can\'t connect"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    const/4 v10, 0x0

    .line 332
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "statusCode":I
    .end local v13    # "urlStr":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 263
    :catch_0
    move-exception v4

    .line 265
    .local v4, "e":Ljava/lang/Exception;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const/16 v16, 0x3e9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/common/task/AppVerDetectingTask;->publishProgress([Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    const/4 v10, 0x0

    goto :goto_0

    .line 286
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "statusCode":I
    .restart local v13    # "urlStr":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 296
    if-nez v5, :cond_1

    .line 298
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const/16 v16, 0x3e9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/common/task/AppVerDetectingTask;->publishProgress([Ljava/lang/Object;)V

    .line 299
    const/4 v10, 0x0

    goto :goto_0

    .line 289
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "statusCode":I
    :catch_1
    move-exception v4

    .line 291
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const/16 v16, 0x3e9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/common/task/AppVerDetectingTask;->publishProgress([Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    const/4 v10, 0x0

    goto :goto_0

    .line 303
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "statusCode":I
    :cond_1
    const/4 v10, 0x0

    .line 306
    .local v10, "ret":Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v15, 0x800

    invoke-direct {v7, v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 307
    .local v7, "lineReader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 308
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 309
    .local v6, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 311
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 326
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "lineReader":Ljava/io/BufferedReader;
    .end local v10    # "ret":Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    :catch_2
    move-exception v4

    .line 328
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const/16 v16, 0x1f4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/common/task/AppVerDetectingTask;->publishProgress([Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    const/4 v10, 0x0

    goto :goto_0

    .line 313
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "lineReader":Ljava/io/BufferedReader;
    .restart local v10    # "ret":Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 315
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "buffer":Ljava/lang/String;
    const-string v14, "AppVerDetectingTask"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "response:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v14, "no_record"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 319
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const/16 v16, 0xc8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vivo/common/task/AppVerDetectingTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 323
    :cond_3
    new-instance v10, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;

    .end local v10    # "ret":Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    invoke-direct {v10, v2}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .restart local v10    # "ret":Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    goto/16 :goto_0
.end method

.method protected abstract onCancel()V
.end method

.method protected onDismiss()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method protected abstract onExit()V
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 379
    iget-object v3, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->isShowDialog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 386
    iget-object v3, p0, Lcom/vivo/common/task/AppVerDetectingTask;->dialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/common/task/AppVerDetectingTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    :try_start_0
    iget-object v3, p0, Lcom/vivo/common/task/AppVerDetectingTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 395
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vivo/common/task/AppVerDetectingTask;->dialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_2
    :goto_1
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 409
    check-cast v1, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;

    .line 411
    .local v1, "info":Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    invoke-virtual {v1}, Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;->getStateCode()I

    move-result v2

    .line 412
    .local v2, "stateCode":I
    const/16 v3, 0xc9

    if-eq v2, v3, :cond_3

    const/16 v3, 0xca

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd2

    if-ne v2, v3, :cond_4

    .line 420
    :cond_3
    invoke-direct {p0, v1}, Lcom/vivo/common/task/AppVerDetectingTask;->showUpdateDialog(Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;)V

    goto :goto_0

    .line 397
    .end local v1    # "info":Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    .end local v2    # "stateCode":I
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AppVerDetectingTask"

    const-string v4, "Exception:onPostExecute():mDialog.dismiss()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;
    .restart local v2    # "stateCode":I
    :cond_4
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/vivo/common/task/AppVerDetectingTask;->onProgressUpdate([Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 91
    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->isShowDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const v2, 0x30e0002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->dialog:Landroid/app/ProgressDialog;

    .line 95
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 96
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 97
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->dialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/vivo/common/task/AppVerDetectingTask$1;

    invoke-direct {v2, p0}, Lcom/vivo/common/task/AppVerDetectingTask$1;-><init>(Lcom/vivo/common/task/AppVerDetectingTask;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 361
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 362
    invoke-direct {p0}, Lcom/vivo/common/task/AppVerDetectingTask;->isShowDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    aget-object v1, p1, v2

    if-eqz v1, :cond_0

    .line 364
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/vivo/common/task/AppVerDetectingTask;->getCodeString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/vivo/common/task/AppVerDetectingTask;->context:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 367
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/common/task/AppVerDetectingTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method protected abstract onUpdate()V
.end method

.method protected onUpdate(Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;)V
    .locals 0
    .param p1, "result"    # Lcom/vivo/common/task/AppVerDetectingTask$AppUpdateInfo;

    .prologue
    .line 444
    return-void
.end method
