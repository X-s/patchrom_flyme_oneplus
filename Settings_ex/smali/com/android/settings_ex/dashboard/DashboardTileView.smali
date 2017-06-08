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

.field private mRightIcon:Landroid/widget/ImageView;

.field private mShowRightIcon:Z

.field private mStatusTextView:Landroid/widget/TextView;

.field private mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v3, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040040

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f120050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 62
    const v1, 0x7f120051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f12006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f12007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mRightIcon:Landroid/widget/ImageView;

    .line 66
    iget-boolean v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mShowRightIcon:Z

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dashboard/DashboardTileView;->showRightIcon(Z)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f020020

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 71
    return-void
.end method

.method private showAnimation()V
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x7f050000

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 229
    return-void
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideRightIcon()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mRightIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mRightIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 121
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

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 125
    .local v7, "numUserHandles":I
    if-le v7, v1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-static {v0, v1}, Lcom/android/settings_ex/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/settings_ex/dashboard/DashboardTile;)V

    goto :goto_0

    .line 127
    :cond_2
    if-ne v7, v1, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->startOneplusActivityAsUser(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    goto :goto_0

    .line 132
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
    .line 111
    iput p1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    .line 112
    return-void
.end method

.method public setDividerVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 108
    return-void
.end method

.method public setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    .line 104
    return-void
.end method

.method public showRightIcon()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mRightIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mRightIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public showRightIcon(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mShowRightIcon:Z

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->showRightIcon()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->hideRightIcon()V

    goto :goto_0
.end method

.method public startOneplusActivity(Landroid/content/Intent;)V
    .locals 6
    .param p1, "titleIntent"    # Landroid/content/Intent;

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return-void

    .line 197
    .restart local v0    # "action":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.CheckUpdate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v3, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.opbackup"

    const-string v5, "com.oneplus.opbackup.CheckUpdateActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 204
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 206
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->showAnimation()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.noviceteaching"

    const-string v5, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 215
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.oneplus.notification.settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/Settings$NotificationAppListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v4, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public startOneplusActivityAsUser(Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 8
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    .line 144
    :try_start_0
    iget-object v4, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v6, v4, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v4, v4, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 183
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return-void

    .line 151
    .restart local v0    # "action":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.CheckUpdate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v3, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.opbackup"

    const-string v5, "com.oneplus.opbackup.CheckUpdateActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 160
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->showAnimation()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.noviceteaching"

    const-string v5, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 169
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.oneplus.notification.settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/Settings$NotificationAppListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v4, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 173
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ONEPLUSCLOUD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p1, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 177
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v6, v4, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v4, v4, Lcom/android/settings_ex/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
