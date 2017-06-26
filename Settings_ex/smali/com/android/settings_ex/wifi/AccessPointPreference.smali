.class public Lcom/android/settings_ex/wifi/AccessPointPreference;
.super Lcom/oneplus/widget/preference/OPPreference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;
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

.field private final mBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

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

    .line 39
    new-array v0, v3, [I

    const v1, 0x7f010016

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 42
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointPreference;->STATE_NONE:[I

    .line 44
    new-array v0, v3, [I

    const v1, 0x7f010046

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0c0051
        0x7f0c0052
        0x7f0c0053
        0x7f0c0054
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 205
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AccessPointPreference$1;-><init>(Lcom/android/settings_ex/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 67
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 68
    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgePadding:I

    .line 69
    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_exlib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, p2}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 205
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AccessPointPreference$1;-><init>(Lcom/android/settings_ex/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 75
    iput-object p3, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    .line 76
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 77
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    .line 81
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgePadding:I

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->refresh()V

    .line 88
    return-void
.end method

.method private postNotifyChanged()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settings_exlib/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-super {p0}, Lcom/oneplus/widget/preference/OPPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 103
    iget v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 106
    :cond_1
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onLevelChanged()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 197
    return-void
.end method

.method public refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 165
    .local v1, "level":I
    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    if-eq v1, v2, :cond_0

    .line 166
    iput v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    .line 167
    iget v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->notifyChanged()V

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    .line 172
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 177
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string v3, ","

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 179
    :cond_1
    if-ltz v1, :cond_2

    sget-object v2, Lcom/android/settings_ex/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 180
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const-string v3, ","

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 183
    :cond_2
    return-void

    .line 160
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "level":I
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 172
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "level":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 145
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    # invokes: Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;->getUserBadge(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2}, Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;->access$000(Lcom/android/settings_ex/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 151
    :cond_0
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings_ex/wifi/AccessPointPreference;->STATE_SECURED:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez v1, :cond_3

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 136
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 126
    :cond_2
    sget-object v1, Lcom/android/settings_ex/wifi/AccessPointPreference;->STATE_NONE:[I

    goto :goto_1

    .line 133
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
