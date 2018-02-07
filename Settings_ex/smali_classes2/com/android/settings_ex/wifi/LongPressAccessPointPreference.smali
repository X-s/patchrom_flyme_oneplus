.class public Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;
.super Lcom/android/settings_exlib/wifi/AccessPointPreference;
.source "LongPressAccessPointPreference.java"


# instance fields
.field private final mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/wifi/AccessPointPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_exlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V
    .locals 0
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z
    .param p5, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_exlib/wifi/AccessPointPreference;-><init>(Lcom/android/settings_exlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;Z)V

    .line 51
    iput-object p5, p0, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    .line 49
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 59
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 55
    :cond_0
    return-void
.end method
