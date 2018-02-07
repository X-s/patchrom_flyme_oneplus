.class Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureKeyGuardDialog"
.end annotation


# instance fields
.field private mConfigureConfirmed:Z

.field final synthetic this$0:Lcom/android/settings_ex/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    const v2, 0x1040014

    .line 391
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 393
    const v2, 0x7f0e0beb

    .line 391
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 394
    const v2, 0x104000a

    .line 391
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 395
    const/high16 v2, 0x1040000

    .line 391
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 397
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 398
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 400
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/settings_ex/CredentialStorage;->-set0(Lcom/android/settings_ex/CredentialStorage;Z)Z

    .line 390
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 405
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 404
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-static {v1, v2}, Lcom/android/settings_ex/CredentialStorage;->-set0(Lcom/android/settings_ex/CredentialStorage;Z)Z

    .line 412
    iget-boolean v1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v1, :cond_0

    .line 413
    iput-boolean v2, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 414
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "minimum_quality"

    .line 416
    const/high16 v2, 0x10000

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/CredentialStorage;->startActivity(Landroid/content/Intent;)V

    .line 418
    return-void

    .line 420
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    .line 408
    return-void
.end method
