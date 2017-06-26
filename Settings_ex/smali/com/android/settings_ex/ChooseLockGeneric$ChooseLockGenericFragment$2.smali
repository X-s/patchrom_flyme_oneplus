.class Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->showResetPasswordDefaultDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    iput-object p2, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->access$200(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    # getter for: Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->mCryptfsChangepwDefaultProgressDialog:Lcom/oneplus/app/OPProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->access$200(Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;)Lcom/oneplus/app/OPProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPProgressDialog;->dismiss()V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 618
    :cond_1
    return-void
.end method
