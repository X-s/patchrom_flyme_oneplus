.class public Lcom/android/settings_ex/ResetNetworkConfirm;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# static fields
.field private static final DBG:Z = true

.field private static final RESET_BT_TIMEOUT:I = 0x2

.field private static final RESET_COMPLETED:I = 0x1

.field private static final START_RESET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResetNetworkConfirm"


# instance fields
.field private btManager:Landroid/bluetooth/BluetoothManager;

.field private mContentView:Landroid/view/View;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field public mHandler:Landroid/os/Handler;

.field private mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;

    .line 78
    new-instance v0, Lcom/android/settings_ex/ResetNetworkConfirm$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/ResetNetworkConfirm$1;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/android/settings_ex/ResetNetworkConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ResetNetworkConfirm$2;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v0, Lcom/android/settings_ex/ResetNetworkConfirm$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ResetNetworkConfirm$3;-><init>(Lcom/android/settings_ex/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/ResetNetworkConfirm;)Lcom/oneplus/app/OPProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetworkConfirm;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ResetNetworkConfirm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetworkConfirm;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->isActivityValide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/ResetNetworkConfirm;)Landroid/bluetooth/BluetoothManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetworkConfirm;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/ResetNetworkConfirm;Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetworkConfirm;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothManager;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->btManager:Landroid/bluetooth/BluetoothManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/ResetNetworkConfirm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ResetNetworkConfirm;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    return v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1201c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method private isActivityValide()Z
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 255
    const/16 v0, 0x54

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 238
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 239
    const-string v2, "subscription"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mSubId:I

    .line 242
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const v0, 0x7f040083

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 224
    :cond_0
    new-instance v0, Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mProgressDialog:Lcom/oneplus/app/OPProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c019b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 228
    const v0, 0x7f0400e7

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 229
    invoke-direct {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ex/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ResetNetworkConfirm;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    return-void
.end method
