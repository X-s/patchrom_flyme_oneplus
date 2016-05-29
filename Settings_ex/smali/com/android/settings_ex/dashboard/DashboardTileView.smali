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
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput v3, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04002f

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 60
    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0f001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0f0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 64
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v1, 0x7f020016

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 100
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

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 113
    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.OPMSimMobileNetworkSubSettings"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v0, "PACKAGE"

    const-string v1, "com.android.phone"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v0, "TARGET_CLASS"

    const-string v1, "com.android.phone.OPSimMobileNetworkSetting"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    :cond_2
    new-instance v7, Landroid/content/ComponentName;

    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 126
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.OPSimSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v8    # "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v0, "com.android.phone"

    const-string v1, "com.android.phone.OPSimSettings"

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v8    # "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v0, "com.oneplus.noviceteaching"

    const-string v1, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 140
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CheckUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v8    # "intent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v0, "com.oneplus.opbackup"

    const-string v1, "com.oneplus.opbackup.CheckUpdateActivity"

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x7f050000

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 152
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method setColumnSpan(I)V
    .locals 0
    .param p1, "span"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    .line 91
    return-void
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    .line 83
    return-void
.end method
