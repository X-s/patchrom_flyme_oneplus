.class public Lcom/android/settings_ex/vpn2/ConfigPreference;
.super Lcom/android/settings_ex/vpn2/ManageablePreference;
.source "ConfigPreference.java"


# instance fields
.field private mProfile:Lcom/android/internal/net/VpnProfile;

.field private mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/internal/net/VpnProfile;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onManage"    # Landroid/view/View$OnClickListener;
    .param p3, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ex/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    .line 39
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setProfile(Lcom/android/internal/net/VpnProfile;)V

    .line 40
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    .line 57
    iget v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    if-gez v2, :cond_0

    .line 58
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020161

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->notifyHierarchyChanged()V

    .line 71
    return-void

    .line 60
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "states":[Ljava/lang/String;
    iget v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/ConfigPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x3

    .line 75
    instance-of v2, p1, Lcom/android/settings_ex/vpn2/ConfigPreference;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .line 78
    .local v0, "another":Lcom/android/settings_ex/vpn2/ConfigPreference;
    iget v2, v0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    iget v3, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    sub-int v1, v2, v3

    .local v1, "result":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int v1, v2, v3

    if-nez v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 93
    .end local v0    # "another":Lcom/android/settings_ex/vpn2/ConfigPreference;
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    instance-of v2, p1, Lcom/android/settings_ex/vpn2/AppPreference;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 87
    .local v0, "another":Lcom/android/settings_ex/vpn2/AppPreference;
    iget v2, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/AppPreference;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 91
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 93
    .end local v0    # "another":Lcom/android/settings_ex/vpn2/AppPreference;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings_ex/vpn2/ManageablePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/vpn2/ConfigPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method

.method public setProfile(Lcom/android/internal/net/VpnProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->update()V

    .line 49
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/settings_ex/vpn2/ConfigPreference;->mState:I

    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->update()V

    .line 54
    return-void
.end method
