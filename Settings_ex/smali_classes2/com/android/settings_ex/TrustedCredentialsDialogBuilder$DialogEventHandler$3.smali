.class Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$3;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->animateViewTransition(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;

.field final synthetic val$nextCertView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;
    .param p2, "val$nextCertView"    # Landroid/view/View;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$1:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->val$nextCertView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->this$1:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$3;->val$nextCertView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->-wrap0(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V

    .line 335
    return-void
.end method
