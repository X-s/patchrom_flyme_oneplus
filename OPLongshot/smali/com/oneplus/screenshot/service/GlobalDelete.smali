.class public Lcom/oneplus/screenshot/service/GlobalDelete;
.super Ljava/lang/Object;
.source "GlobalDelete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

.field private mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

.field private mShotNotifyDeleteDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oneplus/screenshot/service/GlobalDelete;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalDelete;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    .line 25
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mBundle:Landroid/os/Bundle;

    .line 27
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 28
    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 34
    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mBundle:Landroid/os/Bundle;

    .line 36
    invoke-static {p1}, Lcom/oneplus/screenshot/service/GlobalNotification;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/service/GlobalNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/service/GlobalDelete;->initBroadcast(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private cancelScreenShotNotification()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/service/GlobalNotification;->cancelAll()V

    .line 110
    return-void
.end method

.method private hideShotNotifyDialog()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    .line 106
    :cond_0
    return-void
.end method

.method private initBroadcast(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    new-instance v0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    invoke-direct {v0, p1, p0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    .line 84
    return-void
.end method

.method private showShotNotifyDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 87
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalDelete;->hideShotNotifyDialog()V

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mContext:Landroid/content/Context;

    const v3, 0x7f0d000e

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 95
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    .line 96
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7de

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 97
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 98
    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 45
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    .line 46
    iget-object v4, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mBundle:Landroid/os/Bundle;

    const-string v5, "uri"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 47
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mBundle:Landroid/os/Bundle;

    const-string v5, "path"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 50
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 52
    invoke-virtual {v2, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalDelete;->cancelScreenShotNotification()V

    .line 56
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalDelete;->hideShotNotifyDialog()V

    .line 57
    return-void
.end method

.method public onCloseSystemDialogs()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mShotNotifyDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 70
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalDelete;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->unregister()V

    .line 62
    invoke-static {}, Lcom/oneplus/screenshot/service/GlobalNotification;->recycle()V

    .line 63
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalDelete;->showShotNotifyDialog()V

    .line 77
    return-void
.end method
