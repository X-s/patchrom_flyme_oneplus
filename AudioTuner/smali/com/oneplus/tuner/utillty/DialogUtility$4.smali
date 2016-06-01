.class final Lcom/oneplus/tuner/utillty/DialogUtility$4;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    const-string v0, "tuner_permission_network"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putPermissionEnabled(Ljava/lang/String;Z)V

    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 111
    return-void
.end method
