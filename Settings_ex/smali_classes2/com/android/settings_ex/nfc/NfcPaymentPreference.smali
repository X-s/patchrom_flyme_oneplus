.class public Lcom/android/settings_ex/nfc/NfcPaymentPreference;
.super Lcom/android/settings_ex/CustomDialogPreference;
.source "NfcPaymentPreference.java"

# interfaces
.implements Lcom/android/settings_ex/nfc/PaymentBackend$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcPaymentPreference"


# instance fields
.field private final mAdapter:Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

.field private mSettingsButtonView:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)Lcom/android/settings_ex/nfc/PaymentBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings_ex/nfc/PaymentBackend;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object p2, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p2, p0}, Lcom/android/settings_ex/nfc/PaymentBackend;->registerCallback(Lcom/android/settings_ex/nfc/PaymentBackend$Callback;)V

    .line 59
    new-instance v0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;-><init>(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    .line 60
    const v0, 0x7f0e0d5b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 61
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 62
    const v0, 0x7f040155

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setWidgetLayoutResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->refresh()V

    .line 54
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 71
    const v0, 0x7f11027e

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings_ex/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 112
    .local v0, "defaultAppInfo":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 113
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "settingsIntent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 118
    .restart local v2    # "settingsIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "NfcPaymentPreference"

    const-string/jumbo v4, "Settings activity not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->refresh()V

    .line 105
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 81
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings_ex/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;>;"
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings_ex/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v2

    .line 83
    .local v2, "defaultApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 85
    .local v1, "apps":[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->updateApps([Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 87
    .end local v1    # "apps":[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    :cond_0
    const v3, 0x7f0e0d55

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setTitle(I)V

    .line 88
    if-eqz v2, :cond_1

    .line 89
    iget-object v3, v2, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 80
    return-void

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0d56

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSettingsVisibility()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings_ex/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 127
    .local v0, "defaultApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    .end local v0    # "defaultApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    :goto_0
    return-void

    .line 130
    .restart local v0    # "defaultApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
