.class public Lcom/android/settings_ex/datausage/CellDataPreference;
.super Lcom/android/settings_ex/CustomDialogPreference;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/android/settings_ex/datausage/TemplatePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/CellDataPreference$1;,
        Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;,
        Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;
    }
.end annotation


# static fields
.field private static final CARRIER_MODE_CT_CLASS_A:Ljava/lang/String; = "ct_class_a"

.field private static final TAG:Ljava/lang/String; = "CellDataPreference"


# instance fields
.field private mCarrierMode:Ljava/lang/String;

.field public mChecked:Z

.field private mIsCTClassA:Z

.field private final mListener:Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;

.field public mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/datausage/CellDataPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->updateChecked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    .line 54
    const-string/jumbo v0, "persist.radio.carrier_mode"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mCarrierMode:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mCarrierMode:Ljava/lang/String;

    const-string/jumbo v1, "ct_class_a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mIsCTClassA:Z

    .line 166
    new-instance v0, Lcom/android/settings_ex/datausage/CellDataPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/CellDataPreference$1;-><init>(Lcom/android/settings_ex/datausage/CellDataPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mListener:Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;

    .line 57
    return-void
.end method

.method private setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 131
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mChecked:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->notifyChanged()V

    .line 129
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 126
    invoke-direct {p0, p1}, Lcom/android/settings_ex/datausage/CellDataPreference;->setChecked(Z)V

    .line 122
    return-void
.end method

.method private showDisableDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    const v1, 0x7f0e0cbe

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    const v1, 0x104000a

    .line 151
    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    const/high16 v1, 0x1040000

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    return-void
.end method

.method private updateChecked()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/datausage/CellDataPreference;->setChecked(Z)V

    .line 108
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/settings_ex/CustomDialogPreference;->onAttached()V

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mListener:Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 83
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 138
    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "switchView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 140
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "switchView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 136
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 159
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 158
    return-void
.end method

.method public onDetached()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mListener:Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings_ex/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 91
    invoke-super {p0}, Lcom/android/settings_ex/CustomDialogPreference;->onDetached()V

    .line 89
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/datausage/CellDataPreference;->showDisableDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "s"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;

    .line 64
    .local v0, "state":Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;
    invoke-virtual {v0}, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settings_ex/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    iget-boolean v1, v0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->mChecked:Z

    iput-boolean v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mChecked:Z

    .line 67
    iget v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 68
    iget v1, v0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->mSubId:I

    iput v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->notifyChanged()V

    .line 62
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;

    invoke-super {p0}, Lcom/android/settings_ex/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;-><init>(Landroid/os/Parcelable;)V

    .line 77
    .local v0, "state":Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;
    iget-boolean v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mChecked:Z

    iput-boolean v1, v0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->mChecked:Z

    .line 78
    iget v1, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    iput v1, v0, Lcom/android/settings_ex/datausage/CellDataPreference$CellDataState;->mSubId:I

    .line 79
    return-object v0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xb2

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 115
    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mChecked:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomDialogPreference;->performClick(Landroid/view/View;)V

    .line 113
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 114
    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    goto :goto_1
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "services"    # Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    .prologue
    const/4 v1, -0x1

    .line 96
    if-ne p2, v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CellDataPreference needs a SubscriptionInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 101
    iget v0, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    if-ne v0, v1, :cond_1

    .line 102
    iput p2, p0, Lcom/android/settings_ex/datausage/CellDataPreference;->mSubId:I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/CellDataPreference;->updateChecked()V

    .line 95
    return-void
.end method
