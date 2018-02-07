.class public Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;
.super Landroid/support/v7/preference/Preference;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPreference"
.end annotation


# instance fields
.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 728
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 727
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 724
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 723
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 720
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 719
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 717
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 716
    return-void
.end method


# virtual methods
.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 743
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 744
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    .line 742
    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "item"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 733
    return-void
.end method
