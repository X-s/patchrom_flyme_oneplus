.class public Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
.super Lcom/android/settings_ex/vpn2/ManageablePreference;
.source "LegacyVpnPreference.java"


# instance fields
.field private mProfile:Lcom/android/internal/net/VpnProfile;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02033a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x3

    .line 62
    instance-of v3, p1, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 63
    check-cast v1, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;

    .line 65
    .local v1, "another":Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    iget v3, v1, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mState:I

    iget v4, p0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mState:I

    sub-int v2, v3, v4

    .local v2, "result":I
    if-nez v2, :cond_0

    .line 66
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 67
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v4, v1, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v4, v4, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int v2, v3, v4

    if-nez v2, :cond_0

    .line 68
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 70
    :cond_0
    return v2

    .line 71
    .end local v1    # "another":Lcom/android/settings_ex/vpn2/LegacyVpnPreference;
    .end local v2    # "result":I
    :cond_1
    instance-of v3, p1, Lcom/android/settings_ex/vpn2/AppPreference;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 74
    .local v0, "another":Lcom/android/settings_ex/vpn2/AppPreference;
    iget v3, p0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mState:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/AppPreference;->getState()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 75
    const/4 v3, 0x1

    return v3

    .line 78
    :cond_2
    const/4 v3, -0x1

    return v3

    .line 80
    .end local v0    # "another":Lcom/android/settings_ex/vpn2/AppPreference;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings_ex/vpn2/ManageablePreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v3

    return v3
.end method

.method public getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f11027e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->performClick()V

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/vpn2/ManageablePreference;->onClick(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public setProfile(Lcom/android/internal/net/VpnProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 52
    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 53
    .local v0, "newLabel":Ljava/lang/String;
    :cond_0
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->notifyHierarchyChanged()V

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 50
    return-void

    .line 51
    .end local v0    # "newLabel":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .local v1, "oldLabel":Ljava/lang/String;
    goto :goto_0
.end method
