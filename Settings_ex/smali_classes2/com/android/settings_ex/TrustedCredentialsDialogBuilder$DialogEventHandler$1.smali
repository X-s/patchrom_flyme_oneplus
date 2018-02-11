.class Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickRemove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;

.field final synthetic val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;
    .param p2, "val$certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->-get2(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->val$certHolder:Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;->removeOrInstallCert(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    .line 167
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$1;->this$1:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->-wrap1(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    .line 165
    return-void
.end method
