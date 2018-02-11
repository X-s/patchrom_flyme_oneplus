.class Lcom/oneplus/settings/quickpay/QuickPaySettings$1;
.super Ljava/lang/Object;
.source "QuickPaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quickpay/QuickPaySettings;->showConfirmChangeHomeAction(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/quickpay/QuickPaySettings;
    .param p2, "val$state"    # Z

    .prologue
    .line 366
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    iput-boolean p2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    iget-boolean v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->val$state:Z

    invoke-static {v0, v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->-wrap1(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V

    .line 370
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->-get0(Lcom/oneplus/settings/quickpay/QuickPaySettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;->val$state:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 371
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 368
    return-void
.end method
