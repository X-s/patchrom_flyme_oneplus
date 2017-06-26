.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$2;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$2;->this$1:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 390
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 391
    return-void
.end method
