.class Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickPaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quickpay/QuickPaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInstallAndUninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/quickpay/QuickPaySettings;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 444
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    return-void

    .line 448
    :cond_1
    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 449
    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 448
    if-nez v2, :cond_2

    .line 450
    const-string/jumbo v2, "net.one97.paytm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 448
    if-eqz v2, :cond_3

    .line 451
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->-wrap0(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    .line 441
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method
