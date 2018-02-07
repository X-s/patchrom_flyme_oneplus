.class public Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field private static final EXTRA_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final FLOAT:F = 1.2f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/datausage/BillingCycleSettings;)V
    .locals 12
    .param p0, "parent"    # Lcom/android/settings_ex/datausage/BillingCycleSettings;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->isAdded()Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/datausage/BillingCycleSettings;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v9, v9, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    .line 390
    invoke-static {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->-get0(Lcom/android/settings_ex/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;

    move-result-object v10

    .line 389
    invoke-virtual {v9, v10}, Lcom/android/settings_exlib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    .line 391
    .local v5, "policy":Landroid/net/NetworkPolicy;
    if-nez v5, :cond_1

    return-void

    .line 393
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 395
    .local v8, "res":Landroid/content/res/Resources;
    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v9, v10

    const v10, 0x3f99999a    # 1.2f

    mul-float/2addr v9, v10

    float-to-long v6, v9

    .line 399
    .local v6, "minLimitBytes":J
    const v9, 0x7f0e0cb2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 402
    .local v2, "limitBytes":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v9, "message"

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 404
    const-string/jumbo v9, "limitBytes"

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 406
    new-instance v1, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;-><init>()V

    .line 407
    .local v1, "dialog":Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 408
    const/4 v9, 0x0

    invoke-virtual {v1, p0, v9}, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 409
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string/jumbo v10, "confirmLimit"

    invoke-virtual {v1, v9, v10}, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 386
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 428
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    return-void

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "limitBytes"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 430
    .local v0, "limitBytes":J
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/datausage/BillingCycleSettings;

    .line 431
    .local v2, "target":Lcom/android/settings_ex/datausage/BillingCycleSettings;
    if-eqz v2, :cond_1

    .line 432
    invoke-static {v2, v0, v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->-wrap0(Lcom/android/settings_ex/datausage/BillingCycleSettings;J)V

    .line 427
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 416
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/BillingCycleSettings$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 418
    .local v1, "message":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    const v3, 0x7f0e0cb1

    .line 418
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 421
    const v3, 0x104000a

    .line 418
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 422
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    .line 418
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
