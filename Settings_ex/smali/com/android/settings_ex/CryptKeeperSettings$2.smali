.class Lcom/android/settings_ex/CryptKeeperSettings$2;
.super Ljava/lang/Object;
.source "CryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeperSettings;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperSettings$2;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperSettings$2;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    const/16 v1, 0x37

    # invokes: Lcom/android/settings_ex/CryptKeeperSettings;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/CryptKeeperSettings;->access$300(Lcom/android/settings_ex/CryptKeeperSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperSettings$2;->this$0:Lcom/android/settings_ex/CryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0419

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c041a

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->show()V

    .line 98
    :cond_0
    return-void
.end method
