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

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    new-instance v1, Lcom/oneplus/uc/UcAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/oneplus/uc/UcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setTitle(I)Lcom/oneplus/uc/UcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090866

    invoke-virtual {v1, v2}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setMessage(I)Lcom/oneplus/uc/UcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/uc/UcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/uc/UcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/uc/UcAlertDialog$Builder;->create()Lcom/oneplus/uc/UcAlertDialog;

    move-result-object v0

    .line 382
    .local v0, "dialog":Lcom/oneplus/uc/UcAlertDialog;
    invoke-virtual {v0, p0}, Lcom/oneplus/uc/UcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 383
    invoke-virtual {v0}, Lcom/oneplus/uc/UcAlertDialog;->show()V

    .line 384
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/CredentialStorage;
    .param p2, "x1"    # Lcom/android/settings_ex/CredentialStorage$1;

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 387
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 388
    return-void

    .line 387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 391
    iget-boolean v1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    if-eqz v1, :cond_0

    .line 392
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->mConfigureConfirmed:Z

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/CredentialStorage;->startActivity(Landroid/content/Intent;)V

    .line 400
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/CredentialStorage$ConfigureKeyGuardDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-virtual {v1}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    goto :goto_0
.end method
