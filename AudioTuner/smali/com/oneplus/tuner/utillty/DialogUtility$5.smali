.class final Lcom/oneplus/tuner/utillty/DialogUtility$5;
.super Ljava/lang/Object;
.source "DialogUtility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/utillty/DialogUtility;->createRejectPermissionTipDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oneplus/tuner/utillty/DialogUtility$5;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 120
    const-string v0, "tuner_permission_network"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putPermissionEnabled(Ljava/lang/String;Z)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/tuner/utillty/DialogUtility$5;->val$c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com_oneplus_fresh_network_action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 125
    return-void
.end method
