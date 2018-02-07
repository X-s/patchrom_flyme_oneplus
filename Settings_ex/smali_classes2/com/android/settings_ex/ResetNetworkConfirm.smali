.class public Lcom/android/settings_ex/ResetNetworkConfirm;
.super Lcom/android/settings_ex/OptionsMenuFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ResetNetworkConfirm$1;,
        Lcom/android/settings_ex/ResetNetworkConfirm$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final RESET_COMPLETED:I = 0x1

.field private static final START_RESET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResetNetworkConfirm"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field public mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSubId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/ResetNetworkConfirm;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/ResetNetworkConfirm;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->isActivityValide()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/OptionsMenuFragment;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    .line 72
    new-instance v0, Lcom/android/settings_ex/ResetNetworkConfirm$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ResetNetworkConfirm$1;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/android/settings_ex/ResetNetworkConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ResetNetworkConfirm$2;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 60
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1102b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method private isActivityValide()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x54

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/settings_ex/OptionsMenuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 201
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 202
    const-string/jumbo v1, "subscription"

    .line 203
    const/4 v2, -0x1

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    .line 197
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 174
    invoke-static {v2, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 176
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 177
    const-string/jumbo v3, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 176
    invoke-static {v2, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const v2, 0x7f0400b1

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 179
    :cond_0
    if-eqz v0, :cond_1

    .line 180
    const v2, 0x7f040020

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0, v6}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;Z)V

    .line 182
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-object v1

    .line 186
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 187
    iget-object v2, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 188
    iget-object v2, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 189
    const v4, 0x7f0e02e8

    .line 188
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 191
    const v2, 0x7f040168

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 192
    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 193
    iget-object v2, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object v2
.end method
