.class public Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;
.super Lcom/oneplus/widget/preference/OPPreference;
.source "OPSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/security/OPSecuritySettings;
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
    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 643
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 638
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 639
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 635
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 631
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 632
    return-void
.end method


# virtual methods
.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    .line 658
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->mView:Landroid/view/View;

    .line 659
    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "item"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 649
    return-void
.end method
