.class public Lcom/android/settings_ex/nfc/NfcForegroundPreference;
.super Lcom/android/settings_ex/DropDownPreference;
.source "NfcForegroundPreference.java"

# interfaces
.implements Lcom/android/settings_ex/DropDownPreference$Callback;
.implements Lcom/android/settings_ex/nfc/PaymentBackend$Callback;


# instance fields
.field private final mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings_ex/nfc/PaymentBackend;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DropDownPreference;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 29
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/nfc/PaymentBackend;->registerCallback(Lcom/android/settings_ex/nfc/PaymentBackend$Callback;)V

    .line 30
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setCallback(Lcom/android/settings_ex/DropDownPreference$Callback;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->refresh()V

    .line 32
    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->refresh()V

    .line 37
    return-void
.end method

.method refresh()V
    .locals 6

    .prologue
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

    const v3, 0x7f0c0ba9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->clearItems()V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0bab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0baa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    if-eqz v1, :cond_0

    .line 50
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/nfc/NfcForegroundPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
