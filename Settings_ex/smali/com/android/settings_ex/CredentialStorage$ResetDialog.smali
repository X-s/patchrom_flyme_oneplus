.class Lcom/android/settings_ex/CredentialStorage$ResetDialog;
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
    name = "ResetDialog"
.end annotation


# instance fields
.field private mResetConfirmed:Z

.field final synthetic this$0:Lcom/android/settings_ex/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/CredentialStorage;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    const v2, 0x1040014

    .line 319
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 321
    const v2, 0x7f0e0be3

    .line 319
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 322
    const v2, 0x104000a

    .line 319
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 323
    const/high16 v2, 0x1040000

    .line 319
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 325
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 318
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/CredentialStorage;Lcom/android/settings_ex/CredentialStorage$ResetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/CredentialStorage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings_ex/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 330
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 329
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->mResetConfirmed:Z

    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings_ex/CredentialStorage;->-wrap0(Lcom/android/settings_ex/CredentialStorage;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/CredentialStorage$ResetDialog;->this$0:Lcom/android/settings_ex/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings_ex/CredentialStorage;->finish()V

    .line 333
    return-void
.end method
