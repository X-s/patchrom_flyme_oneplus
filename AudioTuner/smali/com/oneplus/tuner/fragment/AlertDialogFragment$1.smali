.class Lcom/oneplus/tuner/fragment/AlertDialogFragment$1;
.super Ljava/util/TimerTask;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/fragment/AlertDialogFragment;->onStart()V
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
    .line 62
    iput-object p1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$1;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/oneplus/tuner/fragment/AlertDialogFragment$1;->this$0:Lcom/oneplus/tuner/fragment/AlertDialogFragment;

    # getter for: Lcom/oneplus/tuner/fragment/AlertDialogFragment;->mEditTextName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/oneplus/tuner/fragment/AlertDialogFragment;->access$000(Lcom/oneplus/tuner/fragment/AlertDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 67
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 69
    return-void
.end method
