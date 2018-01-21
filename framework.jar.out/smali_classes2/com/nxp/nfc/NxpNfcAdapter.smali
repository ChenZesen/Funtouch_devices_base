.class public final Lcom/nxp/nfc/NxpNfcAdapter;
.super Ljava/lang/Object;
.source "NxpNfcAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NXPNFC"

.field static sIsInitialized:Z

.field static sNfcAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/nfc/NfcAdapter;",
            "Lcom/nxp/nfc/NxpNfcAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

.field private static sService:Landroid/nfc/INfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nxp/nfc/NxpNfcAdapter;->sIsInitialized:Z

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nxp/nfc/NxpNfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private attemptDeadServiceRecovery()V
    .locals 3

    .prologue
    .line 146
    const-string v1, "NXPNFC"

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v0

    .line 148
    .local v0, "service":Landroid/nfc/INfcAdapter;
    if-nez v0, :cond_0

    .line 149
    const-string v1, "NXPNFC"

    const-string v2, "could not retrieve NFC service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    sput-object v0, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 157
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    goto :goto_0
.end method

.method public static declared-synchronized getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;
    .locals 4
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 74
    const-class v2, Lcom/nxp/nfc/NxpNfcAdapter;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/nxp/nfc/NxpNfcAdapter;->sIsInitialized:Z

    if-nez v1, :cond_3

    .line 75
    if-nez p0, :cond_0

    .line 76
    const-string v1, "NXPNFC"

    const-string v3, "could not find NFC support"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 79
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 80
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v1, :cond_1

    .line 81
    const-string v1, "NXPNFC"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 84
    :cond_1
    invoke-static {}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    .line 85
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    if-nez v1, :cond_2

    .line 86
    const-string v1, "NXPNFC"

    const-string v3, "could not retrieve NXP NFC service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 89
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nxp/nfc/NxpNfcAdapter;->sIsInitialized:Z

    .line 91
    :cond_3
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nxp/nfc/NxpNfcAdapter;

    .line 92
    .local v0, "nxpAdapter":Lcom/nxp/nfc/NxpNfcAdapter;
    if-nez v0, :cond_4

    .line 93
    new-instance v0, Lcom/nxp/nfc/NxpNfcAdapter;

    .end local v0    # "nxpAdapter":Lcom/nxp/nfc/NxpNfcAdapter;
    invoke-direct {v0}, Lcom/nxp/nfc/NxpNfcAdapter;-><init>()V

    .line 94
    .restart local v0    # "nxpAdapter":Lcom/nxp/nfc/NxpNfcAdapter;
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNfcAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_4
    monitor-exit v2

    return-object v0
.end method

