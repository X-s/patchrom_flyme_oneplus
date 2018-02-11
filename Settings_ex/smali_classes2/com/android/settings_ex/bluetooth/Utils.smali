.class public final Lcom/android/settings_ex/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/Utils$1;,
        Lcom/android/settings_ex/bluetooth/Utils$2;
    }
.end annotation


# static fields
.field static final D:Z = true

.field static final V:Z

.field private static final mErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# direct methods
.method static synthetic -get0()Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;
    .locals 1

    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/android/settings_ex/bluetooth/Utils$1;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/Utils$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mErrorListener:Lcom/android/settings_exlib/bluetooth/Utils$ErrorListener;

    .line 146
    new-instance v0, Lcom/android/settings_ex/bluetooth/Utils$2;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/Utils$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .param p0, "connectionState"    # I

    .prologue
    .line 47
    packed-switch p0, :pswitch_data_0

    .line 57
    const/4 v0, 0x0

    return v0

    .line 49
    :pswitch_0
    const v0, 0x7f0e003c

    return v0

    .line 51
    :pswitch_1
    const v0, 0x7f0e003b

    return v0

    .line 53
    :pswitch_2
    const v0, 0x7f0e0039

    return v0

    .line 55
    :pswitch_3
    const v0, 0x7f0e003a

    return v0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const v0, 0x7f0e06c2

    invoke-static {p0, p1, v0}, Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "disconnectListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    const v2, 0x104000a

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 69
    const/high16 v2, 0x1040000

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 80
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 83
    return-object p1

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 76
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 77
    .local v0, "okText":Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 97
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 99
    .local v2, "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, "activity":Landroid/content/Context;
    invoke-virtual {v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    if-nez v0, :cond_0

    .line 103
    return-void

    :cond_0
    move-object v1, v0

    .line 105
    check-cast v1, Landroid/app/Activity;

    .line 106
    .local v1, "mActivity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    :cond_1
    return-void

    .line 110
    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    const v5, 0x7f0e06c1

    .line 110
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 113
    const v5, 0x104000a

    .line 110
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 96
    .end local v1    # "mActivity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 116
    :cond_3
    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static updateSearchIndex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "screenTitle"    # Ljava/lang/String;
    .param p4, "iconResId"    # I
    .param p5, "enabled"    # Z

    .prologue
    .line 125
    new-instance v0, Lcom/android/settings_ex/search/SearchIndexableRaw;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "data":Lcom/android/settings_ex/search/SearchIndexableRaw;
    iput-object p1, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 127
    iput-object p2, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 128
    iput-object p3, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 129
    iput p4, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->iconResId:I

    .line 130
    iput-boolean p5, v0, Lcom/android/settings_ex/search/SearchIndexableRaw;->enabled:Z

    .line 132
    invoke-static {p0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 124
    return-void
.end method
