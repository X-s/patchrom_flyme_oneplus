.class public Lcom/android/settings_exlib/wifi/AccessPointPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/wifi/AccessPointPreference$1;,
        Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field private mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDefaultIconResId:I

.field private mForSavedNetworks:Z

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private final mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-array v0, v3, [I

    .line 37
    sget v1, Lcom/android/settings_exlib/R$attr;->state_encrypted:I

    aput v1, v0, v2

    .line 36
    sput-object v0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 39
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->STATE_NONE:[I

    .line 41
    new-array v0, v3, [I

    sget v1, Lcom/android/settings_exlib/R$attr;->wifi_signal:I

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 56
    sget v1, Lcom/android/settings_exlib/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v2

    .line 57
    sget v1, Lcom/android/settings_exlib/R$string;->accessibility_wifi_two_bars:I

    aput v1, v0, v3

    .line 58
    sget v1, Lcom/android/settings_exlib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 59
    sget v1, Lcom/android/settings_exlib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 55
    sput-object v0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 263
    new-instance v0, Lcom/android/settings_exlib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settings_exlib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 65
    iput-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 66
    iput v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 67
    iput-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_exlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "iconResId"    # I
    .param p5, "forSavedNetworks"    # Z

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 263
    new-instance v0, Lcom/android/settings_exlib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settings_exlib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 91
    iput-object p3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    .line 92
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 93
    iput-boolean p5, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 94
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mLevel:I

    .line 96
    iput p4, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mDefaultIconResId:I

    .line 98
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/android/settings_exlib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 102
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    sget v1, Lcom/android/settings_exlib/R$dimen;->wifi_preference_badge_padding:I

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_exlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 263
    new-instance v0, Lcom/android/settings_exlib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settings_exlib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 73
    iput-object p3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    .line 74
    iput-object p1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 75
    iput-boolean p4, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 76
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mLevel:I

    .line 79
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/android/settings_exlib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 83
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    sget v1, Lcom/android/settings_exlib/R$dimen;->wifi_preference_badge_padding:I

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->refresh()V

    .line 71
    return-void
.end method

.method private postNotifyChanged()V
    .locals 3

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private safeSetDefaultIcon()V
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mDefaultIconResId:I

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mDefaultIconResId:I

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->setIcon(I)V

    .line 179
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 238
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 119
    iget v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 122
    :cond_1
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 128
    :cond_2
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public onLevelChanged()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 247
    return-void
.end method

.method public refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v2, :cond_0

    return-void

    .line 204
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_4

    .line 205
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 213
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getLevel()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 217
    .local v1, "level":I
    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mLevel:I

    if-eq v1, v2, :cond_1

    .line 218
    iput v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mLevel:I

    .line 219
    iget v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v2, v0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->notifyChanged()V

    .line 222
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    .line 224
    iget-boolean v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 229
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string/jumbo v3, ","

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 231
    :cond_2
    if-ltz v1, :cond_3

    sget-object v2, Lcom/android/settings_exlib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 232
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string/jumbo v3, ","

    aput-object v3, v2, v5

    .line 233
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/settings_exlib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 232
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 200
    :cond_3
    return-void

    .line 207
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "level":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "level":I
    :cond_5
    iget-object v2, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 189
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1, v2}, Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;->-wrap0(Lcom/android/settings_exlib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 187
    :cond_0
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 132
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_4

    .line 146
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v3, :cond_2

    .line 149
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    sget-object v3, Lcom/android/settings_exlib/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 149
    :goto_1
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void

    .line 151
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_1
    sget-object v3, Lcom/android/settings_exlib/wifi/AccessPointPreference;->STATE_NONE:[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 165
    sget-object v4, Lcom/android/settings_exlib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 164
    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 166
    .local v2, "wifiSld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Lcom/android/settings_exlib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/settings_exlib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
