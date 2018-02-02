.class Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;

    .prologue
    .line 740
    iput-object p1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$1;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 746
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$1;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;

    invoke-virtual {v1}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->dismiss()V

    .line 749
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$1;->this$1:Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;

    invoke-virtual {v1}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 750
    .local v0, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-wrap0(Lcom/oneplus/camera/AdvancedSettingsActivity;Z)Z

    .line 743
    return-void
.end method
