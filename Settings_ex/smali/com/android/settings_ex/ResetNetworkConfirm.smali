.class public Lcom/android/settings_ex/ResetNetworkConfirm;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# static fields
.field private static final RESET_COMPLETED:I = 0x1

.field private static final START_RESET:I


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field public mHandler:Landroid/os/Handler;

.field private mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    .line 68
    new-instance v0, Lcom/android/settings_ex/ResetNetworkConfirm$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ResetNetworkConfirm$1;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/settings_ex/ResetNetworkConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ResetNetworkConfirm$2;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetworkConfirm;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ResetNetworkConfirm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetworkConfirm;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    return v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1201f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x54

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 176
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 177
    const-string v1, "subscription"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    .line 180
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const v0, 0x7f04007f

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 163
    :cond_0
    new-instance v0, Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c027d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    const v0, 0x7f0400f6

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method
