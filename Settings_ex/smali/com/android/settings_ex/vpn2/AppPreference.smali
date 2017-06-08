.class public Lcom/android/settings_ex/vpn2/AppPreference;
.super Lcom/android/settings_ex/vpn2/ManageablePreference;
.source "AppPreference.java"


# static fields
.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_DISCONNECTED:I


# instance fields
.field private mName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mState:I

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onManage"    # Landroid/view/View$OnClickListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings_ex/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View$OnClickListener;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mState:I

    .line 49
    iput-object p3, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mUid:I

    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppPreference;->update()V

    .line 52
    return-void
.end method

.method private getUserContext()Landroid/content/Context;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 122
    .local v0, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method private update()V
    .locals 7

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "states":[Ljava/lang/String;
    iget v5, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mState:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mState:I

    aget-object v5, v3, v5

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mName:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    .line 94
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppPreference;->getUserContext()Landroid/content/Context;

    move-result-object v4

    .line 95
    .local v4, "userContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 101
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 102
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 103
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 109
    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 114
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "userContext":Landroid/content/Context;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppPreference;->notifyHierarchyChanged()V

    .line 118
    return-void

    .line 87
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 111
    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 105
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "userContext":Landroid/content/Context;
    :catch_1
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 127
    instance-of v2, p1, Lcom/android/settings_ex/vpn2/AppPreference;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/android/settings_ex/vpn2/AppPreference;

    .line 130
    .local v0, "another":Lcom/android/settings_ex/vpn2/AppPreference;
    iget v2, v0, Lcom/android/settings_ex/vpn2/AppPreference;->mState:I

    iget v3, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mState:I

    sub-int v1, v2, v3

    .local v1, "result":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/AppPreference;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget v2, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mUid:I

    iget v3, v0, Lcom/android/settings_ex/vpn2/AppPreference;->mUid:I

    sub-int v1, v2, v3

    .line 141
    .end local v0    # "another":Lcom/android/settings_ex/vpn2/AppPreference;
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    instance-of v2, p1, Lcom/android/settings_ex/vpn2/ConfigPreference;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 138
    check-cast v0, Lcom/android/settings_ex/vpn2/ConfigPreference;

    .line 139
    .local v0, "another":Lcom/android/settings_ex/vpn2/ConfigPreference;
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/vpn2/ConfigPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v2

    neg-int v1, v2

    goto :goto_0

    .line 141
    .end local v0    # "another":Lcom/android/settings_ex/vpn2/ConfigPreference;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings_ex/vpn2/ManageablePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/vpn2/AppPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    .line 55
    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 57
    .local v2, "user":Landroid/os/UserHandle;
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppPreference;->getUserContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 58
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 60
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mState:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mUid:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/settings_ex/vpn2/AppPreference;->mState:I

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppPreference;->update()V

    .line 83
    return-void
.end method
