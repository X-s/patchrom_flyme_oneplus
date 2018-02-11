.class Lcom/android/settings_ex/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;->showTrustAllCaDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/TrustedCredentialsSettings;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ARG_SHOW_NEW_FOR_USER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$2;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->-set1(Lcom/android/settings_ex/TrustedCredentialsSettings;I)I

    .line 917
    return-void
.end method
