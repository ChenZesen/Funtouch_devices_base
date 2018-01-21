.class public Lcom/android/internal/telephony/ServiceStateTracker$SpListener;
.super Ljava/lang/Object;
.source "ServiceStateTracker.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$SpListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1956
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SpListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    .line 1957
    .local v1, "mPhoneID":I
    const-string v0, ""

    .line 1958
    .local v0, "mOtherPhoneCallState":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1959
    .local v2, "otherphonestate":I
    if-nez v1, :cond_1

    .line 1960
    const-string v0, "phone1_call_state"

    .line 1966
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SpListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SST["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:SpListener otherphonecallstate ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1967
    if-ne p2, v0, :cond_0

    .line 1968
    const/4 v3, -0x1

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1970
    :cond_0
    if-nez v2, :cond_3

    .line 1971
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SpListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrengthforCallStart()V

    .line 1977
    :goto_1
    return-void

    .line 1961
    :cond_1
    if-ne v1, v6, :cond_2

    .line 1962
    const-string v0, "phone0_call_state"

    goto :goto_0

    .line 1964
    :cond_2
    const-string v0, "unValidState"

    goto :goto_0

    .line 1972
    :cond_3
    if-ne v2, v6, :cond_4

    .line 1973
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SpListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrengthforCallEnd()V

    goto :goto_1

    .line 1975
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker$SpListener;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SST["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:SpListener is not intersting phone ,ignore!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
