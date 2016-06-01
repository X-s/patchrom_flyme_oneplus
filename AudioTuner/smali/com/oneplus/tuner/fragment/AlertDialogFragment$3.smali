.class Lcom/oneplus/tuner/fragment/AlertDialogFragment$3;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/fragment/AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$3;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$3;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    # getter for: Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->access$100(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$3;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    # getter for: Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mEditTextName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->access$000(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mStyle:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$3;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    # getter for: Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v0}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->access$100(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mTime:J

    .line 104
    :try_start_0
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->getSoundEffectDao()Lcom/oneplus/tuner/providers/SoundEffectDao;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$3;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    # getter for: Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v1}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->access$100(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$3;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    # getter for: Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mItem:Lcom/oneplus/tuner/providers/SoundEffectItem;
    invoke-static {v2}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->access$100(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)Lcom/oneplus/tuner/providers/SoundEffectItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/tuner/providers/SoundEffectDao;->update(Lcom/oneplus/tuner/providers/SoundEffectItem;JLjava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v6

    .line 107
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
