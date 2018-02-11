.class public Lcom/android/settings_ex/nfc/NfcForegroundPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Lcom/android/settings_ex/nfc/PaymentBackend$Callback;


# instance fields
.field private final mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings_ex/nfc/PaymentBackend;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 30
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/nfc/PaymentBackend;->registerCallback(Lcom/android/settings_ex/nfc/PaymentBackend$Callback;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->refresh()V

    .line 27
    return-void
.end method


# virtual methods
.method public onPaymentAppsChanged()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->refresh()V

    .line 35
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->refresh()V

    .line 70
    return v1
.end method

.method refresh()V
    .locals 9

    .prologue
    const v8, 0x7f0e0d88

    const v7, 0x7f0e0d87

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v2}, Lcom/android/settings_ex/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 41
    .local v0, "defaultApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v2, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v2}, Lcom/android/settings_ex/nfc/PaymentBackend;->isForegroundMode()Z

    move-result v1

    .line 42
    .local v1, "foregroundMode":Z
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setPersistent(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0d86

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    new-array v2, v6, [Ljava/lang/CharSequence;

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 50
    new-array v2, v6, [Ljava/lang/CharSequence;

    const-string/jumbo v3, "1"

    aput-object v3, v2, v4

    const-string/jumbo v3, "0"

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 51
    if-eqz v1, :cond_0

    .line 52
    const-string/jumbo v2, "1"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string/jumbo v2, "0"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setValue(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
