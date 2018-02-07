.class public Lcom/android/settings_ex/datausage/DataSaverPreference;
.super Landroid/support/v7/preference/Preference;
.source "DataSaverPreference.java"

# interfaces
.implements Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;


# instance fields
.field private final mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    .line 26
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->addListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 32
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 53
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const v0, 0x7f0e0ff5

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/DataSaverPreference;->setSummary(I)V

    .line 44
    return-void

    .line 45
    :cond_0
    const v0, 0x7f0e0ff6

    goto :goto_0
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataSaverPreference;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->addListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 38
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 49
    return-void
.end method