.method private static getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;
    .locals 3

    .prologue
    .line 114
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You need a reference from NfcAdapter to use the  NXP NFC APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 121
    .restart local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .locals 2

    .prologue
    .line 104
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 105
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public DefaultRouteSet(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "routeLoc"    # Ljava/lang/String;
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "seID":I
    const/4 v1, 0x0

    .line 368
    .local v1, "result":Z
    :try_start_0
    const-string v3, "com.nxp.uicc.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    const/4 v2, 0x2

    .line 378
    :goto_0
    sget-object v3, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v3, v2, p2, p3, p4}, Lcom/nxp/nfc/INxpNfcAdapter;->DefaultRouteSet(IZZZ)V

    .line 383
    return-void

    .line 370
    :cond_0
    const-string v3, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    const/4 v2, 0x1

    goto :goto_0

    .line 372
    :cond_1
    const-string v3, "com.nxp.host.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    :cond_2
    const-string v3, "NXPNFC"

    const-string v4, "DefaultRouteSet: wrong default route ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v3, Ljava/io/IOException;

    const-string v4, "DefaultRouteSet failed: Wrong default route ID"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NXPNFC"

    const-string v4, "confsetDefaultRoute failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confsetDefaultRoute failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public MifareCLTRouteSet(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "routeLoc"    # Ljava/lang/String;
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    const/4 v2, 0x0

    .line 396
    .local v2, "seID":I
    const/4 v1, 0x0

    .line 397
    .local v1, "result":Z
    :try_start_0
    const-string v3, "com.nxp.uicc.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    const/4 v2, 0x2

    .line 407
    :goto_0
    sget-object v3, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v3, v2, p2, p3, p4}, Lcom/nxp/nfc/INxpNfcAdapter;->MifareCLTRouteSet(IZZZ)V

    .line 412
    return-void

    .line 399
    :cond_0
    const-string v3, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    const/4 v2, 0x1

    goto :goto_0

    .line 401
    :cond_1
    const-string v3, "com.nxp.host.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    const/4 v2, 0x0

    goto :goto_0

    .line 404
    :cond_2
    const-string v3, "NXPNFC"

    const-string v4, "confMifareCLT: wrong default route ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confMifareCLT failed: Wrong default route ID"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NXPNFC"

    const-string v4, "confMifareCLT failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confMifareCLT failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public MifareDesfireRouteSet(Ljava/lang/String;ZZZ)V
    .locals 5
    .param p1, "routeLoc"    # Ljava/lang/String;
    .param p2, "fullPower"    # Z
    .param p3, "lowPower"    # Z
    .param p4, "noPower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, "seID":I
    const/4 v1, 0x0

    .line 339
    .local v1, "result":Z
    :try_start_0
    const-string v3, "com.nxp.uicc.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    const/4 v2, 0x2

    .line 349
    :goto_0
    const-string v3, "NXPNFC"

    const-string v4, "calling Services"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v3, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v3, v2, p2, p3, p4}, Lcom/nxp/nfc/INxpNfcAdapter;->MifareDesfireRouteSet(IZZZ)V

    .line 355
    return-void

    .line 341
    :cond_0
    const-string v3, "com.nxp.smart_mx.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    const/4 v2, 0x1

    goto :goto_0

    .line 343
    :cond_1
    const-string v3, "com.nxp.host.ID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    const/4 v2, 0x0

    goto :goto_0

    .line 346
    :cond_2
    const-string v3, "NXPNFC"

    const-string v4, "confMifareDesfireProtoRoute: wrong default route ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confMifareProtoRoute failed: Wrong default route ID"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NXPNFC"

    const-string v4, "confMifareDesfireProtoRoute failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    new-instance v3, Ljava/io/IOException;

    const-string v4, "confMifareDesfireProtoRoute failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public activeSwp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createNfcDta()Lcom/nxp/nfc/NfcDta;
    .locals 3

    .prologue
    .line 435
    :try_start_0
    new-instance v1, Lcom/nxp/nfc/NfcDta;

    sget-object v2, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v2}, Lcom/nxp/nfc/INxpNfcAdapter;->getNfcDtaInterface()Lcom/nxp/nfc/INfcDta;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nxp/nfc/NfcDta;-><init>(Lcom/nxp/nfc/INfcDta;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-object v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "createNfcDta failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deSelectedSecureElement(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->deselectSecureElement(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "deselectSecureElement failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    new-instance v1, Ljava/io/IOException;

    const-string v2, "deselectSecureElement failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActiveSecureElementList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    const-string v4, "NXPNFC"

    const-string v5, "getActiveSecureElementList-Enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v4, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v4, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getActiveSecureElementList(Ljava/lang/String;)[I

    move-result-object v0

    .line 220
    .local v0, "activeSEList":[I
    if-eqz v0, :cond_2

    array-length v4, v0

    if-eqz v4, :cond_2

    .line 222
    array-length v4, v0

    new-array v1, v4, [Ljava/lang/String;

    .line 223
    .local v1, "arr":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 225
    const-string v4, "NXPNFC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getActiveSecureElementList activeSE[i]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    aget v4, v0, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 228
    const-string v4, "com.nxp.smart_mx.ID"

    aput-object v4, v1, v3

    .line 223
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_0
    aget v4, v0, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 232
    const-string v4, "com.nxp.uicc.ID"

    aput-object v4, v1, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 242
    .end local v0    # "activeSEList":[I
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "NXPNFC"

    const-string v5, "getActiveSecureElementList: failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failure in deselecting the selected Secure Element"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "activeSEList":[I
    .restart local v1    # "arr":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "No Secure Element Activeted"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    .restart local v1    # "arr":[Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public getAvailableSecureElementList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    const-string v4, "NXPNFC"

    const-string v5, "getAvailableSecureElementList-Enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v4, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v4, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v3

    .line 175
    .local v3, "seList":[I
    if-eqz v3, :cond_3

    array-length v4, v3

    if-eqz v4, :cond_3

    .line 177
    array-length v4, v3

    new-array v0, v4, [Ljava/lang/String;

    .line 178
    .local v0, "arr":[Ljava/lang/String;
    const-string v4, "NXPNFC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableSecureElementList-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 181
    const-string v4, "NXPNFC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableSecure seList[i]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    aget v4, v3, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 184
    const-string v4, "com.nxp.smart_mx.ID"

    aput-object v4, v0, v2

    .line 179
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    aget v4, v3, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 188
    const-string v4, "com.nxp.uicc.ID"

    aput-object v4, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "seList":[I
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "NXPNFC"

    const-string v5, "getAvailableSecureElementList: failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failure in deselecting the selected Secure Element"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "arr":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "seList":[I
    :cond_1
    :try_start_1
    aget v4, v3, v2

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    .line 191
    const-string v4, "com.nxp.all_se.ID"

    aput-object v4, v0, v2

    goto :goto_1

    .line 194
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "No Secure Element selected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    .restart local v0    # "arr":[Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public getCommittedAidRoutingTableSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1}, Lcom/nxp/nfc/INxpNfcAdapter;->getCommittedAidRoutingTableSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 630
    :goto_0
    return v1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 630
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSelectedSecureElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 479
    .local v1, "seID":I
    :try_start_0
    sget-object v2, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v2, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v1

    .line 480
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 481
    const-string v2, "com.nxp.uicc.ID"

    .line 487
    :goto_0
    return-object v2

    .line 482
    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 483
    const-string v2, "com.nxp.uicc2.ID"

    goto :goto_0

    .line 484
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 485
    const-string v2, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 486
    :cond_2
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 487
    const-string v2, "com.nxp.all_se.ID"

    goto :goto_0

    .line 489
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No Secure Element selected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NXPNFC"

    const-string v3, "getSelectedSecureElement failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    new-instance v2, Ljava/io/IOException;

    const-string v3, "getSelectedSecureElement failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFwVersion()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1}, Lcom/nxp/nfc/INxpNfcAdapter;->getFWVersion()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 522
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "RemoteException in getFwVersion(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 525
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RemoteException in getFwVersion()"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMaxAidRoutingTableSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1}, Lcom/nxp/nfc/INxpNfcAdapter;->getMaxAidRoutingTableSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 615
    :goto_0
    return v1

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 615
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNxpNfcAccessExtras(Ljava/lang/String;)Lcom/nxp/nfc/INxpNfcAccessExtras;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 448
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getNxpNfcAccessExtrasInterface(Ljava/lang/String;)Lcom/nxp/nfc/INxpNfcAccessExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 451
    :goto_0
    return-object v1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "getNxpNfcAccessExtras failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNxpNfcAdapterExtrasInterface(Landroid/nfc/INfcAdapterExtras;)Lcom/nxp/nfc/INxpNfcAdapterExtras;
    .locals 3
    .param p1, "extras"    # Landroid/nfc/INfcAdapterExtras;

    .prologue
    .line 591
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 592
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You need a context on NxpNfcAdapter to use the  NXP NFC extras APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 596
    :cond_1
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1}, Lcom/nxp/nfc/INxpNfcAdapter;->getNxpNfcAdapterExtrasInterface()Lcom/nxp/nfc/INxpNfcAdapterExtras;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 599
    :goto_0
    return-object v1

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NXPNFC"

    const-string v2, "getNxpNfcAdapterExtrasInterface failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;
    .locals 3

    .prologue
    .line 130
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You need a reference from NfcAdapter to use the  NXP NFC APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1}, Lcom/nxp/nfc/INxpNfcAdapter;->getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServicesAidCacheSize(ILjava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "UserID"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v1, p1, p2}, Lcom/nxp/nfc/INxpNfcAdapter;->getServicesAidCacheSize(ILjava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 554
    :goto_0
    return-object v1

    .line 551
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 554
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public selectDefaultSecureElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, "seID":I
    const/4 v4, 0x0

    .line 260
    .local v4, "seSelected":Z
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    const/4 v2, 0x2

    .line 276
    :goto_0
    :try_start_0
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getSelectedSecureElement(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 277
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->deselectSecureElement(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :try_start_1
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->getSecureElementList(Ljava/lang/String;)[I

    move-result-object v3

    .line 289
    .local v3, "seList":[I
    if-eqz v3, :cond_7

    array-length v5, v3

    if-eqz v5, :cond_7

    .line 291
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    .line 292
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_7

    .line 293
    aget v5, v3, v1

    if-ne v5, v2, :cond_1

    .line 295
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->selectSecureElement(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    const/4 v4, 0x1

    .line 292
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .end local v1    # "i":I
    .end local v3    # "seList":[I
    :cond_2
    const-string v5, "com.nxp.uicc2.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 263
    const/4 v2, 0x4

    goto :goto_0

    .line 264
    :cond_3
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 265
    const/4 v2, 0x1

    goto :goto_0

    .line 266
    :cond_4
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 267
    const/4 v2, 0x7

    goto :goto_0

    .line 269
    :cond_5
    const-string v5, "NXPNFC"

    const-string v6, "selectDefaultSecureElement: wrong Secure Element ID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v5, Ljava/io/IOException;

    const-string v6, "selectDefaultSecureElement failed: Wronf Secure Element ID"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "NXPNFC"

    const-string v6, "selectDefaultSecureElement: getSelectedSecureElement failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failure in deselecting the selected Secure Element"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 301
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "seList":[I
    :cond_6
    :try_start_2
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, p1, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->selectSecureElement(Ljava/lang/String;I)I

    .line 302
    const/4 v4, 0x1

    .line 307
    :cond_7
    if-nez v4, :cond_8

    .line 308
    const-string v5, "com.nxp.uicc.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 309
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 310
    new-instance v5, Ljava/io/IOException;

    const-string v6, "UICC not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 322
    .end local v3    # "seList":[I
    :catch_1
    move-exception v0

    .line 323
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v5, "NXPNFC"

    const-string v6, "selectUiccCardEmulation: getSecureElementList failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_8
    return-void

    .line 311
    .restart local v3    # "seList":[I
    :cond_9
    :try_start_3
    const-string v5, "com.nxp.uicc2.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 312
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 313
    new-instance v5, Ljava/io/IOException;

    const-string v6, "UICC2 not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 314
    :cond_a
    const-string v5, "com.nxp.smart_mx.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 315
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 316
    new-instance v5, Ljava/io/IOException;

    const-string v6, "SMART_MX not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 317
    :cond_b
    const-string v5, "com.nxp.all_se.ID"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 318
    sget-object v5, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v5, v2}, Lcom/nxp/nfc/INxpNfcAdapter;->storeSePreference(I)V

    .line 319
    new-instance v5, Ljava/io/IOException;

    const-string v6, "ALL_SE not detected"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public updateServiceState(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "serviceState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :try_start_0
    sget-object v1, Lcom/nxp/nfc/NxpNfcAdapter;->sNxpService:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/nxp/nfc/INxpNfcAdapter;->updateServiceState(ILjava/util/Map;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 584
    :goto_0
    return v1

    .line 581
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 584
    const/16 v1, 0xff

    goto :goto_0
.end method
