.class public Lcom/android/settings_ex/dashboard/DashboardTileView;
.super Landroid/widget/FrameLayout;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_COL_SPAN:I = 0x1


# instance fields
.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v3, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003c

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 62
    const v1, 0x7f120036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f120059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f120068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 66
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 108
    .local v7, "numUserHandles":I
    if-le v7, v1, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-static {v0, v1}, Lcom/android/settings_ex/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/settings_ex/dashboard/DashboardTile;)V

    goto :goto_0

    .line 111
    :cond_2
    if-ne v7, v1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->startOneplusActivityAsUser(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->startOneplusActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method setColumnSpan(I)V
    .locals 0
    .param p1, "span"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    .line 93
    return-void
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void

    .line 88
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    .line 85
    return-void
.end method

.method public startOneplusActivity(Landroid/content/Intent;)V
    .locals 5
    .param p1, "titleIntent"    # Landroid/content/Intent;

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    new-instance v2, Landroid/content/Intent;

    const-string v3, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 201
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OPMSimMobileNetworkSubSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "componentName":Landroid/content/ComponentName;
    goto :goto_1

    .line 211
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.OPSimSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OPSimSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 220
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.noviceteaching"

    const-string v4, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 226
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CheckUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 228
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.opbackup"

    const-string v4, "com.oneplus.opbackup.CheckUpdateActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 234
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 237
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public startOneplusActivityAsUser(Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 7
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    .line 129
    :try_start_0
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    new-instance v2, Landroid/content/Intent;

    const-string v3, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 183
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 137
    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OPMSimMobileNetworkSubSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, "PACKAGE"

    const-string v4, "com.android.phone"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v3, "TARGET_CLASS"

    const-string v4, "com.android.phone.OPSimMobileNetworkSetting"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 151
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.OPSimSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OPSimSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 158
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.noviceteaching"

    const-string v4, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 166
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CheckUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 168
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.opbackup"

    const-string v4, "com.oneplus.opbackup.CheckUpdateActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 174
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 177
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
