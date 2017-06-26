.class public Lcom/android/settings_ex/wifi/WpsDialog;
.super Lcom/oneplus/app/OPAlertDialog;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WpsDialog$5;,
        Lcom/android/settings_ex/wifi/WpsDialog$DialogState;
    }
.end annotation


# static fields
.field private static final DIALOG_MSG_STRING:Ljava/lang/String; = "android:dialogMsg"

.field private static final DIALOG_STATE:Ljava/lang/String; = "android:dialogState"

.field private static final TAG:Ljava/lang/String; = "WpsDialog"

.field private static final WPS_TIMEOUT_S:I = 0x78


# instance fields
.field private mButton:Lcom/oneplus/widget/button/OPButton;

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mMsgString:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

.field private mWpsSetup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wpsSetup"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/oneplus/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/android/settings_ex/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mDialogState:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    .line 83
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mContext:Landroid/content/Context;

    .line 84
    iput p2, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mWpsSetup:I

    .line 126
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog$1WpsListener;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WpsDialog$1WpsListener;-><init>(Lcom/android/settings_ex/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WpsDialog$1;-><init>(Lcom/android/settings_ex/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WpsDialog;->setCanceledOnTouchOutside(Z)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WpsDialog;Lcom/android/settings_ex/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;
    .param p1, "x1"    # Lcom/android/settings_ex/wifi/WpsDialog$DialogState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WpsDialog;->updateDialog(Lcom/android/settings_ex/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/WpsDialog;)Lcom/oneplus/widget/button/OPButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mButton:Lcom/oneplus/widget/button/OPButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/WpsDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/wifi/WpsDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 266
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 268
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 269
    .local v3, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mDialogState:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    sget-object v6, Lcom/android/settings_ex/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    if-ne v5, v6, :cond_0

    .line 271
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 272
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    .line 273
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0503

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "msg":Ljava/lang/String;
    sget-object v5, Lcom/android/settings_ex/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    invoke-direct {p0, v5, v2}, Lcom/android/settings_ex/wifi/WpsDialog;->updateDialog(Lcom/android/settings_ex/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 279
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "state":Landroid/net/NetworkInfo$DetailedState;
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    return-void
.end method

.method private updateDialog(Lcom/android/settings_ex/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Lcom/android/settings_ex/wifi/WpsDialog$DialogState;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mDialogState:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mDialogState:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    .line 237
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/wifi/WpsDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings_ex/wifi/WpsDialog$4;-><init>(Lcom/android/settings_ex/wifi/WpsDialog;Lcom/android/settings_ex/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04015c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f1202ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f0c04ff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f1202cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    .line 166
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 169
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f1202cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mView:Landroid/view/View;

    const v2, 0x7f1202cd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/button/OPButton;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mButton:Lcom/oneplus/widget/button/OPButton;

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mButton:Lcom/oneplus/widget/button/OPButton;

    const v2, 0x7f0c0536

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/button/OPButton;->setText(I)V

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mButton:Lcom/oneplus/widget/button/OPButton;

    new-instance v2, Lcom/android/settings_ex/wifi/WpsDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WpsDialog$2;-><init>(Lcom/android/settings_ex/wifi/WpsDialog;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WpsDialog;->setView(Landroid/view/View;)V

    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 186
    .local v0, "wpsConfig":Landroid/net/wifi/WpsInfo;
    iget v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mWpsSetup:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 189
    .end local v0    # "wpsConfig":Landroid/net/wifi/WpsInfo;
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 152
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mDialogState:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    const-string v2, "android:dialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WpsDialog$DialogState;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    move-result-object v0

    .line 153
    .local v0, "dialogState":Lcom/android/settings_ex/wifi/WpsDialog$DialogState;
    const-string v2, "android:dialogMsg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wifi/WpsDialog;->updateDialog(Lcom/android/settings_ex/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 156
    .end local v0    # "dialogState":Lcom/android/settings_ex/wifi/WpsDialog$DialogState;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Lcom/oneplus/app/OPAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android:dialogState"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mDialogState:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WpsDialog$DialogState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "android:dialogMsg"

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mMsgString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 197
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings_ex/wifi/WpsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/WpsDialog$3;-><init>(Lcom/android/settings_ex/wifi/WpsDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mDialogState:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/settings_ex/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings_ex/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 229
    :cond_2
    return-void
.end method
