.class public abstract Lcom/android/settings_ex/vpn2/ManageablePreference;
.super Lcom/android/settings_ex/GearPreference;
.source "ManageablePreference.java"


# static fields
.field public static STATE_NONE:I


# instance fields
.field mIsAlwaysOn:Z

.field mState:I

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/android/settings_ex/vpn2/ManageablePreference;->STATE_NONE:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 37
    sget v0, Lcom/android/settings_ex/vpn2/ManageablePreference;->STATE_NONE:I

    iput v0, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mState:I

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/ManageablePreference;->setPersistent(Z)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/vpn2/ManageablePreference;->setOrder(I)V

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/ManageablePreference;->setUserId(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mState:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mUserId:I

    return v0
.end method

.method public isAlwaysOn()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    return v0
.end method

.method public setAlwaysOn(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eq v0, p1, :cond_0

    .line 74
    iput-boolean p1, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ManageablePreference;->updateSummary()V

    .line 72
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mState:I

    if-eq v0, p1, :cond_0

    .line 66
    iput p1, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mState:I

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ManageablePreference;->updateSummary()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ManageablePreference;->notifyHierarchyChanged()V

    .line 64
    :cond_0
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mUserId:I

    .line 53
    const-string/jumbo v0, "no_config_vpn"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/vpn2/ManageablePreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method protected updateSummary()V
    .locals 6

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/ManageablePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0a006a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "states":[Ljava/lang/String;
    iget v4, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mState:I

    sget v5, Lcom/android/settings_ex/vpn2/ManageablePreference;->STATE_NONE:I

    if-ne v4, v5, :cond_1

    const-string/jumbo v3, ""

    .line 89
    .local v3, "summary":Ljava/lang/String;
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eqz v4, :cond_0

    .line 90
    const v4, 0x7f0e0d1b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "alwaysOnString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 94
    .end local v0    # "alwaysOnString":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/vpn2/ManageablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    return-void

    .line 88
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/android/settings_ex/vpn2/ManageablePreference;->mState:I

    aget-object v3, v2, v4

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 91
    .restart local v0    # "alwaysOnString":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 92
    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const v5, 0x7f0e0a3e

    .line 91
    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
