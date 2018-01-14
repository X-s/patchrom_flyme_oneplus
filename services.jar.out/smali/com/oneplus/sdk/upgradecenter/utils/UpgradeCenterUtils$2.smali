.class final Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils$2;
.super Ljava/lang/Object;
.source "UpgradeCenterUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils;->showOpApiIncompatibleAlertDlg(Landroid/app/Activity;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "val$activity"    # Landroid/app/Activity;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oneplus/sdk/upgradecenter/utils/UpgradeCenterUtils$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    return-void
.end method
