.class public Lcom/android/settings_ex/nfc/NfcPaymentPreference;
.super Landroid/preference/DialogPreference;
.source "NfcPaymentPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
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
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/nfc/PaymentBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backend"    # Lcom/android/settings_ex/nfc/PaymentBackend;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p2, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/settings_ex/nfc/PaymentBackend;->registerCallback(Lcom/android/settings_ex/nfc/PaymentBackend$Callback;)V

    .line 56
    new-instance v0, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;-><init>(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    .line 57
    const v0, 0x7f0c0bac

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 58
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 59
    const v0, 0x7f0400e2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setWidgetLayoutResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->refresh()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/NfcPaymentPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/NfcPaymentPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/nfc/NfcPaymentPreference;)Lcom/android/settings_ex/nfc/PaymentBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/nfc/NfcPaymentPreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 68
    const v0, 0x7f1201a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings_ex/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 108
    .local v0, "defaultAppInfo":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 109
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "settingsIntent":Landroid/content/Intent;
    iget-object v3, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v2    # "settingsIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "NfcPaymentPreference"

    const-string v4, "Settings activity not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->refresh()V

    .line 103
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 78
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings_ex/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;>;"
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v3}, Lcom/android/settings_ex/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v2

    .line 80
    .local v2, "defaultApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    .line 82
    .local v1, "apps":[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings_ex/nfc/NfcPaymentPreference$NfcPaymentAdapter;->updateApps([Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;)V

    .line 84
    .end local v1    # "apps":[Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    :cond_0
    const v3, 0x7f0c0ba6

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setTitle(I)V

    .line 85
    if-eqz v2, :cond_1

    .line 86
    iget-object v3, v2, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    .line 91
    return-void

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0ba7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSettingsVisibility()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings_ex/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings_ex/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    .line 123
    .local v0, "defaultApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    .end local v0    # "defaultApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    :cond_1
    :goto_0
    return-void

    .line 126
    .restart local v0    # "defaultApp":Lcom/android/settings_ex/nfc/PaymentBackend$PaymentAppInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
